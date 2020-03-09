/*
===========================================================================
Copyright (C) 2008-2011 Robert Beckebans <trebor_7@users.sourceforge.net>

This file is part of XreaL source code.

XreaL source code is free software; you can redistribute it
and/or modify it under the terms of the GNU General Public License as
published by the Free Software Foundation; either version 2 of the License,
or (at your option) any later version.

XreaL source code is distributed in the hope that it will be
useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with XreaL source code; if not, write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
===========================================================================
*/

/* vertexLighting_DBS_world_fp.glsl */

uniform sampler2D	u_DiffuseMap;
uniform sampler2D	u_MaterialMap;
uniform sampler2D	u_GlowMap;

uniform float		u_AlphaThreshold;
uniform vec3		u_ViewOrigin;

uniform sampler3D       u_LightGrid1;
uniform sampler3D       u_LightGrid2;
uniform vec3            u_LightGridOrigin;
uniform vec3            u_LightGridScale;

IN(smooth) vec3		var_Position;
IN(smooth) vec2		var_TexCoords;
IN(smooth) vec4		var_Color;
IN(smooth) vec3		var_Tangent;
IN(smooth) vec3		var_Binormal;
IN(smooth) vec3		var_Normal;

DECLARE_OUTPUT(vec4)

void	main()
{
	// compute view direction in world space
	vec3 viewDir = normalize(u_ViewOrigin - var_Position);

	vec2 texCoords = var_TexCoords;

	mat3 tangentToWorldMatrix = mat3(var_Tangent.xyz, var_Binormal.xyz, var_Normal.xyz);

	vec3 lightGridPos = (var_Position - u_LightGridOrigin) * u_LightGridScale;

	// compute light color from light grid
	vec3 ambientColor, lightColor;
	ReadLightGrid(texture3D(u_LightGrid1, lightGridPos), ambientColor, lightColor);

	// compute light direction in world space
	vec4 texel = texture3D(u_LightGrid2, lightGridPos);
	vec3 lightDir = normalize(texel.xyz - (128.0 / 255.0));

#if defined(USE_PARALLAX_MAPPING)
	// compute texcoords offset from heightmap
	vec2 texOffset = ParallaxTexOffset(texCoords, viewDir, tangentToWorldMatrix);

	texCoords += texOffset;
#endif // USE_PARALLAX_MAPPING

	// compute the diffuse term
	vec4 diffuse = texture2D(u_DiffuseMap, texCoords);

	if( abs(diffuse.a + u_AlphaThreshold) <= 1.0 )
	{
		discard;
		return;
	}

	// vertex blend operation like: alphaGen vertex
	diffuse *= var_Color;

	// compute normal in world space from normalmap
	vec3 normal = NormalInWorldSpace(texCoords, tangentToWorldMatrix);

	// compute the material term
	vec4 material = texture2D(u_MaterialMap, texCoords);

	// compute final color
	vec4 color = vec4(ambientColor * r_AmbientScale * diffuse.rgb, diffuse.a);

	computeLight(lightDir, normal, viewDir, lightColor, diffuse, material, color);

	computeDLights( var_Position, normal, viewDir, diffuse, material, color );

#if defined(r_glowMapping)
	color.rgb += texture2D(u_GlowMap, texCoords).rgb;
#endif // r_glowMapping

	outputColor = color;

// Debugging
#if defined(r_showNormalMaps)
	// convert normal to [0,1] color space
	normal = normal * 0.5 + 0.5;
	outputColor = vec4(normal, 1.0);
#elif defined(r_showMaterialMaps)
	outputColor = material;
#endif
}

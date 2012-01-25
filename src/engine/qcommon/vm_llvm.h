/*
===========================================================================

OpenWolf GPL Source Code
Copyright (C) 2011 Dusan Jocic <dusanjocic@msn.com>

OpenWolf is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

OpenWolf is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

===========================================================================
*/

#ifdef __cplusplus
extern "C" {
#endif

#ifdef USE_LLVM

void *VM_LoadLLVM( vm_t *vm, intptr_t (*systemcalls)(intptr_t, ...) );
void VM_UnloadLLVM( void *llvmModuleProvider );

#endif

#ifdef __cplusplus
}
#endif
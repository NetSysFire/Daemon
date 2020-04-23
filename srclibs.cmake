set(CRUNCHLIST
    ${LIB_DIR}/crunch/inc/crn_decomp.h
    ${LIB_DIR}/crunch/inc/crnlib.h
)

set(DETOURLIST
    ${LIB_DIR}/recastnavigation/DebugUtils/Source/DebugDraw.cpp
    ${LIB_DIR}/recastnavigation/Detour/Source/DetourAlloc.cpp
    ${LIB_DIR}/recastnavigation/Detour/Include/DetourAssert.h
    ${LIB_DIR}/recastnavigation/Detour/Source/DetourAssert.cpp
    ${LIB_DIR}/recastnavigation/Detour/Source/DetourCommon.cpp
    ${LIB_DIR}/recastnavigation/DebugUtils/Source/DetourDebugDraw.cpp
    ${LIB_DIR}/recastnavigation/Detour/Source/DetourNavMesh.cpp
    ${LIB_DIR}/recastnavigation/Detour/Source/DetourNavMeshBuilder.cpp
    ${LIB_DIR}/recastnavigation/Detour/Source/DetourNavMeshQuery.cpp
    ${LIB_DIR}/recastnavigation/Detour/Include/DetourMath.h
    ${LIB_DIR}/recastnavigation/Detour/Source/DetourNode.cpp
    ${LIB_DIR}/recastnavigation/DetourCrowd/Source/DetourPathCorridor.cpp
    ${LIB_DIR}/recastnavigation/Detour/Include/DetourStatus.h
    ${LIB_DIR}/recastnavigation/DetourTileCache/Source/DetourTileCache.cpp
    ${LIB_DIR}/recastnavigation/DetourTileCache/Source/DetourTileCacheBuilder.cpp
)

set(FASTLZLIST
    ${LIB_DIR}/fastlz/fastlz.c
)

set(FINDLOCALELIST
    ${LIB_DIR}/findlocale/findlocale.c
)

set(MINIZIPLIST
    ${LIB_DIR}/minizip/ioapi.c
    ${LIB_DIR}/minizip/ioapi.h
    ${LIB_DIR}/minizip/unzip.c
    ${LIB_DIR}/minizip/unzip.h
)

set(MUMBLELINKLIST
    ${LIB_DIR}/mumblelink/libmumblelink.cpp
    ${LIB_DIR}/mumblelink/libmumblelink.h
)

set(NACLLIST_MODULE
    ${LIB_DIR}/nacl/native_client/src/shared/imc/nacl/nacl_imc.cc
    ${LIB_DIR}/nacl/native_client/src/shared/imc/nacl_imc_common.cc
    ${LIB_DIR}/nacl/native_client/src/untrusted/nacl/imc_accept.c
    ${LIB_DIR}/nacl/native_client/src/untrusted/nacl/imc_connect.c
    ${LIB_DIR}/nacl/native_client/src/untrusted/nacl/imc_makeboundsock.c
    ${LIB_DIR}/nacl/native_client/src/untrusted/nacl/imc_mem_obj_create.c
    ${LIB_DIR}/nacl/native_client/src/untrusted/nacl/imc_recvmsg.c
    ${LIB_DIR}/nacl/native_client/src/untrusted/nacl/imc_sendmsg.c
    ${LIB_DIR}/nacl/native_client/src/untrusted/nacl/imc_socketpair.c
)

if (APPLE)
    set(NACLLIST_NATIVE
        ${LIB_DIR}/nacl/native_client/src/shared/imc/nacl_imc_common.cc
        ${LIB_DIR}/nacl/native_client/src/shared/imc/posix/nacl_imc_posix.cc
        ${LIB_DIR}/nacl/native_client/src/shared/imc/osx/nacl_imc.cc
    )
elseif (LINUX)
    set(NACLLIST_NATIVE
        ${LIB_DIR}/nacl/native_client/src/shared/imc/nacl_imc_common.cc
        ${LIB_DIR}/nacl/native_client/src/shared/imc/posix/nacl_imc_posix.cc
        ${LIB_DIR}/nacl/native_client/src/shared/imc/linux/nacl_imc.cc
    )
elseif (WIN32)
    set(NACLLIST_NATIVE
        ${LIB_DIR}/nacl/native_client/src/shared/imc/nacl_imc_common.cc
        ${LIB_DIR}/nacl/native_client/src/shared/imc/win/nacl_imc.cc
        ${LIB_DIR}/nacl/native_client/src/shared/imc/win/nacl_shm.cc
    )
endif()

set(OPENEXRLIST
    ${LIB_DIR}/openexr/half.cpp
)

set(PDCURSESLIST
    ${LIB_DIR}/pdcurses/pdcurses/addch.c
    ${LIB_DIR}/pdcurses/pdcurses/addchstr.c
    ${LIB_DIR}/pdcurses/pdcurses/addstr.c
    ${LIB_DIR}/pdcurses/pdcurses/attr.c
    ${LIB_DIR}/pdcurses/pdcurses/beep.c
    ${LIB_DIR}/pdcurses/pdcurses/bkgd.c
    ${LIB_DIR}/pdcurses/pdcurses/border.c
    ${LIB_DIR}/pdcurses/pdcurses/clear.c
    ${LIB_DIR}/pdcurses/pdcurses/color.c
    ${LIB_DIR}/pdcurses/pdcurses/debug.c
    ${LIB_DIR}/pdcurses/pdcurses/delch.c
    ${LIB_DIR}/pdcurses/pdcurses/deleteln.c
    ${LIB_DIR}/pdcurses/pdcurses/deprec.c
    ${LIB_DIR}/pdcurses/pdcurses/getch.c
    ${LIB_DIR}/pdcurses/pdcurses/getstr.c
    ${LIB_DIR}/pdcurses/pdcurses/getyx.c
    ${LIB_DIR}/pdcurses/pdcurses/inch.c
    ${LIB_DIR}/pdcurses/pdcurses/inchstr.c
    ${LIB_DIR}/pdcurses/pdcurses/initscr.c
    ${LIB_DIR}/pdcurses/pdcurses/inopts.c
    ${LIB_DIR}/pdcurses/pdcurses/insch.c
    ${LIB_DIR}/pdcurses/pdcurses/insstr.c
    ${LIB_DIR}/pdcurses/pdcurses/instr.c
    ${LIB_DIR}/pdcurses/pdcurses/kernel.c
    ${LIB_DIR}/pdcurses/pdcurses/mouse.c
    ${LIB_DIR}/pdcurses/pdcurses/move.c
    ${LIB_DIR}/pdcurses/pdcurses/outopts.c
    ${LIB_DIR}/pdcurses/pdcurses/overlay.c
    ${LIB_DIR}/pdcurses/pdcurses/pad.c
    ${LIB_DIR}/pdcurses/pdcurses/panel.c
    ${LIB_DIR}/pdcurses/pdcurses/printw.c
    ${LIB_DIR}/pdcurses/pdcurses/refresh.c
    ${LIB_DIR}/pdcurses/pdcurses/scanw.c
    ${LIB_DIR}/pdcurses/pdcurses/scroll.c
    ${LIB_DIR}/pdcurses/pdcurses/scr_dump.c
    ${LIB_DIR}/pdcurses/pdcurses/slk.c
    ${LIB_DIR}/pdcurses/pdcurses/termattr.c
    ${LIB_DIR}/pdcurses/pdcurses/terminfo.c
    ${LIB_DIR}/pdcurses/pdcurses/touch.c
    ${LIB_DIR}/pdcurses/pdcurses/util.c
    ${LIB_DIR}/pdcurses/pdcurses/window.c
    ${LIB_DIR}/pdcurses/win32a/pdcclip.c
    ${LIB_DIR}/pdcurses/win32a/pdcdisp.c
    ${LIB_DIR}/pdcurses/win32a/pdcgetsc.c
    ${LIB_DIR}/pdcurses/win32a/pdckbd.c
    ${LIB_DIR}/pdcurses/win32a/pdcscrn.c
    ${LIB_DIR}/pdcurses/win32a/pdcsetsc.c
    ${LIB_DIR}/pdcurses/win32a/pdcutil.c
)

set(TINYFORMATLIST
    ${LIB_DIR}/tinyformat/tinyformat.h
)

set(TINYGETTEXTLIST
    ${FINDLOCALELIST}
    ${LIB_DIR}/tinygettext/dictionary.cpp
    ${LIB_DIR}/tinygettext/dictionary.hpp
    ${LIB_DIR}/tinygettext/dictionary_manager.cpp
    ${LIB_DIR}/tinygettext/dictionary_manager.hpp
    ${LIB_DIR}/tinygettext/file_system.hpp
    ${LIB_DIR}/tinygettext/iconv.cpp
    ${LIB_DIR}/tinygettext/iconv.hpp
    ${LIB_DIR}/tinygettext/language.cpp
    ${LIB_DIR}/tinygettext/language.hpp
    ${LIB_DIR}/tinygettext/log.cpp
    ${LIB_DIR}/tinygettext/log.hpp
    ${LIB_DIR}/tinygettext/log_stream.hpp
    ${LIB_DIR}/tinygettext/plural_forms.cpp
    ${LIB_DIR}/tinygettext/plural_forms.hpp
    ${LIB_DIR}/tinygettext/po_parser.cpp
    ${LIB_DIR}/tinygettext/po_parser.hpp
    ${LIB_DIR}/tinygettext/tinygettext.cpp
    ${LIB_DIR}/tinygettext/tinygettext.hpp
)

# This is only used for the NaCl modules. For all other targets, the host zlib
# is used (sourced from external_deps if not available on target platform).
set(ZLIBLIST
    ${LIB_DIR}/zlib/adler32.c
    ${LIB_DIR}/zlib/compress.c
    ${LIB_DIR}/zlib/crc32.c
    ${LIB_DIR}/zlib/crc32.h
    ${LIB_DIR}/zlib/deflate.c
    ${LIB_DIR}/zlib/deflate.h
    ${LIB_DIR}/zlib/gzclose.c
    ${LIB_DIR}/zlib/gzguts.h
    ${LIB_DIR}/zlib/gzlib.c
    ${LIB_DIR}/zlib/gzread.c
    ${LIB_DIR}/zlib/gzwrite.c
    ${LIB_DIR}/zlib/infback.c
    ${LIB_DIR}/zlib/inffast.c
    ${LIB_DIR}/zlib/inffast.h
    ${LIB_DIR}/zlib/inffixed.h
    ${LIB_DIR}/zlib/inflate.c
    ${LIB_DIR}/zlib/inflate.h
    ${LIB_DIR}/zlib/inftrees.c
    ${LIB_DIR}/zlib/inftrees.h
    ${LIB_DIR}/zlib/trees.c
    ${LIB_DIR}/zlib/trees.h
    ${LIB_DIR}/zlib/uncompr.c
    ${LIB_DIR}/zlib/zconf.h
    ${LIB_DIR}/zlib/zlib.h
    ${LIB_DIR}/zlib/zutil.c
    ${LIB_DIR}/zlib/zutil.h
)

if (WIN32)
    set(BREAKPAD_COMMON_LIST
        ${LIB_DIR}/breakpad/src/common/windows/guid_string.cc
        ${LIB_DIR}/breakpad/src/common/windows/guid_string.h
        ${LIB_DIR}/breakpad/src/common/windows/http_upload.cc
        ${LIB_DIR}/breakpad/src/common/windows/http_upload.h
        ${LIB_DIR}/breakpad/src/common/windows/string_utils.cc
    )
    set(BREAKPAD_CRASHGENERATIONSERVER_LIST
        ${LIB_DIR}/breakpad/src/client/windows/crash_generation/client_info.cc
        ${LIB_DIR}/breakpad/src/client/windows/crash_generation/crash_generation_server.cc
        ${LIB_DIR}/breakpad/src/client/windows/crash_generation/minidump_generator.cc
        ${LIB_DIR}/breakpad/src/client/windows/crash_generation/client_info.h
        ${LIB_DIR}/breakpad/src/client/windows/crash_generation/crash_generation_client.h
        ${LIB_DIR}/breakpad/src/client/windows/crash_generation/crash_generation_server.h
        ${LIB_DIR}/breakpad/src/client/windows/crash_generation/minidump_generator.h
    )
    set(BREAKPAD_CRASHGENERATIONCLIENT_LIST
        ${LIB_DIR}/breakpad/src/client/windows/crash_generation/crash_generation_client.h
        ${LIB_DIR}/breakpad/src/client/windows/crash_generation/crash_generation_client.cc
        ${LIB_DIR}/breakpad/src/client/windows/crash_generation/crash_generation_server.h
    )
    set(BREAKPAD_EXCEPTIONHANDLER_LIST
        ${LIB_DIR}/breakpad/src/client/windows/handler/exception_handler.cc
        ${LIB_DIR}/breakpad/src/client/windows/handler/exception_handler.h
    )
elseif (LINUX)
    set(BREAKPAD_LIST
        ${LIB_DIR}/breakpad/src/client/linux/crash_generation/crash_generation_client.cc
        ${LIB_DIR}/breakpad/src/client/linux/crash_generation/crash_generation_server.cc
        ${LIB_DIR}/breakpad/src/client/linux/dump_writer_common/thread_info.cc
        ${LIB_DIR}/breakpad/src/client/linux/dump_writer_common/ucontext_reader.cc
        ${LIB_DIR}/breakpad/src/client/linux/handler/exception_handler.cc
        ${LIB_DIR}/breakpad/src/client/linux/handler/minidump_descriptor.cc
        ${LIB_DIR}/breakpad/src/client/linux/log/log.cc
        ${LIB_DIR}/breakpad/src/client/linux/microdump_writer/microdump_writer.cc
        ${LIB_DIR}/breakpad/src/client/linux/minidump_writer/linux_dumper.cc
        ${LIB_DIR}/breakpad/src/client/linux/minidump_writer/linux_ptrace_dumper.cc
        ${LIB_DIR}/breakpad/src/client/linux/minidump_writer/minidump_writer.cc
        ${LIB_DIR}/breakpad/src/client/minidump_file_writer.cc
        ${LIB_DIR}/breakpad/src/common/convert_UTF.c
        ${LIB_DIR}/breakpad/src/common/md5.cc
        ${LIB_DIR}/breakpad/src/common/string_conversion.cc
        ${LIB_DIR}/breakpad/src/common/linux/elfutils.cc
        ${LIB_DIR}/breakpad/src/common/linux/file_id.cc
        ${LIB_DIR}/breakpad/src/common/linux/guid_creator.cc
        ${LIB_DIR}/breakpad/src/common/linux/linux_libc_support.cc
        ${LIB_DIR}/breakpad/src/common/linux/memory_mapped_file.cc
        ${LIB_DIR}/breakpad/src/common/linux/safe_readlink.cc
    )
endif()

# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\admin\OneDrive\Desktop\FYP

# Include any dependencies generated for this target.
include CMakeFiles\tjunittest-static.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles\tjunittest-static.dir\compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles\tjunittest-static.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\tjunittest-static.dir\flags.make

CMakeFiles\tjunittest-static.dir\tjunittest.c.obj: CMakeFiles\tjunittest-static.dir\flags.make
CMakeFiles\tjunittest-static.dir\tjunittest.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\tjunittest.c
CMakeFiles\tjunittest-static.dir\tjunittest.c.obj: CMakeFiles\tjunittest-static.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tjunittest-static.dir/tjunittest.c.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\tjunittest-static.dir\tjunittest.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\tjunittest-static.dir\tjunittest.c.obj /FdCMakeFiles\tjunittest-static.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\tjunittest.c
<<

CMakeFiles\tjunittest-static.dir\tjunittest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tjunittest-static.dir/tjunittest.c.i"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\tjunittest-static.dir\tjunittest.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\tjunittest.c
<<

CMakeFiles\tjunittest-static.dir\tjunittest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tjunittest-static.dir/tjunittest.c.s"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\tjunittest-static.dir\tjunittest.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\tjunittest.c
<<

CMakeFiles\tjunittest-static.dir\tjutil.c.obj: CMakeFiles\tjunittest-static.dir\flags.make
CMakeFiles\tjunittest-static.dir\tjutil.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\tjutil.c
CMakeFiles\tjunittest-static.dir\tjutil.c.obj: CMakeFiles\tjunittest-static.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/tjunittest-static.dir/tjutil.c.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\tjunittest-static.dir\tjutil.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\tjunittest-static.dir\tjutil.c.obj /FdCMakeFiles\tjunittest-static.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\tjutil.c
<<

CMakeFiles\tjunittest-static.dir\tjutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tjunittest-static.dir/tjutil.c.i"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\tjunittest-static.dir\tjutil.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\tjutil.c
<<

CMakeFiles\tjunittest-static.dir\tjutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tjunittest-static.dir/tjutil.c.s"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\tjunittest-static.dir\tjutil.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\tjutil.c
<<

CMakeFiles\tjunittest-static.dir\md5\md5.c.obj: CMakeFiles\tjunittest-static.dir\flags.make
CMakeFiles\tjunittest-static.dir\md5\md5.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\md5\md5.c
CMakeFiles\tjunittest-static.dir\md5\md5.c.obj: CMakeFiles\tjunittest-static.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/tjunittest-static.dir/md5/md5.c.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\tjunittest-static.dir\md5\md5.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\tjunittest-static.dir\md5\md5.c.obj /FdCMakeFiles\tjunittest-static.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\md5\md5.c
<<

CMakeFiles\tjunittest-static.dir\md5\md5.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tjunittest-static.dir/md5/md5.c.i"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\tjunittest-static.dir\md5\md5.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\md5\md5.c
<<

CMakeFiles\tjunittest-static.dir\md5\md5.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tjunittest-static.dir/md5/md5.c.s"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\tjunittest-static.dir\md5\md5.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\md5\md5.c
<<

CMakeFiles\tjunittest-static.dir\md5\md5hl.c.obj: CMakeFiles\tjunittest-static.dir\flags.make
CMakeFiles\tjunittest-static.dir\md5\md5hl.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\md5\md5hl.c
CMakeFiles\tjunittest-static.dir\md5\md5hl.c.obj: CMakeFiles\tjunittest-static.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/tjunittest-static.dir/md5/md5hl.c.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\tjunittest-static.dir\md5\md5hl.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\tjunittest-static.dir\md5\md5hl.c.obj /FdCMakeFiles\tjunittest-static.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\md5\md5hl.c
<<

CMakeFiles\tjunittest-static.dir\md5\md5hl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tjunittest-static.dir/md5/md5hl.c.i"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\tjunittest-static.dir\md5\md5hl.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\md5\md5hl.c
<<

CMakeFiles\tjunittest-static.dir\md5\md5hl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tjunittest-static.dir/md5/md5hl.c.s"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\tjunittest-static.dir\md5\md5hl.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\md5\md5hl.c
<<

# Object files for target tjunittest-static
tjunittest__static_OBJECTS = \
"CMakeFiles\tjunittest-static.dir\tjunittest.c.obj" \
"CMakeFiles\tjunittest-static.dir\tjutil.c.obj" \
"CMakeFiles\tjunittest-static.dir\md5\md5.c.obj" \
"CMakeFiles\tjunittest-static.dir\md5\md5hl.c.obj"

# External object files for target tjunittest-static
tjunittest__static_EXTERNAL_OBJECTS =

tjunittest-static.exe: CMakeFiles\tjunittest-static.dir\tjunittest.c.obj
tjunittest-static.exe: CMakeFiles\tjunittest-static.dir\tjutil.c.obj
tjunittest-static.exe: CMakeFiles\tjunittest-static.dir\md5\md5.c.obj
tjunittest-static.exe: CMakeFiles\tjunittest-static.dir\md5\md5hl.c.obj
tjunittest-static.exe: CMakeFiles\tjunittest-static.dir\build.make
tjunittest-static.exe: turbojpeg-static.lib
tjunittest-static.exe: CMakeFiles\tjunittest-static.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable tjunittest-static.exe"
	"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\tjunittest-static.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\tjunittest-static.dir\objects1.rsp @<<
 /out:tjunittest-static.exe /implib:tjunittest-static.lib /pdb:C:\Users\admin\OneDrive\Desktop\FYP\tjunittest-static.pdb /version:0.0 /machine:X86 /INCREMENTAL:NO /subsystem:console  turbojpeg-static.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\tjunittest-static.dir\build: tjunittest-static.exe
.PHONY : CMakeFiles\tjunittest-static.dir\build

CMakeFiles\tjunittest-static.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\tjunittest-static.dir\cmake_clean.cmake
.PHONY : CMakeFiles\tjunittest-static.dir\clean

CMakeFiles\tjunittest-static.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main C:\Users\admin\OneDrive\Desktop\FYP C:\Users\admin\OneDrive\Desktop\FYP C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles\tjunittest-static.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\tjunittest-static.dir\depend

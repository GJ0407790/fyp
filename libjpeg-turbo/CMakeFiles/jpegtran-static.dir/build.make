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
include CMakeFiles\jpegtran-static.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles\jpegtran-static.dir\compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles\jpegtran-static.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\jpegtran-static.dir\flags.make

CMakeFiles\jpegtran-static.dir\jpegtran.c.obj: CMakeFiles\jpegtran-static.dir\flags.make
CMakeFiles\jpegtran-static.dir\jpegtran.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\jpegtran.c
CMakeFiles\jpegtran-static.dir\jpegtran.c.obj: CMakeFiles\jpegtran-static.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/jpegtran-static.dir/jpegtran.c.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\jpegtran-static.dir\jpegtran.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\jpegtran-static.dir\jpegtran.c.obj /FdCMakeFiles\jpegtran-static.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\jpegtran.c
<<

CMakeFiles\jpegtran-static.dir\jpegtran.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jpegtran-static.dir/jpegtran.c.i"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\jpegtran-static.dir\jpegtran.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\jpegtran.c
<<

CMakeFiles\jpegtran-static.dir\jpegtran.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jpegtran-static.dir/jpegtran.c.s"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\jpegtran-static.dir\jpegtran.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\jpegtran.c
<<

CMakeFiles\jpegtran-static.dir\cdjpeg.c.obj: CMakeFiles\jpegtran-static.dir\flags.make
CMakeFiles\jpegtran-static.dir\cdjpeg.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\cdjpeg.c
CMakeFiles\jpegtran-static.dir\cdjpeg.c.obj: CMakeFiles\jpegtran-static.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/jpegtran-static.dir/cdjpeg.c.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\jpegtran-static.dir\cdjpeg.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\jpegtran-static.dir\cdjpeg.c.obj /FdCMakeFiles\jpegtran-static.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\cdjpeg.c
<<

CMakeFiles\jpegtran-static.dir\cdjpeg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jpegtran-static.dir/cdjpeg.c.i"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\jpegtran-static.dir\cdjpeg.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\cdjpeg.c
<<

CMakeFiles\jpegtran-static.dir\cdjpeg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jpegtran-static.dir/cdjpeg.c.s"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\jpegtran-static.dir\cdjpeg.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\cdjpeg.c
<<

CMakeFiles\jpegtran-static.dir\rdswitch.c.obj: CMakeFiles\jpegtran-static.dir\flags.make
CMakeFiles\jpegtran-static.dir\rdswitch.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdswitch.c
CMakeFiles\jpegtran-static.dir\rdswitch.c.obj: CMakeFiles\jpegtran-static.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/jpegtran-static.dir/rdswitch.c.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\jpegtran-static.dir\rdswitch.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\jpegtran-static.dir\rdswitch.c.obj /FdCMakeFiles\jpegtran-static.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdswitch.c
<<

CMakeFiles\jpegtran-static.dir\rdswitch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jpegtran-static.dir/rdswitch.c.i"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\jpegtran-static.dir\rdswitch.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdswitch.c
<<

CMakeFiles\jpegtran-static.dir\rdswitch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jpegtran-static.dir/rdswitch.c.s"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\jpegtran-static.dir\rdswitch.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdswitch.c
<<

CMakeFiles\jpegtran-static.dir\transupp.c.obj: CMakeFiles\jpegtran-static.dir\flags.make
CMakeFiles\jpegtran-static.dir\transupp.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\transupp.c
CMakeFiles\jpegtran-static.dir\transupp.c.obj: CMakeFiles\jpegtran-static.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/jpegtran-static.dir/transupp.c.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\jpegtran-static.dir\transupp.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\jpegtran-static.dir\transupp.c.obj /FdCMakeFiles\jpegtran-static.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\transupp.c
<<

CMakeFiles\jpegtran-static.dir\transupp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jpegtran-static.dir/transupp.c.i"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\jpegtran-static.dir\transupp.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\transupp.c
<<

CMakeFiles\jpegtran-static.dir\transupp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jpegtran-static.dir/transupp.c.s"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\jpegtran-static.dir\transupp.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\transupp.c
<<

# Object files for target jpegtran-static
jpegtran__static_OBJECTS = \
"CMakeFiles\jpegtran-static.dir\jpegtran.c.obj" \
"CMakeFiles\jpegtran-static.dir\cdjpeg.c.obj" \
"CMakeFiles\jpegtran-static.dir\rdswitch.c.obj" \
"CMakeFiles\jpegtran-static.dir\transupp.c.obj"

# External object files for target jpegtran-static
jpegtran__static_EXTERNAL_OBJECTS =

jpegtran-static.exe: CMakeFiles\jpegtran-static.dir\jpegtran.c.obj
jpegtran-static.exe: CMakeFiles\jpegtran-static.dir\cdjpeg.c.obj
jpegtran-static.exe: CMakeFiles\jpegtran-static.dir\rdswitch.c.obj
jpegtran-static.exe: CMakeFiles\jpegtran-static.dir\transupp.c.obj
jpegtran-static.exe: CMakeFiles\jpegtran-static.dir\build.make
jpegtran-static.exe: jpeg-static.lib
jpegtran-static.exe: CMakeFiles\jpegtran-static.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable jpegtran-static.exe"
	"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\jpegtran-static.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\jpegtran-static.dir\objects1.rsp @<<
 /out:jpegtran-static.exe /implib:jpegtran-static.lib /pdb:C:\Users\admin\OneDrive\Desktop\FYP\jpegtran-static.pdb /version:0.0 /machine:X86 /INCREMENTAL:NO /subsystem:console  jpeg-static.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\jpegtran-static.dir\build: jpegtran-static.exe
.PHONY : CMakeFiles\jpegtran-static.dir\build

CMakeFiles\jpegtran-static.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\jpegtran-static.dir\cmake_clean.cmake
.PHONY : CMakeFiles\jpegtran-static.dir\clean

CMakeFiles\jpegtran-static.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main C:\Users\admin\OneDrive\Desktop\FYP C:\Users\admin\OneDrive\Desktop\FYP C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles\jpegtran-static.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\jpegtran-static.dir\depend


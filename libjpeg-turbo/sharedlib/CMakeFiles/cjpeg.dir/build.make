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
include sharedlib\CMakeFiles\cjpeg.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include sharedlib\CMakeFiles\cjpeg.dir\compiler_depend.make

# Include the progress variables for this target.
include sharedlib\CMakeFiles\cjpeg.dir\progress.make

# Include the compile flags for this target's objects.
include sharedlib\CMakeFiles\cjpeg.dir\flags.make

sharedlib\CMakeFiles\cjpeg.dir\__\cjpeg.c.obj: sharedlib\CMakeFiles\cjpeg.dir\flags.make
sharedlib\CMakeFiles\cjpeg.dir\__\cjpeg.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\cjpeg.c
sharedlib\CMakeFiles\cjpeg.dir\__\cjpeg.c.obj: sharedlib\CMakeFiles\cjpeg.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.obj"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\cjpeg.dir\__\cjpeg.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP\sharedlib --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\cjpeg.dir\__\cjpeg.c.obj /FdCMakeFiles\cjpeg.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\cjpeg.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\cjpeg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/cjpeg.c.i"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\cjpeg.dir\__\cjpeg.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\cjpeg.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\cjpeg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/cjpeg.c.s"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\cjpeg.dir\__\cjpeg.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\cjpeg.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\cdjpeg.c.obj: sharedlib\CMakeFiles\cjpeg.dir\flags.make
sharedlib\CMakeFiles\cjpeg.dir\__\cdjpeg.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\cdjpeg.c
sharedlib\CMakeFiles\cjpeg.dir\__\cdjpeg.c.obj: sharedlib\CMakeFiles\cjpeg.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.obj"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\cjpeg.dir\__\cdjpeg.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP\sharedlib --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\cjpeg.dir\__\cdjpeg.c.obj /FdCMakeFiles\cjpeg.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\cdjpeg.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\cdjpeg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/cdjpeg.c.i"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\cjpeg.dir\__\cdjpeg.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\cdjpeg.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\cdjpeg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/cdjpeg.c.s"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\cjpeg.dir\__\cdjpeg.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\cdjpeg.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdgif.c.obj: sharedlib\CMakeFiles\cjpeg.dir\flags.make
sharedlib\CMakeFiles\cjpeg.dir\__\rdgif.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdgif.c
sharedlib\CMakeFiles\cjpeg.dir\__\rdgif.c.obj: sharedlib\CMakeFiles\cjpeg.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.obj"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\cjpeg.dir\__\rdgif.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP\sharedlib --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\cjpeg.dir\__\rdgif.c.obj /FdCMakeFiles\cjpeg.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdgif.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdgif.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdgif.c.i"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\cjpeg.dir\__\rdgif.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdgif.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdgif.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdgif.c.s"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\cjpeg.dir\__\rdgif.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdgif.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdppm.c.obj: sharedlib\CMakeFiles\cjpeg.dir\flags.make
sharedlib\CMakeFiles\cjpeg.dir\__\rdppm.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdppm.c
sharedlib\CMakeFiles\cjpeg.dir\__\rdppm.c.obj: sharedlib\CMakeFiles\cjpeg.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.obj"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\cjpeg.dir\__\rdppm.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP\sharedlib --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\cjpeg.dir\__\rdppm.c.obj /FdCMakeFiles\cjpeg.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdppm.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdppm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdppm.c.i"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\cjpeg.dir\__\rdppm.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdppm.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdppm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdppm.c.s"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\cjpeg.dir\__\rdppm.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdppm.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdswitch.c.obj: sharedlib\CMakeFiles\cjpeg.dir\flags.make
sharedlib\CMakeFiles\cjpeg.dir\__\rdswitch.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdswitch.c
sharedlib\CMakeFiles\cjpeg.dir\__\rdswitch.c.obj: sharedlib\CMakeFiles\cjpeg.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.obj"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\cjpeg.dir\__\rdswitch.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP\sharedlib --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\cjpeg.dir\__\rdswitch.c.obj /FdCMakeFiles\cjpeg.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdswitch.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdswitch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdswitch.c.i"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\cjpeg.dir\__\rdswitch.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdswitch.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdswitch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdswitch.c.s"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\cjpeg.dir\__\rdswitch.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdswitch.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdbmp.c.obj: sharedlib\CMakeFiles\cjpeg.dir\flags.make
sharedlib\CMakeFiles\cjpeg.dir\__\rdbmp.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdbmp.c
sharedlib\CMakeFiles\cjpeg.dir\__\rdbmp.c.obj: sharedlib\CMakeFiles\cjpeg.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.obj"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\cjpeg.dir\__\rdbmp.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP\sharedlib --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\cjpeg.dir\__\rdbmp.c.obj /FdCMakeFiles\cjpeg.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdbmp.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdbmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdbmp.c.i"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\cjpeg.dir\__\rdbmp.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdbmp.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdbmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdbmp.c.s"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\cjpeg.dir\__\rdbmp.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdbmp.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdtarga.c.obj: sharedlib\CMakeFiles\cjpeg.dir\flags.make
sharedlib\CMakeFiles\cjpeg.dir\__\rdtarga.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdtarga.c
sharedlib\CMakeFiles\cjpeg.dir\__\rdtarga.c.obj: sharedlib\CMakeFiles\cjpeg.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.obj"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\cjpeg.dir\__\rdtarga.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP\sharedlib --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\cjpeg.dir\__\rdtarga.c.obj /FdCMakeFiles\cjpeg.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdtarga.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdtarga.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdtarga.c.i"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\cjpeg.dir\__\rdtarga.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdtarga.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

sharedlib\CMakeFiles\cjpeg.dir\__\rdtarga.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdtarga.c.s"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\cjpeg.dir\__\rdtarga.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\rdtarga.c
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

# Object files for target cjpeg
cjpeg_OBJECTS = \
"CMakeFiles\cjpeg.dir\__\cjpeg.c.obj" \
"CMakeFiles\cjpeg.dir\__\cdjpeg.c.obj" \
"CMakeFiles\cjpeg.dir\__\rdgif.c.obj" \
"CMakeFiles\cjpeg.dir\__\rdppm.c.obj" \
"CMakeFiles\cjpeg.dir\__\rdswitch.c.obj" \
"CMakeFiles\cjpeg.dir\__\rdbmp.c.obj" \
"CMakeFiles\cjpeg.dir\__\rdtarga.c.obj"

# External object files for target cjpeg
cjpeg_EXTERNAL_OBJECTS =

cjpeg.exe: sharedlib\CMakeFiles\cjpeg.dir\__\cjpeg.c.obj
cjpeg.exe: sharedlib\CMakeFiles\cjpeg.dir\__\cdjpeg.c.obj
cjpeg.exe: sharedlib\CMakeFiles\cjpeg.dir\__\rdgif.c.obj
cjpeg.exe: sharedlib\CMakeFiles\cjpeg.dir\__\rdppm.c.obj
cjpeg.exe: sharedlib\CMakeFiles\cjpeg.dir\__\rdswitch.c.obj
cjpeg.exe: sharedlib\CMakeFiles\cjpeg.dir\__\rdbmp.c.obj
cjpeg.exe: sharedlib\CMakeFiles\cjpeg.dir\__\rdtarga.c.obj
cjpeg.exe: sharedlib\CMakeFiles\cjpeg.dir\build.make
cjpeg.exe: jpeg.lib
cjpeg.exe: sharedlib\CMakeFiles\cjpeg.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C executable ..\cjpeg.exe"
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\cjpeg.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\cjpeg.dir\objects1.rsp @<<
 /out:..\cjpeg.exe /implib:..\cjpeg.lib /pdb:C:\Users\admin\OneDrive\Desktop\FYP\cjpeg.pdb /version:0.0 /machine:X86 /INCREMENTAL:NO /subsystem:console  ..\jpeg.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\admin\OneDrive\Desktop\FYP

# Rule to build all files generated by this target.
sharedlib\CMakeFiles\cjpeg.dir\build: cjpeg.exe
.PHONY : sharedlib\CMakeFiles\cjpeg.dir\build

sharedlib\CMakeFiles\cjpeg.dir\clean:
	cd C:\Users\admin\OneDrive\Desktop\FYP\sharedlib
	$(CMAKE_COMMAND) -P CMakeFiles\cjpeg.dir\cmake_clean.cmake
	cd C:\Users\admin\OneDrive\Desktop\FYP
.PHONY : sharedlib\CMakeFiles\cjpeg.dir\clean

sharedlib\CMakeFiles\cjpeg.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\sharedlib C:\Users\admin\OneDrive\Desktop\FYP C:\Users\admin\OneDrive\Desktop\FYP\sharedlib C:\Users\admin\OneDrive\Desktop\FYP\sharedlib\CMakeFiles\cjpeg.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : sharedlib\CMakeFiles\cjpeg.dir\depend


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
include CMakeFiles\wrjpgcom.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles\wrjpgcom.dir\compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles\wrjpgcom.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\wrjpgcom.dir\flags.make

CMakeFiles\wrjpgcom.dir\wrjpgcom.c.obj: CMakeFiles\wrjpgcom.dir\flags.make
CMakeFiles\wrjpgcom.dir\wrjpgcom.c.obj: C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\wrjpgcom.c
CMakeFiles\wrjpgcom.dir\wrjpgcom.c.obj: CMakeFiles\wrjpgcom.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/wrjpgcom.dir/wrjpgcom.c.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\wrjpgcom.dir\wrjpgcom.c.obj.d --working-dir=C:\Users\admin\OneDrive\Desktop\FYP --filter-prefix="Note: including file: " -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\wrjpgcom.dir\wrjpgcom.c.obj /FdCMakeFiles\wrjpgcom.dir\ /FS -c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\wrjpgcom.c
<<

CMakeFiles\wrjpgcom.dir\wrjpgcom.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wrjpgcom.dir/wrjpgcom.c.i"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\wrjpgcom.dir\wrjpgcom.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\wrjpgcom.c
<<

CMakeFiles\wrjpgcom.dir\wrjpgcom.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wrjpgcom.dir/wrjpgcom.c.s"
	C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\wrjpgcom.dir\wrjpgcom.c.s /c C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main\wrjpgcom.c
<<

# Object files for target wrjpgcom
wrjpgcom_OBJECTS = \
"CMakeFiles\wrjpgcom.dir\wrjpgcom.c.obj"

# External object files for target wrjpgcom
wrjpgcom_EXTERNAL_OBJECTS =

wrjpgcom.exe: CMakeFiles\wrjpgcom.dir\wrjpgcom.c.obj
wrjpgcom.exe: CMakeFiles\wrjpgcom.dir\build.make
wrjpgcom.exe: CMakeFiles\wrjpgcom.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable wrjpgcom.exe"
	"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\wrjpgcom.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MIB055~1\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\wrjpgcom.dir\objects1.rsp @<<
 /out:wrjpgcom.exe /implib:wrjpgcom.lib /pdb:C:\Users\admin\OneDrive\Desktop\FYP\wrjpgcom.pdb /version:0.0 /machine:X86 /INCREMENTAL:NO /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\wrjpgcom.dir\build: wrjpgcom.exe
.PHONY : CMakeFiles\wrjpgcom.dir\build

CMakeFiles\wrjpgcom.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\wrjpgcom.dir\cmake_clean.cmake
.PHONY : CMakeFiles\wrjpgcom.dir\clean

CMakeFiles\wrjpgcom.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main C:\Users\admin\OneDrive\Desktop\FYP C:\Users\admin\OneDrive\Desktop\FYP C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles\wrjpgcom.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\wrjpgcom.dir\depend

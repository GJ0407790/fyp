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

# Utility rule file for installer.

# Include any custom commands dependencies for this target.
include CMakeFiles\installer.dir\compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles\installer.dir\progress.make

CMakeFiles\installer: jpeg62.dll
CMakeFiles\installer: jpeg-static.lib
CMakeFiles\installer: rdjpgcom.exe
CMakeFiles\installer: wrjpgcom.exe
CMakeFiles\installer: cjpeg.exe
CMakeFiles\installer: djpeg.exe
CMakeFiles\installer: jpegtran.exe
CMakeFiles\installer: turbojpeg.dll
CMakeFiles\installer: turbojpeg-static.lib
CMakeFiles\installer: tjbench.exe
	makensis -nocd -DBUILDDIR= installer.nsi

installer: CMakeFiles\installer
installer: CMakeFiles\installer.dir\build.make
.PHONY : installer

# Rule to build all files generated by this target.
CMakeFiles\installer.dir\build: installer
.PHONY : CMakeFiles\installer.dir\build

CMakeFiles\installer.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\installer.dir\cmake_clean.cmake
.PHONY : CMakeFiles\installer.dir\clean

CMakeFiles\installer.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main C:\Users\admin\OneDrive\Desktop\FYP C:\Users\admin\OneDrive\Desktop\FYP C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles\installer.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\installer.dir\depend


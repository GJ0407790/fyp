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

# Utility rule file for dist.

# Include any custom commands dependencies for this target.
include CMakeFiles\dist.dir\compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles\dist.dir\progress.make

CMakeFiles\dist:
	cd C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main
	git archive --prefix=libjpeg-turbo-2.1.4/ HEAD | gzip > C:/Users/admin/OneDrive/Desktop/FYP/libjpeg-turbo-2.1.4.tar.gz
	cd C:\Users\admin\OneDrive\Desktop\FYP

dist: CMakeFiles\dist
dist: CMakeFiles\dist.dir\build.make
.PHONY : dist

# Rule to build all files generated by this target.
CMakeFiles\dist.dir\build: dist
.PHONY : CMakeFiles\dist.dir\build

CMakeFiles\dist.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\dist.dir\cmake_clean.cmake
.PHONY : CMakeFiles\dist.dir\clean

CMakeFiles\dist.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main C:\Users\admin\OneDrive\Desktop\libjpeg-turbo-main C:\Users\admin\OneDrive\Desktop\FYP C:\Users\admin\OneDrive\Desktop\FYP C:\Users\admin\OneDrive\Desktop\FYP\CMakeFiles\dist.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\dist.dir\depend


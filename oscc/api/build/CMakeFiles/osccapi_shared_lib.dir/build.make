# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/burrite/Downloads/oscc-master/api

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/burrite/Downloads/oscc-master/api/build

# Include any dependencies generated for this target.
include CMakeFiles/osccapi_shared_lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/osccapi_shared_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/osccapi_shared_lib.dir/flags.make

# Object files for target osccapi_shared_lib
osccapi_shared_lib_OBJECTS =

# External object files for target osccapi_shared_lib
osccapi_shared_lib_EXTERNAL_OBJECTS = \
"/home/burrite/Downloads/oscc-master/api/build/CMakeFiles/osccapi_objects.dir/src/oscc.c.o"

libosccapi.so: CMakeFiles/osccapi_objects.dir/src/oscc.c.o
libosccapi.so: CMakeFiles/osccapi_shared_lib.dir/build.make
libosccapi.so: CMakeFiles/osccapi_shared_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library libosccapi.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/osccapi_shared_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/osccapi_shared_lib.dir/build: libosccapi.so
.PHONY : CMakeFiles/osccapi_shared_lib.dir/build

CMakeFiles/osccapi_shared_lib.dir/requires:
.PHONY : CMakeFiles/osccapi_shared_lib.dir/requires

CMakeFiles/osccapi_shared_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/osccapi_shared_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/osccapi_shared_lib.dir/clean

CMakeFiles/osccapi_shared_lib.dir/depend:
	cd /home/burrite/Downloads/oscc-master/api/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/burrite/Downloads/oscc-master/api /home/burrite/Downloads/oscc-master/api /home/burrite/Downloads/oscc-master/api/build /home/burrite/Downloads/oscc-master/api/build /home/burrite/Downloads/oscc-master/api/build/CMakeFiles/osccapi_shared_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/osccapi_shared_lib.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/vlad1819/C++/vanilla-rtb

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vlad1819/C++/vanilla-rtb

# Include any dependencies generated for this target.
include examples/CMakeFiles/messaging_client_test.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/messaging_client_test.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/messaging_client_test.dir/flags.make

examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o: examples/CMakeFiles/messaging_client_test.dir/flags.make
examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o: examples/messaging_client_test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vlad1819/C++/vanilla-rtb/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o"
	cd /home/vlad1819/C++/vanilla-rtb/examples && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o -c /home/vlad1819/C++/vanilla-rtb/examples/messaging_client_test.cpp

examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.i"
	cd /home/vlad1819/C++/vanilla-rtb/examples && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/vlad1819/C++/vanilla-rtb/examples/messaging_client_test.cpp > CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.i

examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.s"
	cd /home/vlad1819/C++/vanilla-rtb/examples && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/vlad1819/C++/vanilla-rtb/examples/messaging_client_test.cpp -o CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.s

examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o.requires:
.PHONY : examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o.requires

examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o.provides: examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/messaging_client_test.dir/build.make examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o.provides.build
.PHONY : examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o.provides

examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o.provides.build: examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o

# Object files for target messaging_client_test
messaging_client_test_OBJECTS = \
"CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o"

# External object files for target messaging_client_test
messaging_client_test_EXTERNAL_OBJECTS =

examples/messaging_client_test: examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o
examples/messaging_client_test: examples/CMakeFiles/messaging_client_test.dir/build.make
examples/messaging_client_test: rtb/libvanilla_rtb.so.1.1.0
examples/messaging_client_test: jsonv/libjsonv.so.1.2.0
examples/messaging_client_test: /usr/local/lib/libboost_log.so
examples/messaging_client_test: /usr/local/lib/libboost_program_options.so
examples/messaging_client_test: /usr/local/lib/libboost_system.so
examples/messaging_client_test: /usr/local/lib/libboost_serialization.so
examples/messaging_client_test: examples/CMakeFiles/messaging_client_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable messaging_client_test"
	cd /home/vlad1819/C++/vanilla-rtb/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/messaging_client_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/messaging_client_test.dir/build: examples/messaging_client_test
.PHONY : examples/CMakeFiles/messaging_client_test.dir/build

examples/CMakeFiles/messaging_client_test.dir/requires: examples/CMakeFiles/messaging_client_test.dir/messaging_client_test.cpp.o.requires
.PHONY : examples/CMakeFiles/messaging_client_test.dir/requires

examples/CMakeFiles/messaging_client_test.dir/clean:
	cd /home/vlad1819/C++/vanilla-rtb/examples && $(CMAKE_COMMAND) -P CMakeFiles/messaging_client_test.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/messaging_client_test.dir/clean

examples/CMakeFiles/messaging_client_test.dir/depend:
	cd /home/vlad1819/C++/vanilla-rtb && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vlad1819/C++/vanilla-rtb /home/vlad1819/C++/vanilla-rtb/examples /home/vlad1819/C++/vanilla-rtb /home/vlad1819/C++/vanilla-rtb/examples /home/vlad1819/C++/vanilla-rtb/examples/CMakeFiles/messaging_client_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/messaging_client_test.dir/depend


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
include examples/CMakeFiles/mock_bidder_test.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/mock_bidder_test.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/mock_bidder_test.dir/flags.make

examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o: examples/CMakeFiles/mock_bidder_test.dir/flags.make
examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o: examples/mock_bidder_test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vlad1819/C++/vanilla-rtb/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o"
	cd /home/vlad1819/C++/vanilla-rtb/examples && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o -c /home/vlad1819/C++/vanilla-rtb/examples/mock_bidder_test.cpp

examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.i"
	cd /home/vlad1819/C++/vanilla-rtb/examples && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/vlad1819/C++/vanilla-rtb/examples/mock_bidder_test.cpp > CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.i

examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.s"
	cd /home/vlad1819/C++/vanilla-rtb/examples && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/vlad1819/C++/vanilla-rtb/examples/mock_bidder_test.cpp -o CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.s

examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o.requires:
.PHONY : examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o.requires

examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o.provides: examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/mock_bidder_test.dir/build.make examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o.provides.build
.PHONY : examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o.provides

examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o.provides.build: examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o

# Object files for target mock_bidder_test
mock_bidder_test_OBJECTS = \
"CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o"

# External object files for target mock_bidder_test
mock_bidder_test_EXTERNAL_OBJECTS =

examples/mock_bidder_test: examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o
examples/mock_bidder_test: examples/CMakeFiles/mock_bidder_test.dir/build.make
examples/mock_bidder_test: rtb/libvanilla_rtb.so.1.1.0
examples/mock_bidder_test: jsonv/libjsonv.so.1.2.0
examples/mock_bidder_test: /usr/local/lib/libboost_log.so
examples/mock_bidder_test: /usr/local/lib/libboost_program_options.so
examples/mock_bidder_test: /usr/local/lib/libboost_system.so
examples/mock_bidder_test: /usr/local/lib/libboost_serialization.so
examples/mock_bidder_test: examples/CMakeFiles/mock_bidder_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable mock_bidder_test"
	cd /home/vlad1819/C++/vanilla-rtb/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mock_bidder_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/mock_bidder_test.dir/build: examples/mock_bidder_test
.PHONY : examples/CMakeFiles/mock_bidder_test.dir/build

examples/CMakeFiles/mock_bidder_test.dir/requires: examples/CMakeFiles/mock_bidder_test.dir/mock_bidder_test.cpp.o.requires
.PHONY : examples/CMakeFiles/mock_bidder_test.dir/requires

examples/CMakeFiles/mock_bidder_test.dir/clean:
	cd /home/vlad1819/C++/vanilla-rtb/examples && $(CMAKE_COMMAND) -P CMakeFiles/mock_bidder_test.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/mock_bidder_test.dir/clean

examples/CMakeFiles/mock_bidder_test.dir/depend:
	cd /home/vlad1819/C++/vanilla-rtb && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vlad1819/C++/vanilla-rtb /home/vlad1819/C++/vanilla-rtb/examples /home/vlad1819/C++/vanilla-rtb /home/vlad1819/C++/vanilla-rtb/examples /home/vlad1819/C++/vanilla-rtb/examples/CMakeFiles/mock_bidder_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/mock_bidder_test.dir/depend


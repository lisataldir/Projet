# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.27.6/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.27.6/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zhaoyutainazir/Projet

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zhaoyutainazir/Projet/build

# Include any dependencies generated for this target.
include algo_lib/CMakeFiles/al.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include algo_lib/CMakeFiles/al.dir/compiler_depend.make

# Include the progress variables for this target.
include algo_lib/CMakeFiles/al.dir/progress.make

# Include the compile flags for this target's objects.
include algo_lib/CMakeFiles/al.dir/flags.make

algo_lib/CMakeFiles/al.dir/algo.cpp.o: algo_lib/CMakeFiles/al.dir/flags.make
algo_lib/CMakeFiles/al.dir/algo.cpp.o: /Users/zhaoyutainazir/Projet/algo_lib/algo.cpp
algo_lib/CMakeFiles/al.dir/algo.cpp.o: algo_lib/CMakeFiles/al.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/zhaoyutainazir/Projet/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object algo_lib/CMakeFiles/al.dir/algo.cpp.o"
	cd /Users/zhaoyutainazir/Projet/build/algo_lib && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT algo_lib/CMakeFiles/al.dir/algo.cpp.o -MF CMakeFiles/al.dir/algo.cpp.o.d -o CMakeFiles/al.dir/algo.cpp.o -c /Users/zhaoyutainazir/Projet/algo_lib/algo.cpp

algo_lib/CMakeFiles/al.dir/algo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/al.dir/algo.cpp.i"
	cd /Users/zhaoyutainazir/Projet/build/algo_lib && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhaoyutainazir/Projet/algo_lib/algo.cpp > CMakeFiles/al.dir/algo.cpp.i

algo_lib/CMakeFiles/al.dir/algo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/al.dir/algo.cpp.s"
	cd /Users/zhaoyutainazir/Projet/build/algo_lib && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhaoyutainazir/Projet/algo_lib/algo.cpp -o CMakeFiles/al.dir/algo.cpp.s

# Object files for target al
al_OBJECTS = \
"CMakeFiles/al.dir/algo.cpp.o"

# External object files for target al
al_EXTERNAL_OBJECTS =

algo_lib/libal.a: algo_lib/CMakeFiles/al.dir/algo.cpp.o
algo_lib/libal.a: algo_lib/CMakeFiles/al.dir/build.make
algo_lib/libal.a: algo_lib/CMakeFiles/al.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/zhaoyutainazir/Projet/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libal.a"
	cd /Users/zhaoyutainazir/Projet/build/algo_lib && $(CMAKE_COMMAND) -P CMakeFiles/al.dir/cmake_clean_target.cmake
	cd /Users/zhaoyutainazir/Projet/build/algo_lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/al.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
algo_lib/CMakeFiles/al.dir/build: algo_lib/libal.a
.PHONY : algo_lib/CMakeFiles/al.dir/build

algo_lib/CMakeFiles/al.dir/clean:
	cd /Users/zhaoyutainazir/Projet/build/algo_lib && $(CMAKE_COMMAND) -P CMakeFiles/al.dir/cmake_clean.cmake
.PHONY : algo_lib/CMakeFiles/al.dir/clean

algo_lib/CMakeFiles/al.dir/depend:
	cd /Users/zhaoyutainazir/Projet/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhaoyutainazir/Projet /Users/zhaoyutainazir/Projet/algo_lib /Users/zhaoyutainazir/Projet/build /Users/zhaoyutainazir/Projet/build/algo_lib /Users/zhaoyutainazir/Projet/build/algo_lib/CMakeFiles/al.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : algo_lib/CMakeFiles/al.dir/depend


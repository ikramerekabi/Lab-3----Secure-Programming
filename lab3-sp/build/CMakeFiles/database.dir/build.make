# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/group-2-h/lab3-sp/project_v0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/group-2-h/lab3-sp/project_v0/build

# Utility rule file for database.

# Include any custom commands dependencies for this target.
include CMakeFiles/database.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/database.dir/progress.make

CMakeFiles/database: /home/group-2-h/lab3-sp/project_v0/compile_commands.json

/home/group-2-h/lab3-sp/project_v0/compile_commands.json: compile_commands.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/group-2-h/lab3-sp/project_v0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating /home/group-2-h/lab3-sp/project_v0/compile_commands.json"
	/usr/bin/cmake -E copy /home/group-2-h/lab3-sp/project_v0/build/compile_commands.json /home/group-2-h/lab3-sp/project_v0/compile_commands.json

database: CMakeFiles/database
database: /home/group-2-h/lab3-sp/project_v0/compile_commands.json
database: CMakeFiles/database.dir/build.make
.PHONY : database

# Rule to build all files generated by this target.
CMakeFiles/database.dir/build: database
.PHONY : CMakeFiles/database.dir/build

CMakeFiles/database.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/database.dir/cmake_clean.cmake
.PHONY : CMakeFiles/database.dir/clean

CMakeFiles/database.dir/depend:
	cd /home/group-2-h/lab3-sp/project_v0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/group-2-h/lab3-sp/project_v0 /home/group-2-h/lab3-sp/project_v0 /home/group-2-h/lab3-sp/project_v0/build /home/group-2-h/lab3-sp/project_v0/build /home/group-2-h/lab3-sp/project_v0/build/CMakeFiles/database.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/database.dir/depend


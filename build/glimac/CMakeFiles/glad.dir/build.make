# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build

# Include any dependencies generated for this target.
include glimac/CMakeFiles/glad.dir/depend.make

# Include the progress variables for this target.
include glimac/CMakeFiles/glad.dir/progress.make

# Include the compile flags for this target's objects.
include glimac/CMakeFiles/glad.dir/flags.make

glimac/CMakeFiles/glad.dir/third-party/glad/src/glad.c.o: glimac/CMakeFiles/glad.dir/flags.make
glimac/CMakeFiles/glad.dir/third-party/glad/src/glad.c.o: ../glimac/third-party/glad/src/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glimac/CMakeFiles/glad.dir/third-party/glad/src/glad.c.o"
	cd /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/glimac && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glad.dir/third-party/glad/src/glad.c.o   -c /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/glimac/third-party/glad/src/glad.c

glimac/CMakeFiles/glad.dir/third-party/glad/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glad.dir/third-party/glad/src/glad.c.i"
	cd /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/glimac && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/glimac/third-party/glad/src/glad.c > CMakeFiles/glad.dir/third-party/glad/src/glad.c.i

glimac/CMakeFiles/glad.dir/third-party/glad/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glad.dir/third-party/glad/src/glad.c.s"
	cd /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/glimac && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/glimac/third-party/glad/src/glad.c -o CMakeFiles/glad.dir/third-party/glad/src/glad.c.s

# Object files for target glad
glad_OBJECTS = \
"CMakeFiles/glad.dir/third-party/glad/src/glad.c.o"

# External object files for target glad
glad_EXTERNAL_OBJECTS =

glimac/libglad.a: glimac/CMakeFiles/glad.dir/third-party/glad/src/glad.c.o
glimac/libglad.a: glimac/CMakeFiles/glad.dir/build.make
glimac/libglad.a: glimac/CMakeFiles/glad.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libglad.a"
	cd /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/glimac && $(CMAKE_COMMAND) -P CMakeFiles/glad.dir/cmake_clean_target.cmake
	cd /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/glimac && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glad.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glimac/CMakeFiles/glad.dir/build: glimac/libglad.a

.PHONY : glimac/CMakeFiles/glad.dir/build

glimac/CMakeFiles/glad.dir/clean:
	cd /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/glimac && $(CMAKE_COMMAND) -P CMakeFiles/glad.dir/cmake_clean.cmake
.PHONY : glimac/CMakeFiles/glad.dir/clean

glimac/CMakeFiles/glad.dir/depend:
	cd /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/glimac /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/glimac /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/glimac/CMakeFiles/glad.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glimac/CMakeFiles/glad.dir/depend


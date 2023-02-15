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
include CMakeFiles/TP3_exe.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TP3_exe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TP3_exe.dir/flags.make

DUMMY_assets/models/cornell_box.mtl_TP3_exo1_exe: ../assets/models/cornell_box.mtl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Copying \"assets/models/cornell_box.mtl\""
	/usr/bin/cmake -E make_directory /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/DUMMY_assets/models/cornell_box.mtl_TP3_exo1_exe
	/usr/bin/cmake -E copy /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/assets/models/cornell_box.mtl /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/bin/Debug/assets/models/cornell_box.mtl

DUMMY_assets/models/cornell_box.obj_TP3_exo1_exe: ../assets/models/cornell_box.obj
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Copying \"assets/models/cornell_box.obj\""
	/usr/bin/cmake -E make_directory /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/DUMMY_assets/models/cornell_box.obj_TP3_exo1_exe
	/usr/bin/cmake -E copy /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/assets/models/cornell_box.obj /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/bin/Debug/assets/models/cornell_box.obj

DUMMY_assets/models/cube.mtl_TP3_exo1_exe: ../assets/models/cube.mtl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Copying \"assets/models/cube.mtl\""
	/usr/bin/cmake -E make_directory /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/DUMMY_assets/models/cube.mtl_TP3_exo1_exe
	/usr/bin/cmake -E copy /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/assets/models/cube.mtl /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/bin/Debug/assets/models/cube.mtl

DUMMY_assets/models/cube.obj_TP3_exo1_exe: ../assets/models/cube.obj
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Copying \"assets/models/cube.obj\""
	/usr/bin/cmake -E make_directory /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/DUMMY_assets/models/cube.obj_TP3_exo1_exe
	/usr/bin/cmake -E copy /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/assets/models/cube.obj /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/bin/Debug/assets/models/cube.obj

# Object files for target TP3_exe
TP3_exe_OBJECTS =

# External object files for target TP3_exe
TP3_exe_EXTERNAL_OBJECTS =

../bin/Debug/TP3_exe: CMakeFiles/TP3_exe.dir/build.make
../bin/Debug/TP3_exe: glimac/libglimac.a
../bin/Debug/TP3_exe: glimac/third-party/glfw/src/libglfw3.a
../bin/Debug/TP3_exe: /usr/lib/x86_64-linux-gnu/librt.so
../bin/Debug/TP3_exe: /usr/lib/x86_64-linux-gnu/libm.so
../bin/Debug/TP3_exe: glimac/libglad.a
../bin/Debug/TP3_exe: CMakeFiles/TP3_exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../bin/Debug/TP3_exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TP3_exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TP3_exe.dir/build: ../bin/Debug/TP3_exe

.PHONY : CMakeFiles/TP3_exe.dir/build

CMakeFiles/TP3_exe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TP3_exe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TP3_exe.dir/clean

CMakeFiles/TP3_exe.dir/depend: DUMMY_assets/models/cornell_box.mtl_TP3_exo1_exe
CMakeFiles/TP3_exe.dir/depend: DUMMY_assets/models/cornell_box.obj_TP3_exo1_exe
CMakeFiles/TP3_exe.dir/depend: DUMMY_assets/models/cube.mtl_TP3_exo1_exe
CMakeFiles/TP3_exe.dir/depend: DUMMY_assets/models/cube.obj_TP3_exo1_exe
	cd /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build /home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/build/CMakeFiles/TP3_exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TP3_exe.dir/depend


cmake_minimum_required(VERSION 3.10)
# Clones the bob_robotics git submodule and includes the main CMake file. For
# more details on the BoB build system, see: https://github.com/BrainsOnBoard/bob_robotics/tree/cmake/cmake
include(BoBRobotics.cmake)
project(example_program)

find_package(BoBRobotics REQUIRED COMPONENTS common)

add_executable(program program.cc)
target_link_libraries(program PUBLIC ${BoBRobotics_LIBRARIES})

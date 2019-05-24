# Automatically check out git submodule and include main CMake file
macro(local_exec_or_fail)
    execute_process(COMMAND ${ARGV} RESULT_VARIABLE rv OUTPUT_VARIABLE SHELL_OUTPUT)
    if(NOT ${rv} EQUAL 0)
        message(FATAL_ERROR "Error while executing: ${ARGV}")
    endif()
endmacro()

# Checkout git submodules under this path
find_package(Git REQUIRED)
local_exec_or_fail(${GIT_EXECUTABLE} submodule update --init bob_robotics
                WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR})

# Load BoB robotics CMake file
include(${CMAKE_CURRENT_LIST_DIR}/bob_robotics/cmake/bob_robotics.cmake)

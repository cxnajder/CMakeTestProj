cmake_minimum_required(VERSION 3.10)
project(CMmakeProject VERSION 1.0)

add_subdirectory(External/glfw)
add_subdirectory(External/googletest)

set(GLFW_PROGRAM "glfwApp")

add_executable(${GLFW_PROGRAM} glfwApp/Main.cpp)

target_include_directories(${GLFW_PROGRAM} PUBLIC External/glfw/include)
target_link_directories(${GLFW_PROGRAM} PRIVATE External/glfw/src)
target_link_libraries(${GLFW_PROGRAM} glfw)
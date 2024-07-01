cmake_minimum_required(VERSION 3.10)
project(CMmakeProject VERSION 1.0)

add_executable(${PROJECT_NAME} Main.cpp)

add_subdirectory(External/glfw)
add_subdirectory(External/googletest)

target_include_directories(${PROJECT_NAME} PUBLIC External/glfw/include)
target_link_directories(${PROJECT_NAME} PRIVATE External/glfw/src)
target_link_libraries(${PROJECT_NAME} glfw)
cmake_minimum_required(VERSION 3.20)

#add_compile_options( -static-libgcc -static-libstdc++ )

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g ${FILE} -static-libgcc -static-libstdc++")
project(vulkan_tut)

find_package(Vulkan REQUIRED)

add_subdirectory(vecMathsLib)

add_executable(${PROJECT_NAME} main.cpp)
include_directories(GLFW/include ${Vulkan_INCLUDE_DIRS})


target_link_libraries(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/GLFW/mingw/libglfw3.a ${Vulkan_LIBRARIES} vecMaths)
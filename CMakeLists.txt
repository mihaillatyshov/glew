cmake_minimum_required(VERSION 3.24)
project(GLEW VERSION 1.0)

set(SOURCES 
    src/glew.c 
    include/GL/glew.h
    include/GL/eglew.h
    include/GL/glxew.h
    include/GL/wglew.h)

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${SOURCES})

add_library(${PROJECT_NAME} STATIC)
target_sources(${PROJECT_NAME} PRIVATE ${SOURCES})
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

add_definitions(-DGLEW_STATIC -D_LIB)

# -*- mode: snippet -*-
# Last modified: <2012-03-04 13:29:09 Sunday by richard>
# name: hheadx
# key: hheadx
# contributor: Richard Wong <chao787@gmail.com>
# --
########################################################################
# CMake build script for ${1:Project Name}
#
# BUILD_SHARED_LIBS is a standard CMake variable, but we declare it here to
# make it prominent in the GUI.
option(BUILD_SHARED_LIBS "Build shared libraries (DLLs)." OFF)

########################################################################
#
# Project-wide settings

# Name of the project.
#
# CMake files in this project can refer to the root source directory
# as \${PROJECT_SOURCE_DIR}. and to the root binary directory as
# \${PROJECT_BINARY_DIR}.
PROJECT ($1 CXX C)

cmake_minimum_required(VERSION 2.8)

# ADD_SUBDIRECTORY("src" "bin")
SET(SRC_LIST $0main.cc)

MESSAGE(STATUS "\${PROJECT_NAME} is cmaking now...") 

MESSAGE(STATUS "BINARY dir is: " \${PROJECT_BINARY_DIR}) 
MESSAGE(STATUS "SOURCE dir is: " \${PROJECT_SOURCE_DIR})  

ADD_EXECUTABLE(main \${SRC_LIST})

# SET(EXECUTABLE_OUTPUT_PATH \${PROJECT_BINARY_DIR}/bin)
# SET(LIBRARY_OUTPUT_PATH    \${PROJECT_BINARY_DIR}/lib)


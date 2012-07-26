# -*- mode: snippet -*-
# Last modified: <2012-03-04 14:31:36 Sunday by richard>
# name: gheadx
# key: gheadx
# contributor: Richard Wong <chao787@gmail.com>
# --
########################################################################
# CMake build script for ${1:Project Name}
#
# To run the tests for project Test itself on Linux, use 'make test' or
# ctest.  You can select which tests to run using 'ctest -R regex'.
# For more options, run 'ctest --help'.

# BUILD_SHARED_LIBS is a standard CMake variable, but we declare it here to
# make it prominent in the GUI.
option(BUILD_SHARED_LIBS "Build shared libraries (DLLs)." OFF)

option(disable_pthreads "Disable uses of pthreads in test." OFF)

# ATTENTION DEFAULT is build test program.
option(build_tests "Build test's programs." ON)

########################################################################
#
# Project-wide settings

# Name of the project.
#
# CMake files in this project can refer to the root source directory
# as \${PROJECT_SOURCE_DIR}. and to the root binary directory as
# \${PROJECT_BINARY_DIR}.
# Language "C" is required for find_package(Threads).
PROJECT ($1 CXX C)

cmake_minimum_required(VERSION 2.8)

MESSAGE(STATUS "\${PROJECT_NAME} is cmaking now...") 
MESSAGE(STATUS "BINARY dir is :" \${PROJECT_BINARY_DIR}) 
MESSAGE(STATUS "SOURCE dir is :" \${PROJECT_SOURCE_DIR})  


# ADD_SUBDIRECTORY("src" "bin") #using src should define src/MakeLists.txt
SET(SRC_LIST       $0main.cc)
ADD_EXECUTABLE(hello \${SRC_LIST})

# SET(TESTSOURCENAME testmain)

# define Google test Directory
SET(GTEST_DIR /home/richard/Documents/code/test/gtest-1.6.0/)

########################################################################
#
# Project $1 Test's google tests settings.
#
# The tests are not built by default.  To build them, set the
# build_tests option to ON.  You can do it by running ccmake
# or specifying the -Dbuild_tests=ON flag when running cmake.

if (build_tests)

  # Define helper functions and macros used by Google Test.
  include(\${GTEST_DIR}cmake/internal_utils.cmake)
  config_compiler_and_linker()  # Defined in internal_utils.cmake.

  # Where Google Test's .h files can be found.
  include_directories(
    \${GTEST_DIR}include
    \${GTEST_DIR})

  # Where Google Test's libraries can be found.
  link_directories(\${GTEST_DIR}/src)

  ########################################################################
  #
  # Defines the gtest & gtest_main libraries.  User tests should link
  # with *one* of them.

  # Google Test libraries.  We build them using more strict warnings than what
  # are used for other targets, to ensure that gtest can be compiled by a user
  # aggressive about warnings.
  cxx_library(gtest "\${cxx_strict}" \${GTEST_DIR}src/gtest-all.cc)
  cxx_library(gtest_main "\${cxx_strict}" \${GTEST_DIR}src/gtest_main.cc)
  target_link_libraries(gtest_main gtest)

  # This must be set in the root directory for the tests to be run by
  # 'make test' or ctest.
  enable_testing()

  ############################################################
  # C++ tests built with standard compiler flags.
  # Template list:
  # cxx_test(\${TESTSOURCENAME} gtest_main) # use this if you don't like main function.
  # cxx_test(\${TESTSOURCENAME} gtest)

  ############################################################
  # C++ tests built with non-standard compiler flags.
  # store in gtest-extend.y with 'gtest-extend' as yas-keyword

  ############################################################
  # Python tests.
  # store in python-test.y with 'python-test' as yas-keyword

endif()

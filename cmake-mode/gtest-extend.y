# -*- mode: snippet -*-
# Last modified: <2012-03-04 12:41:12 Sunday by richard>
# name: extend
# key: gtest-extend
# contributor: Richard Wong <chao787@gmail.com>
# --

  cxx_library(gtest_no_exception "\${cxx_no_exception}"
    src/gtest-all.cc)
  cxx_library(gtest_main_no_exception "\${cxx_no_exception}"
    src/gtest-all.cc src/gtest_main.cc)
  cxx_library(gtest_main_no_rtti "\${cxx_no_rtti}"
    src/gtest-all.cc src/gtest_main.cc)

  cxx_test_with_flags(gtest-death-test_ex_nocatch_test
    "\${cxx_exception} -DGTEST_ENABLE_CATCH_EXCEPTIONS_=0"
    gtest test/gtest-death-test_ex_test.cc)
  cxx_test_with_flags(gtest-death-test_ex_catch_test
    "\${cxx_exception} -DGTEST_ENABLE_CATCH_EXCEPTIONS_=1"
    gtest test/gtest-death-test_ex_test.cc)

  cxx_test_with_flags(gtest_no_rtti_unittest "\${cxx_no_rtti}"
    gtest_main_no_rtti test/gtest_unittest.cc)

  cxx_shared_library(gtest_dll "\${cxx_default}"
    src/gtest-all.cc src/gtest_main.cc)

  cxx_executable_with_flags(gtest_dll_test_ "\${cxx_default}"
    gtest_dll test/gtest_all_test.cc)
  set_target_properties(gtest_dll_test_
                        PROPERTIES
                        COMPILE_DEFINITIONS "GTEST_LINKED_AS_SHARED_LIBRARY=1")

  if (NOT MSVC OR NOT MSVC_VERSION EQUAL 1600)
    # The C++ Standard specifies tuple_element<int, class>.
    # Yet MSVC 10's <utility> declares tuple_element<size_t, class>.
    # That declaration conflicts with our own standard-conforming
    # tuple implementation.  Therefore using our own tuple with
    # MSVC 10 doesn't compile.
    cxx_library(gtest_main_use_own_tuple "\${cxx_use_own_tuple}"
      src/gtest-all.cc src/gtest_main.cc)

    cxx_test_with_flags(gtest-tuple_test "\${cxx_use_own_tuple}"
      gtest_main_use_own_tuple test/gtest-tuple_test.cc)

    cxx_test_with_flags(gtest_use_own_tuple_test "\${cxx_use_own_tuple}"
      gtest_main_use_own_tuple
      test/gtest-param-test_test.cc test/gtest-param-test2_test.cc)
  endif()



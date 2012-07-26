# -*- mode: snippet -*-
# Last modified: <2012-03-04 12:41:21 Sunday by richard>
# name: python-test
# key: python-test
# contributor: Richard Wong <chao787@gmail.com>
# --
  ############################################################
  # Python tests.

  cxx_executable(gtest_break_on_failure_unittest_ test gtest)
  py_test(gtest_break_on_failure_unittest)

  cxx_executable_with_flags(
    gtest_catch_exceptions_no_ex_test_
    "\${cxx_no_exception}"
    gtest_main_no_exception
    test/gtest_catch_exceptions_test_.cc)
  cxx_executable_with_flags(
    gtest_catch_exceptions_ex_test_
    "\${cxx_exception}"
    gtest_main
    test/gtest_catch_exceptions_test_.cc)
  py_test(gtest_catch_exceptions_test)

  cxx_executable(gtest_color_test_ test gtest)
  py_test(gtest_color_test)

  cxx_executable(gtest_env_var_test_ test gtest)
  py_test(gtest_env_var_test)

  cxx_executable(gtest_filter_unittest_ test gtest)
  py_test(gtest_filter_unittest)

  cxx_executable(gtest_help_test_ test gtest_main)
  py_test(gtest_help_test)

  cxx_executable(gtest_list_tests_unittest_ test gtest)
  py_test(gtest_list_tests_unittest)

  cxx_executable(gtest_output_test_ test gtest)
  py_test(gtest_output_test)

  cxx_executable(gtest_shuffle_test_ test gtest)
  py_test(gtest_shuffle_test)

  cxx_executable(gtest_throw_on_failure_test_ test gtest_no_exception)
  set_target_properties(gtest_throw_on_failure_test_
    PROPERTIES
    COMPILE_FLAGS "\${cxx_no_exception}")
  py_test(gtest_throw_on_failure_test)

  cxx_executable(gtest_uninitialized_test_ test gtest)
  py_test(gtest_uninitialized_test)

  cxx_executable(gtest_xml_outfile1_test_ test gtest_main)
  cxx_executable(gtest_xml_outfile2_test_ test gtest_main)
  py_test(gtest_xml_outfiles_test)

  cxx_executable(gtest_xml_output_unittest_ test gtest)
  py_test(gtest_xml_output_unittest)


# -*- mode: snippet -*-
# Last modified: <2012-04-30 14:50:58 Monday by richard>
# name: nosetest
# key: nose
# contributor: Richard Wong <chao787@gmail.com>
# --
import nose
def setup_func():
    "set up test fixtures"

def teardown_func():
    "tear down test fixtures"

@with_setup(setup_func, teardown_func)
def test():
    "test ..."

nose.main()


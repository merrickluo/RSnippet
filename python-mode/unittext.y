# -*- mode: snippet -*-
# Last modified: <2012-06-20 22:15:23 Wednesday by richard>
# name: unittest
# key: test
# contributor: Richard Wong <chao787@gmail.com>
# --
import unittest
from sys import path
from os.path import realpath


class ${1:MyTestCase}(unittest.TestCase):
    $0
    def __init__(self, test_name):
        unittest.TestCase.__init__(self, test_name)

    def setUp(self):
        pass
    def tearDown(self):
        pass
    def test_feature_one(self):
        pass

if __name__ == '__main__':
    sys.path.insert(0, realpath(path_join(dirname(__file__), '../')))
    unittest.main()

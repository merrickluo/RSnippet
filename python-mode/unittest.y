# -*- mode: snippet -*-
# Last modified: <2012-08-15 17:19:38 Wednesday by richard>
# name: unittest
# key: test
# contributor: Richard Wong <chao787@gmail.com>
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# --
import unittest

class ${1:MyTestCase}(unittest.TestCase):

    def test_feature_one(self):
        pass

if __name__ == '__main__':
    unittest.main()

# -*- mode: snippet -*-
# Last modified: <2014-02-14 10:21:34 Friday by wongrichard>
# name: testController
# key: testcon
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --

describe('Controller: $1Ctrl', function() {
           beforeEach(module('nqApp'));

           describe('$1 controllers', function() {

                      it('should create have three awesome things',
                         inject(function($controller) {
                                  var scope = {},
                                  ctrl = $controller('$1Ctrl', { $scope: scope });

                                  expect(scope.awesomeThings.length).toBe(3);

                                }));
                    });
         });

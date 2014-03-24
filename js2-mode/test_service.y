# -*- mode: snippet -*-
# Last modified: <2014-02-19 18:16:16 Wednesday by wongrichard>
# name: test_service
# key: service
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
'use strict';

describe('Service: nqTest', function () {

           var $httpBackend;
           beforeEach(module("niqu.laime"));
           beforeEach(inject(function ($injector) {
                               $httpBackend = $injector.get("$httpBackend");
                             }));

           afterEach(function() {
                       $httpBackend.verifyNoOutstandingExpectation();
                       $httpBackend.verifyNoOutstandingRequest();
                     });

           it('should contain an $niquTestService service',
              inject(function($niquTestService) {
                       expect($niquTestService).toBeDefined();
                     }));


           it("should get 'pong' from '/ping'",
              inject(function($niquTestService) {
                       $httpBackend.expectGET("/ping").respond([]);
                       $niquTestService.get().then(function(pong){
                                                     expect(pong).toEqual([]);
                                                   }
                                                  );
                       $httpBackend.flush();
                     }));

         });


// nqTest.js ended here

'use strict';
/* global jest describe it*/
const expect = require('chai').expect;

describe('mocha', () => {
  it('should run this test', () =>{
    expect(1+1).to.equal(2);
  });
});

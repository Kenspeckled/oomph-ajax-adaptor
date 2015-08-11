// Generated by CoffeeScript 1.9.3
(function() {
  var _, _ajax, findBy;

  _ = require('lodash');

  _ajax = require('../ajax');

  findBy = function(opts) {
    return _ajax.get('/api/' + _.kebabCase(this.name), opts);
  };

  module.exports = findBy;

}).call(this);
// Generated by CoffeeScript 1.9.3
(function() {
  var _, _ajax, create;

  _ = require('lodash');

  _ajax = require('../ajax');

  create = function(opts) {
    return _ajax.post('/api/' + _.kebabCase(this.name), opts);
  };

  module.exports = create;

}).call(this);
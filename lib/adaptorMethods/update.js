// Generated by CoffeeScript 1.9.3
(function() {
  var _, _ajax, update;

  _ = require('lodash');

  _ajax = require('../ajax');

  update = function(id, opts) {
    return _ajax.put('/api/' + _.kebabCase(this.name) + '/' + id, opts);
  };

  module.exports = update;

}).call(this);
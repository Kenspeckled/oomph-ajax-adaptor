_ = require 'lodash'
_ajax = require '../ajax'

find = (id) ->
  _ajax.get '/api/' + _.kebabCase(@className) + '/' + id

module.exports = find

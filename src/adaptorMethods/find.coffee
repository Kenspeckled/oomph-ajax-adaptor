_ = require 'lodash'
_ajax = require '../ajax'

find = (id) ->
  _ajax.get '/api/' + _.kebabCase(@name) + '/' + id

module.exports = find

_ = require 'lodash'
_ajax = require '../ajax'

findBy = (opts) ->
  _ajax.get '/api/' + _.kebabCase(@className), opts

module.exports = findBy

_ = require 'lodash'
_ajax = require '../ajax'

create = (opts) ->
  _ajax.post '/api/' + _.kebabCase(@name), opts

module.exports = create

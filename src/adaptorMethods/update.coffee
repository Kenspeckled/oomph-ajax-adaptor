_ = require 'lodash'
_ajax = require '../ajax'

update = (id, opts) ->
  _ajax.put '/api/' + _.kebabCase(@className) + '/'+ id, opts

module.exports = update

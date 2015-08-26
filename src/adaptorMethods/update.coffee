_ = require 'lodash'
_ajax = require '../ajax'

update = (id, opts) ->
  _ajax.put.apply( this, ['/api/' + _.kebabCase(@className) + '/'+ id, opts])

module.exports = update

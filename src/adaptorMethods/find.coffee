_ = require 'lodash'
_ajax = require '../ajax'

find = (id) ->
  _ajax.get.apply(this, ['/api/' + _.kebabCase(@className) + '/' + id])

module.exports = find

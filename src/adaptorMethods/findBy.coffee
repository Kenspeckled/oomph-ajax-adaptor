_ = require 'lodash'
_ajax = require '../ajax'

findBy = (opts) ->
  _ajax.get.apply(this, ['/api/' + _.kebabCase(@className), opts])

module.exports = findBy

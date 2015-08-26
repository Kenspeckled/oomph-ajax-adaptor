_utilities = require '../utilities'
_ajax = require '../ajax'

where = (opts) ->
  _ajax.get.apply(this, ['/api/' + _utilities.pluralKebabCase(@className), opts])

module.exports = where

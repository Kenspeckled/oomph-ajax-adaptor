_utilities = require '../utilities'
_ajax = require '../ajax'

all = ->
  _ajax.get.apply(this, ['/api/' + _utilities.pluralKebabCase(@className)])

module.exports = all

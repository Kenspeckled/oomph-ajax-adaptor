_utilities = require '../utilities'
_ajax = require '../ajax'

all = (limit) ->
  limit = 0 if !limit
  _ajax.get.apply(this, ['/api/' + _utilities.pluralKebabCase(@className), {limit}])

module.exports = all

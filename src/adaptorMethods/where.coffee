_utilities = require '../utilities'
_ajax = require '../ajax'

where = (opts) ->
  _ajax.get '/api/' + _utilities.pluralKebabCase(@name), opts

module.exports = where

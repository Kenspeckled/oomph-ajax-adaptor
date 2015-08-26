_ = require 'lodash'
_ajax = require '../ajax'

create = (opts) ->
  _ajax.post.apply(this, ['/api/' + _.kebabCase(@className), opts])

module.exports = create

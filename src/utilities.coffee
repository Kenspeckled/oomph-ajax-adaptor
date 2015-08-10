_ = require 'lodash'
pluralize = require 'pluralize'

utilities =

  pluralKebabCase: (str) ->
    kebabCaseStr = _.kebabCase(str)
    match = kebabCaseStr.match /-(\w+)$/
    if match
      lastWord = match[1] 
    else
      lastWord = kebabCaseStr
    kebabCaseStr.replace new RegExp(lastWord + '$'), pluralize(lastWord)

  objectToQueryString: (obj, prefix) ->
    str = []
    for p of obj
      if obj.hasOwnProperty(p)
        k = if prefix then prefix + '[' + p + ']' else p
        v = obj[p]
        str.push if typeof v == 'object' then @objectToQueryString(v, k) else encodeURIComponent(k) + '=' + encodeURIComponent(v)
    str.join '&'

  #queryStringToObject: (querystring) ->
  #  pairs = querystring.replace('?','').split('&')
  #  result = {}
  #  pairs.forEach (pair) ->
  #    pair = pair.split('=')
  #    result[pair[0]] = decodeURIComponent(pair[1] || '')
  #  result

module.exports = utilities

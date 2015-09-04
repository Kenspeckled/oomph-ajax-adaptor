Promise = require 'promise'
_utilities = require './utilities'

httpRequest = (method, url, args, isJson) ->
  new Promise (resolve, reject) =>
    client = new XMLHttpRequest
    uri = url
    if method != 'POST'
      if args
        uri += '?'
        uri += _utilities.objectToQueryString args
      client.open method, uri
      client.send()
    else
      params = _utilities.objectToQueryString args
      client.open method, url
      client.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
      client.send params 
    client.onload = ->
      reponse = if isJson then JSON.parse(@response) else @response
      if @status == 200
        resolve reponse
      else
        reject status: @status, response: reponse

ajax = 

  get: (path, args) ->
    httpRequest 'GET',  path, args, true
  post: (path, args) ->
    httpRequest 'POST', path, args, true
  put: (path, args) ->
    httpRequest 'PUT',  path, args
  delete: (path, args) ->
    httpRequest 'DELETE', path, args


module.exports = ajax

module.exports =
  button: require 'livescript!./button.ls'
  string: 'some string'

Object.defineProperty module.exports, 'definePropertyButton',
  enumerable: yes
  get: -> require 'livescript!./button.ls'

require! 'loader-utils'


module.exports = ->
  @cacheable?!

  """
  module.exports = require('react').createFactory(
    require('#{loader-utils.get-remaining-request this}')
  );
  """

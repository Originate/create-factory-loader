require! 'loader-utils'


module.exports = ->
  @cacheable?!

  """
  module.exports = require(
    'create-factory-loader/lib/require'
  )(
    require('!!#{loader-utils.get-remaining-request this}')
  );
  """

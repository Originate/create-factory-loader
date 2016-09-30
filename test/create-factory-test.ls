require! {
  chai: {expect}
  fs
  path
  webpack
}

describe 'create-factory-loader' (...) ->

  before (done) ->
    webpack(require './sample_app/webpack.config.ls').run (err, {compilation}) ~>
      return done err if err
      return done compilation.errors if compilation.errors.length > 0
      @bundle = path.join __dirname, './sample_app/dist/bundle.js'
        |> fs.readFileSync _, 'utf8'
        |> eval
      done!

  it 'returns a factory' ->
    expect(@bundle.factory.name).to.equal 'Button factory'

  it 'references the same class as a require to the class does' ->
    expect(@bundle.class).to.equal @bundle.factory.class

  it 'returns creates factories for each function in an exported object' ->
    expect(@bundle.object.button.name).to.eql 'Button factory'

  it 'does not modify non-functions in objects' ->
    expect(@bundle.object.string).to.eql 'some string'

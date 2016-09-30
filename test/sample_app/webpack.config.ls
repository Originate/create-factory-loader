require! path

module.exports =

  context: __dirname

  entry: 'livescript!./entry.ls'

  resolve: root: path.join __dirname, 'node_modules'

  output:
    path: path.join __dirname, 'dist'
    filename: 'bundle.js'
    pathinfo: yes

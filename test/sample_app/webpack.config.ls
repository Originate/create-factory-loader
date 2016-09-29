require! path

module.exports =

  context: __dirname

  entry: 'livescript!./entry.ls'

  output:
    path: path.join __dirname, 'dist'
    filename: 'bundle.js'
    pathinfo: yes

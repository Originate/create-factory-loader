require! react

create-factory-obj = ->
  obj = Object.create it
  for own k, v of obj when typeof v is \function
    obj[k] = react.create-factory v
  obj

module.exports = ->
  switch typeof it
  | \function => react.create-factory it
  | \object   => create-factory-obj it
  | otherwise => it

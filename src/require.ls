require! react

create-factory-obj = ->
  obj = Object.create it
  for own k, v of it when typeof v is \function
    let v
      Object.define-property obj, k,
        enumerable: yes
        get: -> react.create-factory v
  obj

module.exports = ->
  switch typeof it
  | \function => react.create-factory it
  | \object   => create-factory-obj it
  | otherwise => it

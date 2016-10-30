{
  const R = require('ramda')
  const fieldsMap = R.compose(R.fromPairs, R.map(R.prop(1)))
}

Types = types:(_ TypeDef _)* {
	return fieldsMap(types)
}

TypeDef = "type" _ tag:Tag fields:(_ Field)+ {
  return [tag, fieldsMap(fields)]
}

Tag = Upper

Field = name:Lower _ ":" _ type:Tag {
	return [name, type]
}

Upper = head:[A-Z] tail:([a-zA-Z0-9])+ {
	return head + tail.join("")
}

Lower = head:[a-z] tail:([a-z0-9])+ {
	return head + tail.join("")
}

_ = [ \t\r\n]*

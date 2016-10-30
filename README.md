# tiny type specification language

before running, build the parser

	npm run build

## What it does

parse a type definition

```purescript
type Person
  name : String
  age : Int

type Message
  from : Person
  to : Person
  message : String
  date : Date
  time : Time
```

into 

```json
{
  "Person": {
    "name": "String",
    "age": "Int"
  },
  "Message": {
    "from": "Person",
    "to": "Person",
    "message": "String",
    "date": "Date",
    "time": "Time"
  }
}
```

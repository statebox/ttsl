const fs = require('fs')
const ttsl = require('./index.js')

const example = fs.readFileSync('example.ttsl', {encoding: 'utf8'})

const ast = ttsl(example)

console.log(JSON.stringify(ast,null,2))

require('dotenv').config()
var express = require('express')
var app = express()

app.use(express.static('public'))

app.set('view engine', 'ejs')

app.get('/', function (req, res) {
  res.render('index', {name: process.env.user})
})

app.listen(3000)

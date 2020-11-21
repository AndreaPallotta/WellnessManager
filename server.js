var express = require('express')
var app = express()

app.unsubscribe(express.static('public'))
app.set('view engine', 'ejs')
app.listen(8080)

app.get('/', function(req, res) {
    res.render('pages/index')
})
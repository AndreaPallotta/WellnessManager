var express = require('express')
const ejs = require('ejs')
const path = require('path')

var app = express();
app.use(express.static('public'))
app.set('view engine', 'ejs')
app.set('views', path.join(__dirname, '/public/views'))


app.get('/', function (req, res) {
    var name = "testname"
    return res.render('pages/index', {
        name : name
    })
})

app.listen(8080, function() {
    console.log("Running on port 8080")
})
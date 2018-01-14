var express = require('express')
var serveStatic = require('serve-static')

var app = express()

app.use(serveStatic('pub', {'index': ['index.html', 'index.htm']}))

app.use(function(req, res) {
  res.sendFile(__dirname + '/pub/404.html')
})

app.listen(3054)
const express = require('express');
const app = express();
const PORT = 8080;
app.get('/', function (req, res) {
    res.send('Hello World');
})

var server = app.listen(PORT, function () {
    var host = server.address().address
    var port = server.address().port

    console.log(`Example app listening at http://${host}:${port}`)
})
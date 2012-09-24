var connect = require('connect');
var port = 8080;
console.log("Starting server at http://localhost:"+port);
connect.createServer(
    connect.static(__dirname)
).listen(port);

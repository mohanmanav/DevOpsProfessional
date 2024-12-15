const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Application started successfully!\n');
});

server.listen(85, () => {
  console.log('Server running on port 85');
});

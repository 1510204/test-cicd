const http = require('http');
const port = 8080;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello! Day la web tu trong Docker.\n'); // Chữ bạn muốn hiển thị
});

server.listen(port, () => {
  console.log(`Server dang chay o port ${port}/`);
});
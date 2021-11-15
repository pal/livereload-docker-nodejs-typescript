import Http from 'http'

const server = Http.createServer();
const PORT = process.env.BACK_PORT || 3000

server.listen(PORT);
console.log('listening at', PORT)

const express = require('express');
const port = 3000;
const books = require('./books');

const app = express();

app.use(express.json());
app.use('/api/v1/books', books);

app.listen(port, '0.0.0.0', () => {
  console.log(`Server listening at http://0.0.0.0:${port}`);
});

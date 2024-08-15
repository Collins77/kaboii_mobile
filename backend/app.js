const bodyParser = require('body-parser');
const express = require('express');
const morgan = require('morgan');
require('dotenv').config();
const cors = require('cors');

const app = express();

app.use(bodyParser.json());
app.use(morgan('tiny'));
app.use(cors())
app.options('*', cors());

PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
})
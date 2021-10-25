const express = require('express');
const app = express();
const port = '4400';
const cors = require('cors');

const questionsRoute = require('./src/routes/questions.js');

app.use(cors());
app.use(express.json());

app.use('/questions', questionsRoute);


app.use((err, req, res, next) => {
    if (!err) {
        return next();
    }
    console.log(JSON.stringify(err));
    return res.status(500).json("Se ha producido un error inesperado.");
});

app.listen(port , () => console.log(`Se ha iniciado en el puerto ${port}`))
const express = require('express');
const router = express.Router();
const {
    //funciones a importar
    respondQuestions
} = require('../controllers/questions.js');


router.post('/' , respondQuestions); 


module.exports = router;
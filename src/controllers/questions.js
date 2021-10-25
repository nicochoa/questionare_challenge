
const {
    findQuestion, 
    getAnswers
} = require('../models/questions.js');

class Response {
    constructor( err, questions, answers){
        this.error = err,
        this.codigo = 200,
        this.questions = questions,
        this.answers = answers
    }
}

module.exports = {
    respondQuestions: async (req , res)=>{
        let results = await findQuestion(req);
        let answers = await getAnswers(req)
        if (!results[0]) {
            res.status(404).send("no se encontraron preguntas")
        } else {
            console.log(new Response( 'false', results , answers));
            res.send(new Response( 'false', results , answers));
        }
    }
}
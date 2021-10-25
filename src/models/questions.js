const sequelize = require('../controllers/index');

async function findQuestion(req){
    let questions = await sequelize.query(
        `SELECT * FROM ${req.body.table} WHERE id = :id`,
        {
            replacements: { 
                id: req.body.id
            },
            type:sequelize.QueryTypes.SELECT
        }
    );
    console.log(questions);
    return questions;
}

async function getAnswers(req){
    let ansNumber = req.body.table.substring(3,4)
    let questions = await sequelize.query(
        `SELECT * FROM ans${ansNumber} WHERE question_id = :id`,
        {
            replacements: { 
                id: req.body.id
            },
            type:sequelize.QueryTypes.SELECT
        }
    );
    console.log(questions);
    return questions;
}

module.exports = {
    findQuestion,
    getAnswers
}
const Sequelize = require('sequelize');
const {config} = require('../../config');
const sequelize = new Sequelize(config.database, config.username, config.password, {
    host: config.host,
    dialect: config.dialect,
    pool:{
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    }
});

try {
    sequelize.authenticate();
    console.log('Connection has been established successfully.');
} catch (error) {
    console.error('Unable to connect to the database:', error);
}

module.exports = sequelize;
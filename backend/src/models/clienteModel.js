const db = require ('../db');

const ClienteModel = {
    findAll: async () => {
        const [rows] = await db.promise().query('SELECT * FROM cliente');
        return rows;
    }
}

module.exports = ClienteModel;
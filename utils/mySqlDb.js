const mysql = require("mysql2");

const poolConnDb = mysql.createPool({
  host: "localhost",
  user: "root",
  database: "peritool",
  password: "(removed)",
});

module.exports = poolConnDb.promise();

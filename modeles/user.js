const db = require("../utils/mySqlDb");

/*************************************************************************
 * Return the info of a user
 *  userID: int, the user ID
 *  Return: Promise
 *  Fields return when query succeed:
 *  - idUser, email, displayName, firstName, lastName
 */
exports.getUserInfoFromDB = (userID) => {
  const sqlQuery = `SELECT
        idUser, email, displayName, firstName, lastName
      FROM
        users
      WHERE
        idUser = ${userID}
      LIMIT 1`;

  return db.execute(sqlQuery);
};

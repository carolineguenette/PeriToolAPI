const db = require("../utils/mySqlDb");

/*************************************************************************
 * Get the list of delivery Roles (for a DropDown Menu by example)
 */
exports.getDeliveryRolesFromDB = () => {
  const sqlQuery = `SELECT name_fr AS label FROM _deliveryRoles ORDER BY orderBy_fr;`;
  return db.execute(sqlQuery);
};

exports.getBloodGroupsFromDB = () => {
  const sqlQuery = `SELECT name_fr AS label FROM _bloodGroups ORDER BY orderBy_fr;`;
  return db.execute(sqlQuery);
};

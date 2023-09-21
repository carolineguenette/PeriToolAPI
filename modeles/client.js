const db = require("../utils/mySqlDb");

/*************************************************************************
 * Get the list of active pregnant clients for a given user, order by DPA
 *   userID: int, the given user
 */
exports.getActivePregnantClientsFromDB = (userID) => {
  const sqlQuery = `SELECT 
  clients.idClient, clients.firstName, clients.lastName, clients.partnerName,
  pregnancies.dpa, pregnancies.gravida, pregnancies.para, pregnancies.aborta, pregnancies.isAVAC,
  pregnancies.careResponsibleID, careResponsible.displayName AS careResponsibleName,
  tracking.isMark
FROM
  tracking
      INNER JOIN pregnancies ON tracking.pregnancyID = pregnancies.idPregnancy
      INNER JOIN clients ON pregnancies.clientID = clients.idClient
      INNER JOIN users AS careResponsible ON pregnancies.careResponsibleID = careResponsible.idUser
      INNER JOIN users ON tracking.userID = users.idUser
WHERE
  pregnancies.isArchived = false AND pregnancies.gaveBirth = false AND clients.etablishmentID = users.etablishmentID
      AND tracking.userID = ${userID} 
ORDER BY 
  pregnancies.dpa ASC;`;

  return db.execute(sqlQuery);
};

/*************************************************************************
 * Return a Promise of active clients in POSTNATAL for a given user
 *   userID: int, the given user
 */
exports.getActivePostnatalClientsFromDB = (userID) => {
  const sqlQuery = `SELECT 
  clients.idClient, clients.firstName, clients.lastName, clients.partnerName,
  pregnancies.deliveryDate,
  pregnancies.careResponsibleID, careResponsible.displayName AS careResponsibleName,
  tracking.isMark
FROM
  tracking
      INNER JOIN pregnancies ON tracking.pregnancyID = pregnancies.idPregnancy
      INNER JOIN clients ON pregnancies.clientID = clients.idClient
      INNER JOIN users AS careResponsible ON pregnancies.careResponsibleID = careResponsible.idUser
      INNER JOIN users ON users.idUser = tracking.userID
WHERE
  pregnancies.isArchived = false AND pregnancies.gaveBirth = true AND clients.etablishmentID = users.etablishmentID
      AND tracking.userID = ${userID}
ORDER BY pregnancies.deliveryDate DESC`;

  return db.execute(sqlQuery);
};

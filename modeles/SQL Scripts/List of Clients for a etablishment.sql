USE peritool;

/*List of Clients for the Etablishment*/
SELECT 
    clients.idClient, clients.firstName, clients.lastName, clients.partnerName,
    pregnancies.DPA, pregnancies.gravida, pregnancies.para, pregnancies.aborta, pregnancies.isAVAC,
    pregnancies.careResponsibleID, users.displayName AS careResponsible, 
    marksClientByUser.isMark as markStatus
FROM
    pregnancies
        INNER JOIN
    clients ON pregnancies.clientID = clients.idClient
		INNER JOIN
	users ON pregnancies.careResponsibleID = users.idUser
		LEFT JOIN
	marksClientByUser ON (marksClientByUser.userID = users.idUser AND marksClientByUser.pregnancyID = pregnancies.idPregnancy)
WHERE
   clients.etablishmentID = 1 
USE peritool;

/*PARAMS*/
SET @intUserID = 1;

/*List of Active PREGNANT Clients for an user*/
SELECT 
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
        AND tracking.userID = @intUserID 
ORDER BY 
	pregnancies.dpa ASC;
        
/*List of Active Clients in POSTNATAL for an user*/
SELECT 
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
        AND tracking.userID = @intUserID 
ORDER BY pregnancies.deliveryDate DESC;
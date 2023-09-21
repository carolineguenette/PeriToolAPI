USE peritool;

/*PARAMS*/
SET @strFirstName = 'Carmen';
SET @strLastName = 'Del Amos';
SET @strPartnerName = 'Jose';
SET @intEtablishmentID = 2;
SET @intCreatedByUserID = 1;

SET @intCareResponsibleID = 1;
SET @dateDPA = '2023-09-02';
SET @intGravida = 3;
SET @intPara = 2;
SET @intAborta = 0;

/*Create a new client and pregnancy*/
INSERT INTO clients ( firstName, lastName, partnerName, etablishmentID, createdByID, creationDate)
VALUES (@strFirstName, @strLastName, @strPartnerName, @intEtablishmentID, @intCreatedByUserID, NOW() );

INSERT INTO pregnancies (clientID, careResponsibleID, dpa, gravida, para, aborta, createdByID, creationDate)
VALUES (LAST_INSERT_ID(), @intCareResponsibleID, @dateDPA, @intGravida, @intPara, @intAborta, @intCreatedByUserID, NOW() );

INSERT INTO tracking(pregnancyID, userID)
VALUES (LAST_INSERT_ID(), @intCreatedByUserID);
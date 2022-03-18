-- CONNECTION
insert into connection
values (1);
insert into connection
values (2);
insert into connection
values (3);
insert into connection
values (4);

-- UTILISATEUR
insert into UTILISATEUR
(adresse, codepostal, mobile, adressemail, motdepasse,
 infopartenaire, idconnection, biographie)
values ('105 Avn Nice', '06000', '0601020304', 'test@test.com',
        '123456789azerty', 1, 1, 'Bonjour je m appel test');

insert into UTILISATEUR
(adresse, codepostal, mobile, adressemail, motdepasse,
 infopartenaire, idconnection, biographie, solde, TOTALVENTE, TOTALACHAT,
 NBRDEMANDES, DELAYMOYENREPONSE, TAUXREPONSE, NBRAVISTOTAL, ABONNEMENT)
values ('105 Avn Paris', '83000', '0602020304', 'test2@test.com',
        '123456789', 0, 2, 'Bonjour je m appel test2', 156.0,
        50, 20, 10, 10, 59.6, 0, 1);

insert into UTILISATEUR
(adresse, codepostal, mobile, adressemail, motdepasse,
 infopartenaire, idconnection, biographie, solde, TOTALVENTE, TOTALACHAT,
 NBRDEMANDES, DELAYMOYENREPONSE, TAUXREPONSE, NBRAVISTOTAL, MOYENNENOTES, ABONNEMENT)
values ('105 Avn jesaispas', '99000', '0600003040', 'test3@test.com',
        '1234', 1, 3, 'Bonjour je m appel test3', 1000.0,
        259, 100, 20, 3600, 20.6, 2, 3.5, 0);

insert into UTILISATEUR
(adresse, codepostal, mobile, adressemail, motdepasse,
 infopartenaire, idconnection, biographie, solde, TOTALVENTE, TOTALACHAT,
 NBRDEMANDES, DELAYMOYENREPONSE, TAUXREPONSE, NBRAVISTOTAL)
values ('105 Avn jesaistoujourspas', '99999', '0600000040', 'test4@test.com',
        '123456evrfe', 0, 4, 'Bonjour je m appel test4', 261.98,
        0, 100, 20, 3600, 20.6, 0);

--AVIS
INSERT INTO AVIS(avisutilisateur, idutilisateur, NOTEUTILISATEUR)
VALUES ('Super commercant !', 3, 4);
INSERT INTO AVIS(avisutilisateur, idutilisateur, NOTEUTILISATEUR)
VALUES ('Peut mieux faire', 3, 2);

--UTILISATEUR PARTICULIER
insert into UTILISATEURPARTICULIER(IDUTILISATEURPARTICULIER, NOM, PRENOM)
values (1, 'Tokyo', 'David');

--UTILISATEUR ENTREPRISE
insert into utilisateurEntreprise(idutilisateurentreprise, nomcommercial, metier)
values (2, 'Bader', 'Ouvrier');

--UTILISATEUR ENTREPRENEUR
insert into UTILISATEURENTREPRENEUR(idutilisateurentrepreneur,
                                    nom, prenom, nomcommercial,
                                    metier)
values (3, 'Pierre', 'lack', 'PierreLack', 'Ouvrier');

--UTILISATEUR ASSOCIATION
insert into UTILISATEURASSOCIATION(idUtilisateurAssociation,
                                   nom, prenom, nomcommercial)
values (4, 'michel', 'farmer', 'Fermier Pour Toujours');

--ADMINISTRATEUR
INSERT INTO ADMINISTRATEUR
VALUES (1);

--VENDEUR
insert into vendeur
values (1);
insert into vendeur
values (2);
insert into vendeur
values (3);
insert into vendeur
values (4);

--CLIENTS
insert into CLIENTS
values (2);
insert into CLIENTS
values (3);

--PLANNING
insert into PLANNING(date_heure, idVendeur)
values (TO_DATE('2018-01-15 07:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2);
insert into PLANNING(date_heure, idVendeur)
values (TO_DATE('2018-01-16 06:30:00', 'yyyy/mm/dd hh24:mi:ss'), 3);

--RESERVATION
INSERT INTO RESERVATION(libre, idplanning, idclient)
VALUES (1, 2, 2);

--CATEGORIE
INSERT INTO CATEGORIE(NOM)
VALUES ('Outillage');

INSERT INTO CATEGORIE(NOM)
VALUES ('Jardinage');

INSERT INTO CATEGORIE(NOM)
VALUES ('Bricolage');

--LOCALISATION
INSERT INTO LOCALISATION(adresse, codepostal, ville)
VALUES ('156 Paris', '93000', 'Paris');

INSERT INTO LOCALISATION(adresse, codepostal, ville)
VALUES ('180 Nice', '06000', 'Nice');

--BIEN
INSERT INTO BIEN(locationEmprunt, nom, prix, description,
                 idlocalisation,
                 idplanning, idvendeur, idcategorie)
VALUES ('LOCATION', 'marteau', 5.0, 'Marteau pour clouer',
        1, 2, 2, 3);

--SERVICES
INSERT INTO SERVICES(nom, prix, description,
                     idlocalisation, idplanning, idvendeur,
                     idcategorie)
VALUES ('remplaçage chaudière', 10.0, 'Remplacage d une chaudière',
        2, 1, 3, 3);

--DEMANDE
INSERT INTO DEMANDE(description, prixmax, idutilisateur)
VALUES ('Cherche chauffeur pour aller travailler', 20, 1);

--PUBLICITE
INSERT INTO PUBLICITE(description, idadministrateur)
VALUES ('Venez acheter notre tout dernier marteau dernière génération',
        1);

--FAVORIS
INSERT INTO FAVORIS(idclient, idvendeur)
VALUES (2, 3);
SELECT Duree from Effectuer,Trajet Where Voiture='ZG 0001 A' AND Depart='Ziguinchor' AND Arrivee='Tamba' And Trajet=Numero;
SELECT Numero,Nom,Prenom from conduire,voiture,conducteur where Matricule='ZG 0001 A' AND voiture=Matricule AND conducteur=Numero;


SELECT c.Numero,c.Nom,c.Prenom
from conducteur c,conduire co ,Effectuer e ,Trajet t 
where  e.Trajet=t.Numero and c.Numero=co.conducteur 
and co.voiture=e.voiture
 and e.Dates=co.Dates and co.Heure=e.Heure
and t.Depart='Ziguinchor' AND t.Arrivee='Kaolack';

SELECT c1.* from conducteur c1,(Select c.Numero from conducteur c where c.Numero not in(
Select d.Conducteur from conduire d))  R where  R.Numero=c1.Numero;

SELECT v.* from voiture v, (Select v1.Matricule from voiture v1 where v1.Matricule not in(
    Select E.voiture from Effectuer E)) as R where R.Matricule=v.Matricule;

Select T.* from Trajet T where T.Longueur=(Select Max(T1.Longueur) from Trajet T1);

Select count(*) as Nb_fois from conducteur c ,conduire co where c.Nom='SECK' and c.Prenom='Aissatou' and co.Voiture='ZG 0001 A' and c.Numero=co.conducteur;

Select Avg(Duree) as moy from Effectuer e ,Trajet t where  e.Trajet=t.Numero and (t.Depart="Ziguinchor" and t.Arrivee="Tamba") or (t.Depart="Tamba" and t.Arrivee="Ziguinchor");

ALTER TABLE Etichetta_Campione ADD COLUMN Data_incasso timestamp without time zone null;
ALTER TABLE Anagrafica ADD COLUMN Codice_destinatario character varying(7) null;
ALTER TABLE Anagrafica ADD COLUMN PEC character varying(200) null;
ALTER TABLE Dati_fattura ADD COLUMN Codice_destinatario character varying(7) null;
ALTER TABLE Dati_fattura ADD COLUMN PEC character varying(200) null;


CREATE TABLE preventivi 
    ( 
     id_preventivi     NUMERIC (9)  NOT NULL , 
     numero_preventivo character varying (20)  NOT NULL , 
     codice_fiscale    character varying (16)  NOT NULL , 
     importo           NUMERIC  NOT NULL , 
     note_aggiuntive   character varying (4000) ,
	 CONSTRAINT pk_preventivi PRIMARY KEY (id_preventivi)
    )
;

GRANT ALL ON preventivi TO agrichim_rw;

CREATE SEQUENCE id_preventivi
  INCREMENT 1
  MINVALUE 1
  START 1
  CACHE 1;
  
GRANT ALL ON id_preventivi TO agrichim_rw;  


alter TABLE etichetta_campione add id_preventivi    NUMERIC(9) NULL;

ALTER TABLE etichetta_campione
ADD CONSTRAINT fk_preventivi_01 FOREIGN KEY (id_preventivi) 
REFERENCES preventivi (id_preventivi);


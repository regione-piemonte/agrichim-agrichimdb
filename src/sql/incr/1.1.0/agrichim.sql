create table codice_misura_psr
(
	codice_misura_psr    numeric not null,
	descrizione_misura_psr character varying(200) not null,
	motivo_obbligatorio  character varying(1) not null,
	data_inizio_validita timestamp without time zone not null,
	data_fine_validita   timestamp without time zone null,
	ordinamento numeric not null,
	CONSTRAINT pk_codice_misura_psr PRIMARY KEY (codice_misura_psr)
);

comment on table codice_misura_psr is 'Contiene l''elenco degli adempimenti previsti da misure PSR per cui l''analisi puo'' essere richiesta';
COMMENT ON COLUMN codice_misura_psr.descrizione_misura_psr IS 'descrizione dell''adempimento';
COMMENT ON COLUMN codice_misura_psr.motivo_obbligatorio IS 'indica se e'' obbligatorio motivare la scelta dell''adempimento';

GRANT ALL ON codice_misura_psr TO agrichim_rw;

ALTER TABLE Etichetta_Campione ADD COLUMN CODICE_MISURA_PSR NUMERIC NULL;
ALTER TABLE Etichetta_Campione ADD COLUMN NOTE_MISURA_PSR character varying(500) NULL;

COMMENT ON COLUMN Etichetta_Campione.NOTE_MISURA_PSR IS 'indica la motivazione della scelta dell''adempimento della misura PSR';

ALTER TABLE Etichetta_Campione ADD CONSTRAINT FK_CODICE_MISURA_PSR_01 FOREIGN KEY (CODICE_MISURA_PSR)    REFERENCES CODICE_MISURA_PSR (CODICE_MISURA_PSR);

ALTER TABLE campione_fatturato RENAME TO tmp_campione_fatturato;

CREATE SEQUENCE id_campione_fatturato
  INCREMENT 1
  MINVALUE 1
  START 1
  CACHE 1;
ALTER TABLE id_campione_fatturato OWNER TO agrichim;
GRANT ALL ON TABLE id_campione_fatturato TO agrichim;
GRANT ALL ON TABLE id_campione_fatturato TO agrichim_rw;

CREATE TABLE campione_fatturato
(
  id_campione_fatturato numeric(10,0) NOT NULL,
  id_richiesta numeric(9,0) NULL,
  anno numeric(4,0) NOT NULL, -- Anno di emissione in base all'anno di sistema
  numero_fattura numeric(5,0) NOT NULL, -- Numero progressivo nell'ambito dell'anno. Ad anno nuovo si ricomincia da 1.
  importo_imponibile numeric(6,2), -- Per ogni campione viene calcolato l'importo imponibile scorporando l'IVA (vedere parametro) dall'importo contenuto nella tabella "Costo analisi" sommando tutti gli importi di dettaglio riferiti alla stessa richiesta
  importo_iva numeric(6,2), -- All'imponibile viene applicata l'IVA (vedere parametro)
  CONSTRAINT pk_campione_fatturato PRIMARY KEY (id_campione_fatturato)
  USING INDEX TABLESPACE agrichim_tbl,
  CONSTRAINT fk_Dati_Fattura_01 FOREIGN KEY (id_richiesta)
      REFERENCES dati_fattura (id_richiesta) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_Fattura_01 FOREIGN KEY (anno, numero_fattura)
      REFERENCES fattura (anno, numero_fattura) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
)
TABLESPACE agrichim_tbl;
ALTER TABLE campione_fatturato
  OWNER TO agrichim;
GRANT ALL ON TABLE campione_fatturato TO agrichim;
GRANT ALL ON TABLE campione_fatturato TO agrichim_rw;
COMMENT ON TABLE campione_fatturato  IS 'Ogni fattura puo essere riferita a piu campioni, che avranno pero tutti gli stessi estremi di intestazione della fattura';
COMMENT ON COLUMN campione_fatturato.anno IS 'Anno di emissione in base all''anno di sistema';
COMMENT ON COLUMN campione_fatturato.numero_fattura IS 'Numero progressivo nell''ambito dell''anno. Ad anno nuovo si ricomincia da 1.';
COMMENT ON COLUMN campione_fatturato.importo_imponibile IS 'Per ogni campione viene calcolato l''importo imponibile scorporando l''IVA (vedere parametro) dall''importo contenuto nella tabella "Costo analisi" sommando tutti gli importi di dettaglio riferiti alla stessa richiesta';
COMMENT ON COLUMN campione_fatturato.importo_iva IS 'All''imponibile viene applicata l''IVA (vedere parametro)';

CREATE UNIQUE INDEX AK1_Campione_fatturato ON campione_fatturato (ANNO, NUMERO_FATTURA ,ID_RICHIESTA);

insert into campione_fatturato
(id_campione_fatturato,id_richiesta,anno,numero_fattura,importo_imponibile,importo_iva)
(select nextval('id_campione_fatturato'),id_richiesta,anno,numero_fattura,importo_imponibile,importo_iva
 from tmp_campione_fatturato);

ALTER TABLE Fattura ADD COLUMN DESCRIZIONE  character varying(200) NULL;

CREATE TABLE METALLI_PESANTI
(
	Id_Richiesta         NUMERIC(9) NOT NULL,
	FERRO_TOTALE         NUMERIC(9,3) NULL,
	MANGANESE_TOTALE     NUMERIC(9,3) NULL,
	ZINCO_TOTALE         NUMERIC(9,3) NULL,
	RAME_TOTALE          NUMERIC(9,3) NULL,
	PIOMBO_TOTALE        NUMERIC(9,3) NULL,
	CROMO_TOTALE         NUMERIC(9,3) NULL,
	BORO_TOTALE          NUMERIC(9,3) NULL,
	NICHEL_TOTALE        NUMERIC(9,3) NULL,
	CADMIO_TOTALE        NUMERIC(9,3) NULL,
	STRONZIO_TOTALE      NUMERIC(9,3) NULL,
	ALTRO_METALLO_TOTALE NUMERIC(9,3) NULL,
	CONSTRAINT pk_METALLI_PESANTI PRIMARY KEY (Id_Richiesta)
  USING INDEX TABLESPACE agrichim_tbl,
  CONSTRAINT fk_Etichetta_Campione_01 FOREIGN KEY (Id_Richiesta)
      REFERENCES Etichetta_Campione (id_richiesta) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
)
TABLESPACE agrichim_tbl;
ALTER TABLE METALLI_PESANTI
  OWNER TO agrichim;
GRANT ALL ON TABLE METALLI_PESANTI TO agrichim;
GRANT ALL ON TABLE METALLI_PESANTI TO agrichim_rw;

comment on column metalli_pesanti.FERRO_TOTALE         is 'campo di input (unita di misura p.p.m.)';
comment on column metalli_pesanti.MANGANESE_TOTALE     is 'campo di input (unita di misura p.p.m.)';
comment on column metalli_pesanti.ZINCO_TOTALE         is 'campo di input (unita di misura p.p.m.)';
comment on column metalli_pesanti.RAME_TOTALE          is 'campo di input (unita di misura p.p.m.)';
comment on column metalli_pesanti.PIOMBO_TOTALE        is 'campo di input (unita di misura p.p.m.)';
comment on column metalli_pesanti.CROMO_TOTALE         is 'campo di input (unita di misura p.p.m.)';
comment on column metalli_pesanti.BORO_TOTALE          is 'campo di input (unita di misura p.p.m.)';
comment on column metalli_pesanti.NICHEL_TOTALE        is 'campo di input (unita di misura p.p.m.)';
comment on column metalli_pesanti.CADMIO_TOTALE        is 'campo di input (unita di misura p.p.m.)';
comment on column metalli_pesanti.STRONZIO_TOTALE      is 'campo di input (unita di misura p.p.m.)';
comment on column metalli_pesanti.ALTRO_METALLO_TOTALE is 'campo di input (unita di misura p.p.m.)';

ALTER TABLE PARAMETRO ADD COLUMN VALORE_B bytea NULL;
ALTER TABLE parametro ALTER COLUMN valore DROP NOT NULL;
ALTER TABLE parametro ALTER COLUMN descrizione SET NOT NULL;

INSERT INTO parametro
(
  id_parametro,
  descrizione
)
VALUES
(
  'SIPW',
  'Password sigmater'
);
INSERT INTO parametro
(
  id_parametro,
  valore,
  descrizione
)
VALUES
(
  'SIUS',
  'User sigmater'
);

UPDATE parametro
   SET valore = 'APPL_TEST'
WHERE id_parametro = 'SIUS';

update parametro
set valore_b=pgp_sym_encrypt('test', '##agrc_sigmater++')
where id_parametro = 'SIPW';

create table tipo_coordinate_gradi
(
	Codice character varying(5) not null,
	descrizione character varying(40) not null,
	CONSTRAINT pk_tipo_coordinate_gradi PRIMARY KEY (Codice)
);

GRANT ALL ON tipo_coordinate_gradi TO agrichim_rw;

ALTER TABLE Dati_appezzamento ADD COLUMN codice_coordinate_gradi character varying(5) NULL;
ALTER TABLE Dati_appezzamento ADD COLUMN COORDINATA_NORD_GRADI NUMERIC(10,6) NULL;
ALTER TABLE Dati_appezzamento ADD COLUMN COORDINATA_NORD_MINUTI NUMERIC(10,6) NULL;
ALTER TABLE Dati_appezzamento ADD COLUMN COORDINATA_NORD_SECONDI NUMERIC(10,6) NULL;
ALTER TABLE Dati_appezzamento ADD COLUMN COORDINATA_EST_GRADI NUMERIC(10,6) NULL;
ALTER TABLE Dati_appezzamento ADD COLUMN COORDINATA_EST_MINUTI NUMERIC(10,6) NULL;
ALTER TABLE Dati_appezzamento ADD COLUMN COORDINATA_EST_SECONDI NUMERIC(10,6) NULL;

ALTER TABLE Dati_appezzamento ADD CONSTRAINT FK_TIPO_COORDINATE_GRADI_01 FOREIGN KEY (codice_coordinate_gradi) REFERENCES tipo_coordinate_gradi (CODICE);

comment on column Dati_appezzamento.COORDINATA_NORD_GRADI IS 'Indica i gradi della coordinata nord (latitudine). Possono essere decimali';
comment on column Dati_appezzamento.COORDINATA_NORD_MINUTI IS 'Indica i minuti della coordinata nord (latitudine). Possono essere decimali';
comment on column Dati_appezzamento.COORDINATA_NORD_SECONDI IS 'Indica i secondi della coordinata nord (latitudine). Possono essere decimali';
comment on column Dati_appezzamento.COORDINATA_EST_GRADI IS 'Indica i gradi della coordinata est (longitudine). Possono essere decimali';
comment on column Dati_appezzamento.COORDINATA_EST_MINUTI IS 'Indica i minuti della coordinata est (longitudine). Possono essere decimali';
comment on column Dati_appezzamento.COORDINATA_EST_SECONDI IS 'Indica i secondi della coordinata est (longitudine). Possono essere decimali';

comment on column Dati_appezzamento.codice_coordinate_gradi IS 'Indica il tipo di cooordinate in gradi indicato dall''utente. Valori possibili: DD - gradi decimali, DM - gradi minuti decimali, DMS - gradi minuti secondi';

ALTER TABLE LABORATORIO ADD COLUMN DATA_INIZIO_VALIDITA timestamp without time zone null;
ALTER TABLE LABORATORIO ADD COLUMN DATA_FINE_VALIDITA timestamp without time zone null;

update LABORATORIO set DATA_INIZIO_VALIDITA = '2003-01-01 00:00:00';

ALTER TABLE LABORATORIO ALTER COLUMN DATA_INIZIO_VALIDITA SET NOT NULL;

ALTER TABLE TIPI_DI_ANALISI ADD COLUMN DATA_CESSAZIONE timestamp without time zone null; 
ALTER TABLE TIPI_DI_ANALISI ADD COLUMN FLAG_METALLI_PESANTI character varying(1) NULL;

update TIPI_DI_ANALISI set FLAG_METALLI_PESANTI = 'N';
ALTER TABLE TIPI_DI_ANALISI ALTER COLUMN FLAG_METALLI_PESANTI SET NOT NULL;

comment on column TIPI_DI_ANALISI.DATA_CESSAZIONE IS 'Indica se un''analisi non e'' piu'' attiva';
comment on column TIPI_DI_ANALISI.FLAG_METALLI_PESANTI IS 'Indica se il tipo di analisi fa parte del gruppo dei metalli pesanti';

CREATE TABLE WRK_CALCOLO_UTM
(
	ID_CALCOLO_UTM       SERIAL NOT NULL,
	Id_Richiesta         NUMERIC(9) NULL,
	Codice_ISTAT         character varying(6) NOT NULL,
	SEZIONE              character varying(30) NULL,
	FOGLIO               NUMERIC(5) NOT NULL,
	PARTICELLA           NUMERIC(5) NOT NULL,
	COORDINATA_NORD_UTM  NUMERIC(7) NULL,
	COORDINATA_EST_UTM   NUMERIC(7) NULL,
	DATA_ELABORAZIONE    timestamp without time zone NULL,
	ESITO_ELABORAZIONE   character(1) NULL,
	COD_ERR              character varying(100) NULL,
	MSG_ERR              character varying(500) NULL,
	NOTE                 character varying(500) NULL,
	CONSTRAINT pk_WRK_CALCOLO_UTM PRIMARY KEY (ID_CALCOLO_UTM)
	USING INDEX TABLESPACE agrichim_tbl,
  CONSTRAINT fk_Etichetta_Campione_01 FOREIGN KEY (id_richiesta)
      REFERENCES Etichetta_Campione (id_richiesta) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_Comune_01 FOREIGN KEY (Codice_ISTAT)
      REFERENCES Comune (Codice_ISTAT) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE
);

comment on table WRK_CALCOLO_UTM is 'contiene le particelle per cui viene effettuato il calcolo delle coordinate UTM del centroide';
comment on column wrk_calcolo_utm.ID_RICHIESTA is 'Indica la richiesta di analisi collegata alla particella';
comment on column wrk_calcolo_utm.Codice_ISTAT is 'Indica l''istat del comune della particella';
comment on column wrk_calcolo_utm.SEZIONE is 'Indica la sezione della particella';
comment on column wrk_calcolo_utm.FOGLIO is 'Indica il foglio della particella';
comment on column wrk_calcolo_utm.PARTICELLA is 'Indica il numero della particella';
comment on column wrk_calcolo_utm.COORDINATA_NORD_UTM is 'Indica la coordinata nord calcolata';
comment on column wrk_calcolo_utm.COORDINATA_EST_UTM is 'Indica la coordinata nord calcolata';
comment on column wrk_calcolo_utm.DATA_ELABORAZIONE is 'Indica la data alla quale e'' stato calcolato il centroide';
comment on column wrk_calcolo_utm.ESITO_ELABORAZIONE is 'Indica l''esito dell''elaborazione, valori possibili 0 esito OK, 1 esito KO';
comment on column wrk_calcolo_utm.COD_ERR is 'Valorizzato in caso di errore di elaborazione, puo'' contenere il codice di errore sql o il return code di un servizio';
comment on column wrk_calcolo_utm.MSG_ERR is 'Valorizzato in caso di errore di elaborazione, puo'' contenere un messaggio di errore restituito da un servizio o altro';
comment on column wrk_calcolo_utm.NOTE is 'Eventuali note all''elaborazione';

GRANT ALL ON WRK_CALCOLO_UTM TO agrichim_rw;

CREATE TABLE WRK_APPLICAZIONE_BATCH
(
	ID_APPLICAZIONE_BATCH SERIAL NOT NULL,
	CODICE_APPLICAZIONE  character varying(20) NOT NULL,
	DESCRIZIONE_APPLICAZIONE character varying(200) NOT NULL,
	CODICE_VERIFICA_ELAB character varying(20) NULL,
	ELABORAZIONE_IN_CORSO character(1) NOT NULL,
	CONSTRAINT pk_WRK_APPLICAZIONE_BATCH PRIMARY KEY (ID_APPLICAZIONE_BATCH)
	USING INDEX TABLESPACE agrichim_tbl
);

GRANT ALL ON WRK_APPLICAZIONE_BATCH TO agrichim_rw;

COMMENT ON COLUMN WRK_APPLICAZIONE_BATCH.CODICE_APPLICAZIONE IS 'Codice del processo batch';
COMMENT ON COLUMN WRK_APPLICAZIONE_BATCH.CODICE_VERIFICA_ELAB IS 'Codice di verifica per l''esecuzione dell''applicazione';
COMMENT ON COLUMN WRK_APPLICAZIONE_BATCH.ELABORAZIONE_IN_CORSO IS 'Indica se sul sistema E'' in corso un''elaborazione del processo batch. Valori possibili N nessuna elaborazione in corso, S elaborazione in corso';

CREATE UNIQUE INDEX AK_WRK_APPLICAZIONE_BATCH ON WRK_APPLICAZIONE_BATCH (CODICE_APPLICAZIONE);

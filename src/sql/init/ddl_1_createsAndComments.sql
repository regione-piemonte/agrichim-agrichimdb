
CREATE TABLE CLASSE_COLTURA
(
  ID_COLTURA   NUMERIC(9)                        NOT NULL,
  DESCRIZIONE  VARCHAR(40)
) ;

CREATE TABLE CLASSE_COLTURA_OLD
(
  ID_COLTURA   NUMERIC(9)                        NOT NULL,
  DESCRIZIONE  VARCHAR(40)
) ;


CREATE TABLE CODIFICA_TRACCIABILITA
(
  CODICE       VARCHAR(2)                      NOT NULL,
  DESCRIZIONE  VARCHAR(40)
) ;


CREATE TABLE CONCIMAZIONE_ORGANICA
(
  TIPO_CONCIMAZIONE  VARCHAR(1)                NOT NULL,
  DESCRIZIONE        VARCHAR(40)
) ;


CREATE TABLE CONCIME
(
  ID_CONCIME   NUMERIC(9)                        NOT NULL,
  DESCRIZIONE  VARCHAR(40)
) ;



CREATE TABLE ESPOSIZIONE
(
  ID_ESPOSIZIONE  VARCHAR(3)                   NOT NULL,
  DESCRIZIONE     VARCHAR(40)
) ;




CREATE TABLE FATTURA
(
  ANNO                NUMERIC(4)                 NOT NULL,
  NUMERO_FATTURA      NUMERIC(5)                 NOT NULL,
  DATA_FATTURA        TIMESTAMP,
  PAGATA              VARCHAR(1),
  ANNULLATA           VARCHAR(1),
  PARTITA_IVA_O_CF    VARCHAR(16),
  RAGIONE_SOCIALE     VARCHAR(101),
  INDIRIZZO           VARCHAR(40),
  CAP                 VARCHAR(5),
  COMUNE              VARCHAR(40),
  SIGLA_PROVINCIA     VARCHAR(2),
  IMPORTO_SPEDIZIONE  NUMERIC(5,2)
) ;





CREATE TABLE FIRMA
(
  ID_FIRMA          NUMERIC                      NOT NULL,
  TITOLO_ONORIFICO  VARCHAR(20),
  COGNOME           VARCHAR(30),
  NOME              VARCHAR(30),
  FIRMA             BYTEA
) ;


CREATE TABLE IRRIGAZIONE
(
  ID_IRRIGAZIONE  NUMERIC(9)                     NOT NULL,
  DESCRIZIONE     VARCHAR(40)
) ;



CREATE TABLE LAVORAZIONE_TERRENO
(
  ID_LAVORAZIONE_TERRENO  NUMERIC(9)             NOT NULL,
  DESCRIZIONE             VARCHAR(40)
) ;



CREATE TABLE MATERIALE
(
  CODICE_MATERIALE  VARCHAR(3)                 NOT NULL,
  DESCRIZIONE       VARCHAR(40)
) ;


CREATE TABLE MODALITA_COLTIVAZIONE
(
  CODICE_MODALITA_COLTIVAZIONE  VARCHAR(1)     NOT NULL,
  DESCRIZIONE                   VARCHAR(40)
) ;






CREATE TABLE MODALITA_DI_CONSEGNA
(
  CODICE_MODALITA  VARCHAR(1)                  NOT NULL,
  DESCRIZIONE      VARCHAR(40)
) ;



CREATE TABLE PARAMETRI_FATTURE
(
  ANNO_FATTURA_AGRICHIM    NUMERIC(4),
  ULTIMA_FATTURA_AGRICHIM  NUMERIC(5),
  COSTO_DI_SPEDIZIONE      NUMERIC(5,2)
) ;



CREATE TABLE PARAMETRO
(
  ID_PARAMETRO  CHAR(4)                         NOT NULL,
  VALORE        VARCHAR(1000)                  NOT NULL,
  DESCRIZIONE   VARCHAR(250)
) ;




CREATE TABLE PORTA_INNESTO_OLD
(
  ID_INNESTO   NUMERIC(9)                        NOT NULL,
  ID_SPECIE    NUMERIC(9),
  DESCRIZIONE  VARCHAR(40)
) ;




CREATE TABLE PRODUTTIVITA
(
  CODICE_PRODUTTIVITA  VARCHAR(1)              NOT NULL,
  DESCRIZIONE          VARCHAR(40)
) ;




CREATE TABLE PROFONDITA_PRELIEVO
(
  ID_PROFONDITA  NUMERIC(9)                      NOT NULL,
  DESCRIZIONE    VARCHAR(40)
) ;




CREATE TABLE REGIONE
(
  ID_REGIONE   VARCHAR(2)                      NOT NULL,
  DESCRIZIONE  VARCHAR(30)                     NOT NULL
) ;




CREATE TABLE SISTEMA_ALLEVAMENTO_OLD
(
  ID_SISTEMA_ALLEVAMENTO  NUMERIC(9)             NOT NULL,
  ID_SPECIE               NUMERIC(9),
  DESCRIZIONE             VARCHAR(40)
) ;


CREATE TABLE SPECIE_COLTURA
(
  ID_SPECIE     NUMERIC(9)                       NOT NULL,
  ID_COLTURA    NUMERIC(9),
  DESCRIZIONE   VARCHAR(40),
  TIPO_COLTURA  VARCHAR(1),
  ASPORTI_N     NUMERIC(5,3),
  ASPORTI_P     NUMERIC(5,3),
  ASPORTI_K     NUMERIC(5,3),
  MAX_N         NUMERIC(5),
  MIN_N         NUMERIC(5),
  MAX_P         NUMERIC(5),
  MIN_P         NUMERIC(5),
  MAX_K         NUMERIC(5),
  MIN_K         NUMERIC(5)
) ;


CREATE TABLE SPECIE_COLTURA_OLD
(
  ID_SPECIE     NUMERIC(9)                       NOT NULL,
  ID_COLTURA    NUMERIC(9),
  DESCRIZIONE   VARCHAR(40),
  TIPO_COLTURA  VARCHAR(1),
  ASPORTI_N     NUMERIC(5,3),
  ASPORTI_P     NUMERIC(5,3),
  ASPORTI_K     NUMERIC(5,3),
  MAX_N         NUMERIC(5),
  MIN_N         NUMERIC(5),
  MAX_P         NUMERIC(5),
  MIN_P         NUMERIC(5),
  MAX_K         NUMERIC(5),
  MIN_K         NUMERIC(5)
) ;




CREATE TABLE STADIO_FENOLOGICO
(
  ID_STADIO_FENOLOGICO  NUMERIC(9)               NOT NULL,
  CODICE_MATERIALE      VARCHAR(3),
  DESCRIZIONE           VARCHAR(40)
) ;



CREATE TABLE STADIO_FENOLOGICO_OLD
(
  ID_STADIO_FENOLOGICO  NUMERIC(9)               NOT NULL,
  CODICE_MATERIALE      VARCHAR(3),
  DESCRIZIONE           VARCHAR(40)
) ;

CREATE TABLE SUPERFICIE
(
  ID_SUPERFICIE  NUMERIC(9)                      NOT NULL,
  DESCRIZIONE    VARCHAR(40)
) ;




CREATE TABLE TARIFFE_OLD
(
  CODICE_ANALISI               VARCHAR(8)      NOT NULL,
  CODICE_MATERIALE             VARCHAR(3)      NOT NULL,
  FASCIA_RIDUZIONE_1           NUMERIC(5,2),
  FASCIA_RIDUZIONE_2           NUMERIC(5,2),
  FASCIA_RIDUZIONE_3           NUMERIC(5,2),
  PREZZO_INTERO                NUMERIC(5,2),
  FASCIA_RIDUZIONE_1_MACINATI  NUMERIC(5,2),
  FASCIA_RIDUZIONE_2_MACINATI  NUMERIC(5,2),
  FASCIA_RIDUZIONE_3_MACINATI  NUMERIC(5,2)
) ;


CREATE TABLE TIPI_DI_ANALISI
(
  CODICE_ANALISI  VARCHAR(8)                   NOT NULL,
  DESCRIZIONE     VARCHAR(120)
) ;




CREATE TABLE TIPO_ORGANIZZAZIONE
(
  ID_TIPO_ORGANIZZAZIONE  NUMERIC                NOT NULL,
  DESCRIZIONE             VARCHAR(60),
  CONVENZIONATA           VARCHAR(1)
) ;



CREATE TABLE TMP_FIRI
(
  CODICE_AGEA    VARCHAR(20),
  COD_AIMA       VARCHAR(10),
  ANNO_PRATICA   NUMERIC,
  CHIAVE_UTENTE  VARCHAR(20)
) ;




CREATE TABLE UTENTE_INTERNO
(
  CODICE_FISCALE  VARCHAR(16)                  NOT NULL,
  ID_FIRMA        NUMERIC
) ;



CREATE TABLE VARIETA_SPECIE
(
  ID_VARIETA   NUMERIC(9)                        NOT NULL,
  ID_SPECIE    NUMERIC(9),
  DESCRIZIONE  VARCHAR(40)
) ;



CREATE TABLE VARIETA_SPECIE_OLD
(
  ID_VARIETA   NUMERIC(9)                        NOT NULL,
  ID_SPECIE    NUMERIC(9),
  DESCRIZIONE  VARCHAR(40)
) ;



CREATE TABLE PORTA_INNESTO
(
  ID_INNESTO   NUMERIC(9)                        NOT NULL,
  ID_SPECIE    NUMERIC(9),
  DESCRIZIONE  VARCHAR(40)
) ;



CREATE TABLE PROVINCIA
(
  ID_PROVINCIA     VARCHAR(3)                  NOT NULL,
  ID_REGIONE       VARCHAR(2)                  NOT NULL,
  SIGLA_PROVINCIA  VARCHAR(2)                  NOT NULL,
  DESCRIZIONE      VARCHAR(30)                 NOT NULL
) ;



CREATE TABLE SISTEMA_ALLEVAMENTO
(
  ID_SISTEMA_ALLEVAMENTO  NUMERIC(9)             NOT NULL,
  ID_SPECIE               NUMERIC(9),
  DESCRIZIONE             VARCHAR(40)
) ;



CREATE TABLE TARIFFE
(
  CODICE_ANALISI               VARCHAR(8)      NOT NULL,
  CODICE_MATERIALE             VARCHAR(3)      NOT NULL,
  FASCIA_RIDUZIONE_1           NUMERIC(5,2),
  FASCIA_RIDUZIONE_2           NUMERIC(5,2),
  FASCIA_RIDUZIONE_3           NUMERIC(5,2),
  PREZZO_INTERO                NUMERIC(5,2),
  FASCIA_RIDUZIONE_1_MACINATI  NUMERIC(5,2),
  FASCIA_RIDUZIONE_2_MACINATI  NUMERIC(5,2),
  FASCIA_RIDUZIONE_3_MACINATI  NUMERIC(5,2)
) ;





CREATE TABLE COMUNE
(
  CODICE_ISTAT      VARCHAR(6)                 NOT NULL,
  CODICE_ISTAT_OLD  VARCHAR(6),
  PROVINCIA         VARCHAR(3)                 NOT NULL,
  PROVINCIA_OLD     VARCHAR(3),
  DESCRIZIONE       VARCHAR(40)                NOT NULL,
  CAP               VARCHAR(5),
  CODICE_FISCALE    VARCHAR(4)
) ;




CREATE TABLE LABORATORIO
(
  CODICE_LABORATORIO  VARCHAR(4)               NOT NULL,
  SEDE                VARCHAR(1),
  DESCRIZIONE         VARCHAR(60),
  INDIRIZZO           VARCHAR(60),
  CAP                 VARCHAR(5),
  COMUNE              VARCHAR(6),
  RIFERIMENTI         VARCHAR(60)
) ;




CREATE TABLE ORGANIZZAZIONE_PROFESSIONALE
(
  ID_ORGANIZZAZIONE       NUMERIC(9)             NOT NULL,
  ID_TIPO_ORGANIZZAZIONE  NUMERIC,
  CF_PARTITA_IVA          VARCHAR(16),
  RAGIONE_SOCIALE         VARCHAR(60)          NOT NULL,
  SEDE_TERRITORIALE       VARCHAR(30),
  INDIRIZZO               VARCHAR(40),
  CAP                     VARCHAR(5),
  COMUNE_RESIDENZA        VARCHAR(6),
  TELEFONO                VARCHAR(20),
  FAX                     VARCHAR(20),
  EMAIL                   VARCHAR(50)
) ;



CREATE TABLE ANAGRAFICA
(
  ID_ANAGRAFICA            NUMERIC(9)            NOT NULL,
  CODICE_IDENTIFICATIVO    VARCHAR(16),
  TIPO_PERSONA             VARCHAR(1),
  COGNOME_RAGIONE_SOCIALE  VARCHAR(60),
  NOME                     VARCHAR(40),
  INDIRIZZO                VARCHAR(40),
  CAP                      VARCHAR(5),
  COMUNE_RESIDENZA         VARCHAR(6),
  TELEFONO                 VARCHAR(20),
  CELLULARE                VARCHAR(20),
  FAX                      VARCHAR(20),
  EMAIL                    VARCHAR(50),
  ID_ORGANIZZAZIONE        NUMERIC(9),
  TIPO_UTENTE              VARCHAR(1),
  ID_ANAGRAFICA_AZIENDA    NUMERIC(9),
  ID_ANAGRAFICA_2          NUMERIC(9)
) ;




CREATE TABLE ETICHETTA_CAMPIONE
(
  ID_RICHIESTA                NUMERIC(9)         NOT NULL,
  DATA_INSERIMENTO_RICHIESTA  TIMESTAMP              NOT NULL,
  CODICE_MATERIALE            VARCHAR(3)       NOT NULL,
  ANNO                        NUMERIC(4),
  NUMERO_CAMPIONE             NUMERIC(6),
  DESCRIZIONE_ETICHETTA       VARCHAR(40),
  ANAGRAFICA_UTENTE           NUMERIC(9),
  ANAGRAFICA_TECNICO          NUMERIC(9),
  ANAGRAFICA_PROPRIETARIO     NUMERIC(9),
  LABORATORIO_CONSEGNA        VARCHAR(4)       NOT NULL,
  LABORATORIO_ANALISI         VARCHAR(4),
  CODICE_MODALITA             VARCHAR(1)       NOT NULL,
  STATO_ATTUALE               VARCHAR(2)       NOT NULL,
  STATO_ANOMALIA              VARCHAR(1),
  PAGAMENTO                   VARCHAR(1),
  NOTE_CLIENTE                VARCHAR(512),
  TARIFFA_APPLICATA           NUMERIC
) ;


CREATE TABLE FASI_RICHIESTA
(
  ID_RICHIESTA  NUMERIC(9)                       NOT NULL,
  NUMERO_FASE   NUMERIC(1)
) ;


CREATE TABLE FIRMA_REFERTO
(
  ID_RICHIESTA  NUMERIC(9)                       NOT NULL,
  ID_FIRMA      NUMERIC,
  NOTE          VARCHAR(512)
) ;


CREATE TABLE FOSFORO_METODO_OLSEN
(
  ID_RICHIESTA          NUMERIC(9)               NOT NULL,
  LETTURA_FOSFORO       NUMERIC(9,3),
  FOSFORO_ASSIMILABILE  NUMERIC(9,3),
  ANIDRIDE_FOSFORICA    NUMERIC(9,3)
) ;



CREATE TABLE GRANULOMETRIA_A_4_FRAZIONI
(
  ID_RICHIESTA   NUMERIC(9)                      NOT NULL,
  ARGILLA        NUMERIC(5,2),
  LIMO_TOTALE    NUMERIC(5,2),
  LIMO_FINE      NUMERIC(5,2),
  LIMO_GROSSO    NUMERIC(5,2),
  SABBIA_TOTALE  NUMERIC(5,2)
) ;



CREATE TABLE GRANULOMETRIA_A_5_FRAZIONI
(
  ID_RICHIESTA   NUMERIC(9)                      NOT NULL,
  ARGILLA        NUMERIC(5,2),
  SABBIA_TOTALE  NUMERIC(5,2),
  SABBIA_GROSSA  NUMERIC(5,2),
  LIMO_TOTALE    NUMERIC(5,2),
  LIMO_FINE      NUMERIC(5,2),
  SABBIA_FINE    NUMERIC(5,2),
  LIMO_GROSSO    NUMERIC(5,2)
) ;




CREATE TABLE GRANULOMETRIA_METODO_BOJOUCOS
(
  ID_RICHIESTA              NUMERIC(9)           NOT NULL,
  LETTURA_DENSITA_1_15      NUMERIC(9,3),
  LETTURA_DENSITA_1_30      NUMERIC(9,3),
  LETTURA_DENSITA_1_45      NUMERIC(9,3),
  DENSITA_SOLUZ_FONDO_1     NUMERIC(9,3),
  TEMPERATURA_1             NUMERIC(9,3),
  FATTORE_TEMP_GRANULARE_1  NUMERIC(9,3),
  DIAMETRO_1_15             NUMERIC(9,3),
  DIAMETRO_1_30             NUMERIC(9,3),
  DIAMETRO_1_45             NUMERIC(9,3),
  DENSITA_LORDA_50_1_2      NUMERIC(9,3),
  DENSITA_LORDA_50_1_3      NUMERIC(9,3),
  DENSITA_LORDA_50_2_3      NUMERIC(9,3),
  DENSITA_LORDA_50          NUMERIC(9,3),
  SABBIA                    NUMERIC(7,1),
  LETTURA_DENSITA_9_30      NUMERIC(9,3),
  LETTURA_DENSITA_10        NUMERIC(9,3),
  LETTURA_DENSITA_10_45     NUMERIC(9,3),
  DENSITA_SOLUZ_FONDO_2     NUMERIC(9,3),
  TEMPERATURA_2             NUMERIC(9,3),
  FATTORE_TEMP_GRANULARE_2  NUMERIC(9,3),
  DIAMETRO_9_30             NUMERIC(9,3),
  DIAMETRO_10               NUMERIC(9,3),
  DIAMETRO_10_45            NUMERIC(9,3),
  DENSITA_LORDA_20_4_5      NUMERIC(9,3),
  DENSITA_LORDA_20_4_6      NUMERIC(9,3),
  DENSITA_LORDA_20_5_6      NUMERIC(9,3),
  DENSITA_LORDA_20          NUMERIC(9,3),
  LIMO_GROSSO               NUMERIC(7,1),
  LETTURA_DENSITA_17        NUMERIC(9,3),
  LETTURA_DENSITA_18_30     NUMERIC(9,3),
  LETTURA_DENSITA_20        NUMERIC(9,3),
  DENSITA_BIANCO_17         NUMERIC(9,3),
  DENSITA_BIANCO_18_30      NUMERIC(9,3),
  DENSITA_BIANCO_20         NUMERIC(9,3),
  DENSITA_MEDIA_BIANCO_3    NUMERIC(9,3),
  TEMPERATURA_17            NUMERIC(9,3),
  TEMPERATURA_18_30         NUMERIC(9,3),
  TEMPERATURA_20            NUMERIC(9,3),
  TEMPERATURA_MEDIA_3       NUMERIC(9,3),
  FATTORE_TEMP_GRANULARE_3  NUMERIC(9,3),
  DIAMETRO_17               NUMERIC(9,3),
  DIAMETRO_18_30            NUMERIC(9,3),
  DIAMETRO_20               NUMERIC(9,3),
  DENSITA_LORDA_2_7_8       NUMERIC(9,3),
  DENSITA_LORDA_2_7_9       NUMERIC(9,3),
  DENSITA_LORDA_2_8_9       NUMERIC(9,3),
  DENSITA_LORDA_2           NUMERIC(9,3),
  LIMO_FINE                 NUMERIC(7,1),
  ARGILLA_1                 NUMERIC(7,1),
  LIMO                      NUMERIC(7,1),
  ARGILLA_2                 NUMERIC(7,1)
) ;



CREATE TABLE GRANULOMETRIA_STANDARD
(
  ID_RICHIESTA   NUMERIC(9)                      NOT NULL,
  ARGILLA        NUMERIC(5,2),
  LIMO_TOTALE    NUMERIC(5,2),
  SABBIA_TOTALE  NUMERIC(5,2)
) ;


CREATE TABLE LOG_ACCESSI
(
  ID_ANAGRAFICA  NUMERIC(9),
  USERID         VARCHAR(20),
  SSID           TIMESTAMP,
  SISTEMA        VARCHAR(2)
) ;



CREATE TABLE MACRO_MICRO_ELEM_IND_FOGLIE
(
  ID_RICHIESTA       NUMERIC(9)                  NOT NULL,
  PESO_CAMPIONE      NUMERIC(9,3),
  VOLUME_DILUIZIONE  NUMERIC(9,3),
  LETTURA_CA_PPM     NUMERIC(9,3),
  CALCIO_PPM         NUMERIC(9,3),
  CALCIO             NUMERIC(9,3),
  LETTURA_MG_PPM     NUMERIC(8,3),
  MAGNESIO_PPM       NUMERIC(9,3),
  MAGNESIO           NUMERIC(9,3),
  LETTURA_K_PPM      NUMERIC(9,3),
  POTASSIO_PPM       NUMERIC(9,3),
  POTASSIO           NUMERIC(9,3),
  AZOTO              NUMERIC(9,3),
  AZOTO_PPM          NUMERIC(9,3),
  FOSFORO_PPM        NUMERIC(9,3),
  FOSFORO            NUMERIC(9,3),
  DILUIZIONE_FE      NUMERIC(9,3),
  FERRO_PPM          NUMERIC(9,3),
  LETTURA_FE_PPM     NUMERIC(9,3),
  DILUIZIONE_MN      NUMERIC(9,3),
  MANGANESE_PPM      NUMERIC(9,3),
  LETTURA_MN_PPM     NUMERIC(9,3),
  DILUIZIONE_ZN      NUMERIC(9,3),
  ZINCO_PPM          NUMERIC(9,3),
  LETTURA_ZN_PPM     NUMERIC(9,3),
  DILUIZIONE_CU      NUMERIC(9,3),
  RAME_PPM           NUMERIC(9,3),
  LETTURA_CU_PPM     NUMERIC(9,3),
  DILUIZIONE_B       NUMERIC(9,3),
  BORO_PPM           NUMERIC(9,3),
  LETTURA_B_PPM      NUMERIC(9,3)
) ;




CREATE TABLE MACRO_MICRO_ELEM_IND_FRUTTA
(
  ID_RICHIESTA             NUMERIC(9)            NOT NULL,
  PESO_CAMPIONE            NUMERIC(9,3),
  VOLUME_PRIMA_DILUIZIONE  NUMERIC(9,3),
  SECONDA_DILUIZIONE_CA    NUMERIC(9,3),
  CALCIO_PPM               NUMERIC(9,3),
  LETTURA_CA_PPM           NUMERIC(9,3),
  CALCIO                   NUMERIC(9,3),
  SECONDA_DILUIZIONE_MG    NUMERIC(9,3),
  MAGNESIO_PPM             NUMERIC(9,3),
  LETTURA_MG_PPM           NUMERIC(9,3),
  MAGNESIO                 NUMERIC(9,3),
  SECONDA_DILUIZIONE_K     NUMERIC(9,3),
  POTASSIO_PPM             NUMERIC(9,3),
  LETTURA_K_PPM            NUMERIC(9,3),
  POTASSIO                 NUMERIC(9,3),
  AZOTO                    NUMERIC(9,3),
  AZOTO_PPM                NUMERIC(9,3),
  FOSFORO_PPM              NUMERIC(9,3),
  FOSFORO                  NUMERIC(9,3),
  DILUIZIONE_FE            NUMERIC(9,3),
  FERRO_PPM                NUMERIC(9,3),
  LETTURA_FE_PPM           NUMERIC(9,3),
  DILUIZIONE_MN            NUMERIC(9,3),
  MANGANESE_PPM            NUMERIC(9,3),
  LETTURA_MN_PPM           NUMERIC(9,3),
  DILUIZIONE_ZN            NUMERIC(9,3),
  ZINCO_PPM                NUMERIC(9,3),
  LETTURA_ZN_PPM           NUMERIC(9,3),
  DILUIZIONE_CU            NUMERIC(9,3),
  RAME_PPM                 NUMERIC(9,3),
  LETTURA_CU_PPM           NUMERIC(9,3),
  DILUIZIONE_B             NUMERIC(9,3),
  BORO_PPM                 NUMERIC(9,3),
  LETTURA_B_PPM            NUMERIC(9,3)
) ;




CREATE TABLE MICROELEMENTI_METODO_DTPA
(
  ID_RICHIESTA            NUMERIC(9)             NOT NULL,
  LETTURA_FERRO           NUMERIC(9,3),
  DILUIZIONE_FERRO        NUMERIC(9,3),
  FERRO_ASSIMILABILE      NUMERIC(9,3),
  LETTURA_MANGANESE       NUMERIC(9,3),
  DILUIZIONE_MANGANESE    NUMERIC(9,3),
  MANGANESE_ASSIMILABILE  NUMERIC(9,3),
  LETTURA_ZINCO           NUMERIC(9,3),
  DILUIZIONE_ZINCO        NUMERIC(9,3),
  ZINCO_ASSIMILABILE      NUMERIC(9,3),
  LETTURA_RAME            NUMERIC(9,3),
  DILUIZIONE_RAME         NUMERIC(9,3),
  RAME_ASSIMILABILE       NUMERIC(9,3),
  LETTURA_BORO            NUMERIC(9,3),
  DILUIZIONE_BORO         NUMERIC(9,3),
  BORO_ASSIMILABILE       NUMERIC(9,3)
) ;




CREATE TABLE REAZIONE_SUOLO
(
  ID_RICHIESTA         NUMERIC(9)                NOT NULL,
  PH_ACQUA             NUMERIC(7,1),
  PH_CLORURO_POTASSIO  NUMERIC(7,1),
  PH_TAMPONE           NUMERIC(7,1)
) ;



CREATE TABLE SOSTANZA_ORGANICA
(
  ID_RICHIESTA                  NUMERIC(9)       NOT NULL,
  LETTURA_SOSTANZA_ORGANICA     NUMERIC(9,3),
  PESO_CAMPIONE                 NUMERIC(9,3),
  SOSTANZA_ORGANICA             NUMERIC(8,2),
  CARBONIO_ORGANICO             NUMERIC(8,2),
  CARBONIO_ORGANICO_METODO_ANA  NUMERIC(9,3),
  SOSTANZA_ORGANICA_METODO_ANA  NUMERIC(8,2)
) ;



CREATE TABLE TRACCIATURA
(
  ID_RICHIESTA  NUMERIC(9)                       NOT NULL,
  PROGRESSIVO   NUMERIC(3)                       NOT NULL,
  CODICE        VARCHAR(2),
  DATA          TIMESTAMP,
  NOTE          VARCHAR(512)
) ;


CREATE TABLE UMIDITA_CAMPIONE
(
  ID_RICHIESTA      NUMERIC(9)                   NOT NULL,
  TARA              NUMERIC(9,3),
  PESO_NETTO_UMIDO  NUMERIC(9,3),
  PESO_LORDO_SECCO  NUMERIC(9,3),
  UMIDITA_CAMPIONE  NUMERIC(5,2),
  SOSTANZA_SECCA    NUMERIC(5,2)
) ;




CREATE TABLE ANALISI_DATI
(
  ID_RICHIESTA  NUMERIC(9)                       NOT NULL,
  NOTE          VARCHAR(512)
) ;



CREATE TABLE ANALISI_RICHIESTE
(
  ID_RICHIESTA    NUMERIC(9)                     NOT NULL,
  CODICE_ANALISI  VARCHAR(8)                   NOT NULL,
  COSTO_ANALISI   NUMERIC(5,2)
) ;




CREATE TABLE AZOTO
(
  ID_RICHIESTA             NUMERIC(9)            NOT NULL,
  AZOTO_TOTALE_METODO_ANA  NUMERIC(9,3),
  AZOTO_KJELDAHL           NUMERIC(9,3),
  RAPPORTO_C_N             NUMERIC(7,1)
) ;




CREATE TABLE CALCIMETRIA
(
  ID_RICHIESTA                NUMERIC(9)         NOT NULL,
  LETTURA_CALCIMETRO          NUMERIC(9,2),
  PRESSIONE_ATMOSFERICA       NUMERIC(9,3),
  TEMPERATURA                 NUMERIC(9,3),
  TENSIONE_DI_VAPORE          NUMERIC(9,3),
  CARBONATO_CALCIO_TOTALE     NUMERIC(8,2),
  CALCARE_ATTIVO              NUMERIC(7,1),
  LETTURA_FERRO_OSSALATO      NUMERIC(9,3),
  DILUIZIONE_DETERMINA_FERRO  NUMERIC(9,3),
  FERRO_OSSALATO              NUMERIC(9,3),
  INDICE_POTERE_CLOROSANTE    NUMERIC(8,2)
) ;



CREATE TABLE CAMPIONE_VEGETALI_ERBACEE
(
  ID_RICHIESTA        NUMERIC(9)                 NOT NULL,
  DATA_CAMPIONAMENTO  TIMESTAMP,
  ID_SPECIE           NUMERIC(9),
  CAMPIONE_TERRENO    VARCHAR(20),
  MACINATO            CHAR(1)
) ;


CREATE TABLE CAMPIONE_VEGETALI_FOGLIEFRUTTA
(
  ID_RICHIESTA             NUMERIC(9)            NOT NULL,
  DATA_CAMPIONAMENTO       TIMESTAMP,
  GIACITURA                VARCHAR(1),
  SUPERFICIE_APPEZZAMENTO  NUMERIC(9),
  ID_ESPOSIZIONE           VARCHAR(3),
  SCHELETRO                VARCHAR(1),
  ALTITUDINE_SLM           NUMERIC(4),
  ETA_IMPIANTO             NUMERIC(2),
  ID_COLTURA               NUMERIC(9),
  ID_SPECIE                NUMERIC(9),
  ALTRA_SPECIE             VARCHAR(40),
  ID_VARIETA               NUMERIC(9),
  ID_INNESTO               NUMERIC(9),
  ID_SISTEMA_ALLEVAMENTO   NUMERIC(9),
  ALTRO_ALLEVAMENTO        VARCHAR(40),
  SESTO_IMPIANTO_1         NUMERIC(4,2),
  SESTO_IMPIANTO_2         NUMERIC(4,2),
  UNITA_N                  NUMERIC(6),
  UNITA_P2O5               NUMERIC(6),
  UNITA_K2O                NUMERIC(6),
  UNITA_MG                 NUMERIC(6),
  LETAMAZIONE_ANNO         NUMERIC(4,2),
  TIPO_CONCIMAZIONE        VARCHAR(1),
  ID_CONCIME               NUMERIC(9),
  ID_STADIO_FENOLOGICO     NUMERIC(9),
  CODICE_PRODUTTIVITA      VARCHAR(1),
  CAMPIONE_TERRENO         VARCHAR(20),
  MACINATO                 CHAR(1)
) ;



CREATE TABLE COMPLESSO_SCAMBIO
(
  ID_RICHIESTA                  NUMERIC(9)       NOT NULL,
  PESO_SECCO_PROVETTA           NUMERIC(9,3),
  PESO_SECCO_ACQUA_PROVETTA     NUMERIC(9,3),
  PESO_TERRENO                  NUMERIC(9,3),
  LETTURA_MAGNESIO_EDTA         NUMERIC(9,3),
  LETTURA_BIANCO_EDTA           NUMERIC(9,3),
  CAPACITA_SCAMBIO_CATIONICO    NUMERIC(7,1),
  LETTURA_CALCIO                NUMERIC(9,3),
  LETTURA_MAGNESIO              NUMERIC(9,3),
  LETTURA_POTASSIO              NUMERIC(9,3),
  LETTURA_SODIO                 NUMERIC(9,3),
  VBACL2_PER_ESTRAZIONE         NUMERIC(9,3),
  DILUIZIONE_CALCIO             NUMERIC(9,3),
  DILUIZIONE_MAGNESIO           NUMERIC(9,3),
  DILUIZIONE_POTASSIO           NUMERIC(9,3),
  DILUIZIONE_SODIO              NUMERIC(9,3),
  CALCIO_SCAMBIABILE            NUMERIC(8,2),
  MAGNESIO_SCAMBIABILE          NUMERIC(8,2),
  POTASSIO_SCAMBIABILE          NUMERIC(8,2),
  SODIO_SCAMBIABILE             NUMERIC(8,2),
  CALCIO_SCAMBIABILE_MEQ_100    NUMERIC(8,2),
  MAGNESIO_SCAMBIABILE_MEQ_100  NUMERIC(8,2),
  POTASSIO_SCAMBIABILE_MEQ_100  NUMERIC(8,2),
  SODIO_SCAMBIABILE_MEQ_100     NUMERIC(8,2),
  CALCIO_SCAMBIABILE_CSC        NUMERIC(8,2),
  MAGNESIO_SCAMBIABILE_CSC      NUMERIC(8,2),
  POTASSIO_SCAMBIABILE_CSC      NUMERIC(8,2),
  SODIO_SCAMBIABILE_CSC         NUMERIC(8,2),
  SATURAZIONE_BASICA            NUMERIC(8,2),
  CA_MG                         NUMERIC(8,2),
  CA_K                          NUMERIC(8,2),
  MG_K                          NUMERIC(8,2)
) ;




CREATE TABLE CONDUCIBILITA_SALINITA
(
  ID_RICHIESTA   NUMERIC(9)                      NOT NULL,
  CONDUCIBILITA  NUMERIC(5)
) ;



CREATE TABLE DATI_APPEZZAMENTO
(
  ID_RICHIESTA             NUMERIC(9)            NOT NULL,
  LOCALITA_APPEZZAMENTO    VARCHAR(40),
  COMUNE_APPEZZAMENTO      VARCHAR(6),
  PARTICELLA_CATASTALE     NUMERIC(5),
  SUBPARTICELLA            VARCHAR(20),
  SEZIONE                  VARCHAR(30),
  FOGLIO                   NUMERIC(4),
  COORDINATA_NORD_BOAGA    NUMERIC(7),
  COORDINATA_EST_BOAGA     NUMERIC(7),
  COORDINATA_NORD_UTM      NUMERIC(7),
  COORDINATA_EST_UTM       NUMERIC(7),
  TIPO_GEOREFERENZIAZIONE  VARCHAR(1)
) ;



CREATE TABLE DATI_CAMPIONE_TERRENO
(
  ID_RICHIESTA                  NUMERIC(9)       NOT NULL,
  ID_PROFONDITA                 NUMERIC(9),
  NUOVO_IMPIANTO                VARCHAR(1),
  COLTURA_ATTUALE               NUMERIC(9),
  COLTURA_PREVISTA              NUMERIC(9)       NOT NULL,
  ID_VARIETA                    NUMERIC(9),
  ID_INNESTO                    NUMERIC(9),
  ANNO_IMPIANTO                 NUMERIC(4),
  ID_SISTEMA_ALLEVAMENTO        NUMERIC(9),
  PRODUZIONE_Q_HA               NUMERIC(5,2),
  SUPERFICIE_APPEZZAMENTO       NUMERIC(9),
  GIACITURA                     VARCHAR(1),
  ID_ESPOSIZIONE                VARCHAR(3),
  SCHELETRO                     VARCHAR(1),
  PERCENTUALE_PIETRE            NUMERIC(3),
  STOPPIE                       VARCHAR(1),
  TIPO_CONCIMAZIONE             VARCHAR(1),
  ID_CONCIME                    NUMERIC(9),
  ID_LAVORAZIONE_TERRENO        NUMERIC(9),
  ID_IRRIGAZIONE                NUMERIC(9),
  CODICE_MODALITA_COLTIVAZIONE  VARCHAR(1)
) ;



CREATE TABLE DATI_FATTURA
(
  ID_RICHIESTA        NUMERIC(9)                 NOT NULL,
  FATTURA_SN          VARCHAR(1)               NOT NULL,
  SPEDIZIONE          VARCHAR(1),
  IMPORTO_SPEDIZIONE  NUMERIC(5,2),
  FATTURARE           VARCHAR(1),
  CF_PARTITA_IVA      VARCHAR(16),
  RAGIONE_SOCIALE     VARCHAR(60),
  INDIRIZZO           VARCHAR(40),
  CAP                 VARCHAR(5),
  COMUNE              VARCHAR(6)
) ;



CREATE TABLE CAMPIONE_FATTURATO
(
  ID_RICHIESTA        NUMERIC(9)                 NOT NULL,
  ANNO                NUMERIC(4)                 NOT NULL,
  NUMERO_FATTURA      NUMERIC(5)                 NOT NULL,
  IMPORTO_IMPONIBILE  NUMERIC(6,2),
  IMPORTO_IVA         NUMERIC(6,2)
) ;


CREATE TABLE STORICO_IVA
(
  ID_STORICO_IVA        NUMERIC(4)       NOT NULL,
  DATA_INIZIO_VALIDITA  TIMESTAMP        NOT NULL,
  DATA_FINE_VALIDITA    TIMESTAMP,
  VALORE                NUMERIC(4,2)     NOT NULL
) ;


---------- PG_DDL.SQL
COMMENT ON TABLE STORICO_IVA IS E'Elenca i valori storicizzati di IVA';
COMMENT ON TABLE CLASSE_COLTURA IS E'Sul vecchio applicativo fare riferimento alla tabella VX01T5';
COMMENT ON TABLE CODIFICA_TRACCIABILITA IS E'Tabella di decodifica per individuare lo stato di avanzamento delle analisi, a cominciare dall''invio dati on-line, alla consegna e via dicendo fino al termine delle analisi con invio della comunicazione al cliente';
COMMENT ON TABLE CONCIMAZIONE_ORGANICA IS E'Concimazione organica:\n"A" Abituale\n"S" Saltuaria\n"N" Assente';
COMMENT ON TABLE CONCIME IS E'Nel caso sia stata indicata una concimazione abituale o saltuaria dovra essere selezionato il tipo di concime usato';
COMMENT ON TABLE ESPOSIZIONE IS E'Direzione (Nord,Est,Sud,Ovest) di esposizione del terreno rispetto al sole. Ha significato nel caso di terreni a lato di colline o montagne.';
COMMENT ON TABLE FATTURA IS E'La fattura viene emessa dal Laboratorio Agrochimico che ne attribuisce internamente il numero progressivo. La fattura viene spedita manualmente da parte dell''utente del laboratorio sia al cliente, che ne ha fatto richiesta, che all''ufficio di tesoreria regionale competente, per la registrazione contabile';
COMMENT ON TABLE FIRMA IS E'Contiene l''elenco dei possibili firmatari dell''esito del risultato dell''analisi. I dati su questa tabella verranno caricati manualmente a cura del CSI Piemonte.';
COMMENT ON TABLE IRRIGAZIONE IS E'Indica il tipo di irrigazione effettuata sul terreno';
COMMENT ON TABLE LAVORAZIONE_TERRENO IS E'Contiene il tipo di lavorazione del terreno';
COMMENT ON TABLE MATERIALE IS E'Codice e descrizione del materiale da analizzare. Sono per il momento previsti i seguenti tipi di materiale:\nTER - Terreni\nFOG - Vegetali - Foglie (Fruttiferi e Vite)\nFRU - Vegetali - Frutta\nERB - Vegetali - Foglie (Erbacee)\n\nIn un prossimo futuro potranno essere aggiunti:\nMIE - Miele\nH2O - Acqua\nVIN - Vino\nMOS - Mosto';
COMMENT ON TABLE MODALITA_COLTIVAZIONE IS E'Assume i valori:\n"S" Serra\n"T" Tunnel\n"P" Pieno campo';
COMMENT ON TABLE MODALITA_DI_CONSEGNA IS E'Indica la modalita con cui viene consegnato il campione; puo valere:\nM - Consegna a mano\nP - Spedizione tramite Posta\nC - Spedizione tramite Corriere';
COMMENT ON TABLE PARAMETRI_FATTURE IS E'Questa tabella contiene alcuni parametri che vengono utilizzati per la fatturazione';
COMMENT ON TABLE PRODUTTIVITA IS E'Produttivita indicativa dell''anno passato.\nPotra assumere i seguenti valori\n"B" Bassa\n"M" Media\n"MA" Medio alta\n"E" Estrema';
COMMENT ON TABLE PROFONDITA_PRELIEVO IS E'Profondita a cui e avvenuto il prelievo';
COMMENT ON TABLE REGIONE IS E'Tabella di sistema non modificabile dall''utente; contiene l''elenco di tutte le regioni d''Italia.';
COMMENT ON TABLE SPECIE_COLTURA IS E'Contiene l''elenco delle colture, es: Mais, Mandarino, Melanzana.\nOgnuna apparterra ad una classe coltura e ad un tipo (Erbaceo o Arboreo)\nSul vecchio applicativo fare riferimento alla tabella VX01T5. I dati relativi a Asporti, valori Max e Min per gli elementi Azoto, Fosforo e Potassio vengono utilizzati per la stesura del consiglio di concimazione.';
COMMENT ON TABLE STADIO_FENOLOGICO IS E'Indica lo stato di maturazione ed avra valori variabili a seconda del tipo di materiale a cui appartiene il campione';
COMMENT ON TABLE SUPERFICIE IS E'Indica il range di superficie che possono variare a seconda del tipo superficie';
COMMENT ON TABLE TIPI_DI_ANALISI IS E'Contiene l''elenco di tutti i tipi di analisi che possono essere effettuati su tutti i materiali. L''impostazione e la selezione dei tipi di analisi viene fatta dall''applicativo seguendo le specifiche rappresentate nelle varie form di richiesta di analisi e nei report.';
COMMENT ON TABLE TIPO_ORGANIZZAZIONE IS E'Serve a identificare il tipo di organizzazione che puo essere: "Organizzazione professionale" (a cui appartengono ad esempio Coldiretti, Unione Agricoltori, etc.) oppure altri tipi di organizzazioni come ad es: "Universita", "Tecnici privati", etc.';
COMMENT ON TABLE UTENTE_INTERNO IS E'Contiene l''elenco degli utenti interni con il loro codice fiscale. Viene utilizzata per assegnare ad ogni utente interno il suo responsabile (potrebbe in alcuni casi essere se stesso) che sara il firmatario dell''esito delle analisi. Al momento del caricamento degli utenti sull''applicativo di gestione utenti interni (IRIDE), verranno caricati i dati anche su questa tabella su indicazione degli utenti del laboratorio.';
COMMENT ON TABLE VARIETA_SPECIE IS E'Contiene la suddivisione in varieta previste dalla specie: es per la specie MELO ci possono essere le varieta GOLDEN, RENETTA, RED, ...\nSul vecchio applicativo fare riferimento alla tabella VX01T7';
COMMENT ON TABLE PORTA_INNESTO IS E'Contiene la suddivisione in innesti previsti dalla specie: es per la specie PESCO ci possono essere gli innesti MANDORLO, FRANCO, SELVATICO, ...\nSul vecchio applicativo fare riferimento alla tabella VX01T8';
COMMENT ON TABLE PROVINCIA IS E'Tabella di sistema non modificabile dall''utente; contiene l''elenco di tutte le provincie d''Italia.';
COMMENT ON TABLE SISTEMA_ALLEVAMENTO IS E'Contiene la suddivisione della forma di allevamento previsti dalla specie: es per la specie ACTINIDIA ci possono essere gli allevamenti a PALMETTA, PERGOLETTA, CORDONE BILATERALE, ...\nSul vecchio applicativo fare riferimento alla tabella VX01T9';
COMMENT ON TABLE TARIFFE IS E'Tabella contenente tutte le tariffe da applicare per ogni analisi. Per calcolare l''importo di ciascun tipo di analisi richiesta occorre accedere con chiave specifica impostata a livello di programma. Es: se viene richiesta l''analisi tipo per i terrenni si leggera il record con chiave: Codice materiale="TER" e Tipo analisi="ANALISI TIPO"';
COMMENT ON TABLE COMUNE IS E'Tabella di sistema non modificabile dall''utente; contiene l''elenco di tutti i comuni italiani e degli stati esteri (utilizzati per il controllo del codice fiscale in fase di registrazione nuovo utente).\nSul vecchio applicativo associati al comune esistono diversi attributi (fare riferimento alla tabella VX01T3) quali ad esempio la superficie, numero abitanti, codice comunita montana, ettari di bosco, ecc... Siccome questi dati non sono mai stati gestiti non sono necessari e quindi vengono eliminati nel nuovo modello dati AGRICHIM';
COMMENT ON TABLE LABORATORIO IS E'Elenco del laboratori della Regione con dati identificativi di ciascuno di essi.\nAl momento si prevede di avere i seguenti riverimenti:\nRPTO - LABORATORIO AGROCHIMICO Regionale - TORINO\nLATO - LABORATORIO AGROCHIMICO Regionale - TORINO (Nuovo)\nRPCN - LABORATORIO AGROCHIMICO Regionale - CEVA (CN)\nRPAL - LABORATORIO AGROCHIMICO Regionale - ALESSANDRIA\n\nCon relativi indirizzi e riferimenti:\nC.so Grosseto 71/6 - 10147 - Torino - Tel. 011-4323734/4323735\nVia Livorno, 60 - 10149 - Torino\nVia Regina Margherita, 2 - 12073 Ceva (CN) - Tel. 0174-701762\nC.so 100 Cannoni, 4 - 15100 Alessandria - Tel. 0131-445288 Fax. 0131-52736';
COMMENT ON TABLE ORGANIZZAZIONE_PROFESSIONALE IS E'Dati anagrafici della Organizzazione a cui e legato il tecnico che effettua le pratiche di richiesta dell''analisi e eventualmente del prelievo.  Ogni tecnico dovra essere associato all''organizzazione a cui appartiene.\nPuo contenere piu riferimenti relativi allo stesso tipo di organizzazione, ad esempio nel caso abbia piu sedi. Nella fase di impianto iniziale verranno inseriti gli enti convenzionati che sono individuati in base ad una delibera regionale e hanno diritto ad una tariffa ridotta sulla prestazione di analisi. L''utente del laboratorio gestira i dati di questa tabella inserendo eventuali altre organizzazioni dopo l''impianto iniziale.';
COMMENT ON TABLE ANAGRAFICA IS E'Tabella contenente tutte le anagrafiche dei tecnici, i privati, le aziende e i dipendenti del laboratorio.\nATTENZIONE: possono esistere anagrafiche senza "Codice identificativo", ma non possono esistere 2 anagrafiche con lo stesso "Codice identificativo".';
COMMENT ON TABLE ETICHETTA_CAMPIONE IS E'Dati principali del campione';
COMMENT ON TABLE FASI_RICHIESTA IS E'Per ogni richiesta, in bozza, viene memorizzata la fase ultima a cui si e arrivati nel completamento della richiesta on-line.\nAlla conferma finale, quando la richiesta passa dallo stato di "Bozza" a "Analisi richiesta" viene cancellato il corrispondente record su questa tabella';
COMMENT ON TABLE FIRMA_REFERTO IS E'Indica chi ha firmato il referto, se richiesta la firma, e contiene eventuali note aggiuntive.';
COMMENT ON TABLE FOSFORO_METODO_OLSEN IS E'Risultato delle analisi raggruppati per tipo di dati. Gli attributi in verde sono di input e sono sottoposti a controlli di validita. I campi in blu sono di output e, in base ad una condizione, vengono calcolati con formule.';
COMMENT ON TABLE GRANULOMETRIA_A_4_FRAZIONI IS E'Risultato delle analisi raggruppati per tipo di dati. Gli attributi in verde sono di input e sono sottoposti a controlli di validita. I campi in blu sono di output e, in base ad una condizione, vengono calcolati con formule.';
COMMENT ON TABLE GRANULOMETRIA_A_5_FRAZIONI IS E'Risultato delle analisi raggruppati per tipo di dati. Gli attributi in verde sono di input e sono sottoposti a controlli di validita. I campi in blu sono di output e, in base ad una condizione, vengono calcolati con formule.';
COMMENT ON TABLE GRANULOMETRIA_METODO_BOJOUCOS IS E'Risultato delle analisi raggruppati per tipo di dati. Gli attributi in verde sono di input e sono sottoposti a controlli di validita. I campi in blu sono di output e, in base ad una condizione, vengono calcolati con formule.';
COMMENT ON TABLE GRANULOMETRIA_STANDARD IS E'Risultato delle analisi raggruppati per tipo di dati. Gli attributi in verde sono di input e sono sottoposti a controlli di validita. I campi in blu sono di output e, in base ad una condizione, vengono calcolati con formule.';
COMMENT ON TABLE LOG_ACCESSI IS E'Tabella dei log di connessione ala sistema. Ad ogni nuovo accesso verra registrato il codice utrente e il timestamp di connessione';
COMMENT ON TABLE MICROELEMENTI_METODO_DTPA IS E'Risultato delle analisi raggruppati per tipo di dati. Gli attributi in verde sono di input e sono sottoposti a controlli di validita. I campi in blu sono di output e, in base ad una condizione, vengono calcolati con formule.\nI campi lettura e Diluizione possono essere valorizzati anche per solo uno degli elementi Ferro, Manganese, Zinco, Rame e Boro';
COMMENT ON TABLE REAZIONE_SUOLO IS E'Risultato delle analisi raggruppati per tipo di dati. Gli attributi in verde sono di input e sono sottoposti a controlli di validita. I campi in blu sono di output e, in base ad una condizione, vengono calcolati con formule.\nUno solo dei 3 valori tra [pH in acqua 1:2,5], [pH in cloruro di potassio], [pH tampone] deve essere impostato.';
COMMENT ON TABLE SOSTANZA_ORGANICA IS E'Risultato delle analisi raggruppati per tipo di dati. Gli attributi in verde sono di input e sono sottoposti a controlli di validita. I campi in blu sono di output e, in base ad una condizione, vengono calcolati con formule.';
COMMENT ON TABLE TRACCIATURA IS E'Basandosi sui codici di tracciabilita si registrera ogni cambiamento di stato del campione; ad ogni cambiamento di stato del campione occorre inserire un nuovo record con progressivo incrementale, indicando il nuovo stato, e la data. Sull''ultimo stato inserito, e possibile indicare delle note o eliminarle, a richiesta dell''utente.\nN.B: non viene registarto lo stato iniziale del campione in bozza per cui il primo stato valido e il ''10 - Analisi richiesta''';
COMMENT ON TABLE UMIDITA_CAMPIONE IS E'Risultato delle analisi raggruppati per tipo di dati. Gli attributi in verde sono di input e sono sottoposti a controlli di validita. I campi in blu sono di output e, in base ad una condizione, vengono calcolati con formule.';
COMMENT ON TABLE ANALISI_DATI IS E'Contiene l''elenco di alcune informazioni logiche sui dati da analizzare\n\nA parte il campo note gli altri alltributi sono solamente logici (non compariranno nel DB fisico), ma sono presenti nelle form e documenti di gestione dell''applicativo';
COMMENT ON TABLE ANALISI_RICHIESTE IS E'Vengono riportate tutte le analisi richieste selezionate dalla apposita funzione di gestione analisi.\nControlli da effettuare in fase di "Conferma analisi" a seconda dell''analisi richieste dal cliente:\npH - solo TERRENO deve essere valorizzato uno dei 3 campi della tabella "Reazione del suolo"; se valorizzati [pH in cloruro di potassio] o [pH tampone] inviare msg box di richiesta conferma o annullo con msg "il pH inserito non e quello in acqua".\nCa - se TERRENO: deve essere presente il record sulla tabella "Complessio di scambio" con valorizzati i campi [Lettura Calcio], [Diluizione Calcio], [VBaCL2 per estrazione], [Peso terreno]; se VEGETALI: deve essere presente il record sulla tabella "Macro e micro elementi - indici - Vegetali" con valorizzato il campo [Calcio]\nMg - se TERRENO: deve essere presente il record sulla tabella "Complessio di scambio" con valorizzati i campi [Lettura Magnesio], [Diluizione Magnesio], [VBaCL2 per estrazione], [Peso terreno]; se VEGETALI: deve essere presente il record sulla tabella "Macro e micro elementi - indici - Vegetali" con valorizzato il campo [Magnesio]\nK - se TERRENO: deve essere presente il record sulla tabella "Complessio di scambio" con  valorizzati i campi [Lettura Potassio], [Diluizione Potassio], [VBaCL2 per estrazione], [Peso terreno]; se VEGETALI: deve essere presente il record sulla tabella "Macro e micro elementi - indici - Vegetali" con valorizzato il campo [Potassio]\nN - se TERRENO: deve essere presente il record sulla tabella "Azoto" con valorizzato uno dei 2 campi [Azoto totale metodo ANA" o "Azoto Kjeldahl"; se VEGETALI: deve essere presente il record sulla tabella "Macro e micro elementi - indici - Vegetali" con valorizzato il campo [Azoto]\nP - se TERRENO: deve essere presente il record sulla tabella "Fosforo metodo OLSEN" con valorizzato il campo [Lettura Fosforo]; se VEGETALI: deve essere presente il record sulla tabella "Macro e micro elementi - indici - Vegetali" con valorizzato il campo [Fosforo]';
COMMENT ON TABLE AZOTO IS E'Risultato delle analisi raggruppati per tipo di dati. Gli attributi in verde sono di input e sono sottoposti a controlli di validita. I campi in blu sono di output e, in base ad una condizione, vengono calcolati con formule.';
COMMENT ON TABLE CALCIMETRIA IS E'Risultato delle analisi raggruppati per tipo di dati. Gli attributi in verde sono di input e sono sottoposti a controlli di validita. I campi in blu sono di output e, in base ad una condizione, vengono calcolati con formule.';
COMMENT ON TABLE CAMPIONE_VEGETALI_ERBACEE IS E'Informazioni di dettaglio relative al campione di tipo:\nERB - Vegetali - Foglie (Erbacee)';
COMMENT ON TABLE CAMPIONE_VEGETALI_FOGLIEFRUTTA IS E'Informazioni di dettaglio relative al campione di tipo:\nFOG - Vegetali - Foglie (Fruttiferi e Vite)\nFRU - Vegetali - Frutta';
COMMENT ON TABLE COMPLESSO_SCAMBIO IS E'Risultato delle analisi raggruppati per tipo di dati. Gli attributi in verde sono di input e sono sottoposti a controlli di validita. I campi in blu sono di output e, in base ad una condizione, vengono calcolati con formule.';
COMMENT ON TABLE CONDUCIBILITA_SALINITA IS E'Risultato delle analisi raggruppati per tipo di dati. Gli attributi in verde sono di input e sono sottoposti a controlli di validita. I campi in blu sono di output e, in base ad una condizione, vengono calcolati con formule.';
COMMENT ON TABLE DATI_APPEZZAMENTO IS E'Informazioni relative alla localizzazione del luogo in cui e avvenuto il prelievo del campione. L''indicazione delle coordinate del prelievo saranno obbligatorie per i materiali:\nTER - Terreno\nSaranno optzionali per:\nFOG - Vegetali - Foglie (Fruttiferi e Vite)\nFRU - Vegetali - Frutta\nPer tutti gli altri materiali non vengono gestiti';
COMMENT ON TABLE DATI_CAMPIONE_TERRENO IS E'Informazioni di dettaglio relative al campione di tipo:\nTER - Terreni';
COMMENT ON TABLE DATI_FATTURA IS E'Estremi per la fattura nel caso in cui siano diversi sia dal Committente che dall''utente';
COMMENT ON TABLE CAMPIONE_FATTURATO IS E'Ogni fattura puo essere riferita a piu campioni, che avranno pero tutti gli stessi estremi di intestazione della fattura';


---------- PG_DDL.SQL
COMMENT ON COLUMN CLASSE_COLTURA.ID_COLTURA IS E'Identificativo univoco della Classe Coltura';
COMMENT ON COLUMN CLASSE_COLTURA.DESCRIZIONE IS E'Descrizione della coltura, es:\nOrnamentali, Fruttiferi, Ortive, ...';
COMMENT ON COLUMN CODIFICA_TRACCIABILITA.CODICE IS E'Codice identificativo dello stato del campione';
COMMENT ON COLUMN CODIFICA_TRACCIABILITA.DESCRIZIONE IS E'Descrizione dello stato del campione. Gli step sono:\n00 - Richiesta in Bozza\n10 - Analisi richiesta\n20 - Campione in laboratorio\n30 - Referto da emettere\n40 - Referto emesso';
COMMENT ON COLUMN CONCIME.ID_CONCIME IS E'Identificativo univoco attribuito automaticamente';
COMMENT ON COLUMN CONCIME.DESCRIZIONE IS E'Assume i valori:\nLetame bovino\nLiquame bovino\nLetame suino\nLiquame suino\nPollina\nCompost\nAltro';
COMMENT ON COLUMN ESPOSIZIONE.ID_ESPOSIZIONE IS E'Identificativo univoco';
COMMENT ON COLUMN ESPOSIZIONE.DESCRIZIONE IS E'Nord\nNord/Est\nEst\nSud/Est\nSud\nSud/Ovest\nOvest\nNord/Ovest';
COMMENT ON COLUMN FATTURA.ANNO IS E'Anno di emissione in base all''anno di sistema';
COMMENT ON COLUMN FATTURA.NUMERO_FATTURA IS E'Numero progressivo nell''ambito dell''anno. Ad anno nuovo si ricomincia da 1. Le fatture saranno emesse con numerazione progressiva annuale all''interno del sistema AGRICHIM, siglando la fattura con un codice "/F" dopo il numero fattura in fase di stampa.\n\nN.B: Alla partenza in produzione del "nuovo AGRICHIM" si emettera la prima fattura con numero successivo all''ultimo emesso dall''attuale applicativo AGRICHIM, che viene memorizzato nel campo "Ultima fattura AGRICHIM OLD" della tabella "Parametri fatture".';
COMMENT ON COLUMN FATTURA.PAGATA IS E'Indica se la fattura e stata pagata oppure no\nS - pagata\nP - pagata parzialmente\nN - non pagata\n\nAll''atto della stampa del documento di fattura se risulta non pagata o pagata parzialmente vengono riportati gli estremi per il pagamento (C/C postale e bancario) altrimenti non riportarli';
COMMENT ON COLUMN FATTURA.ANNULLATA IS E'Indica se la fattura e stata annullata\nS - Annullata\nSe la fattura che si vuole cancellare non e l''ultima emessa in ordine di numero, verra semplicemente annullata e non verra cancellata dalla base dati.';
COMMENT ON COLUMN FATTURA.PARTITA_IVA_O_CF IS E'I dati di di intestazione della fattura vengono memorizzati in fase di registrazione della fattura per poter riprodurre in qualsiasi momento una copia conforme della stessa nel caso vengano modificati nel tempo i dati anagrafici del cliente';
COMMENT ON COLUMN FIRMA.ID_FIRMA IS E'Numero identificativo univoco';
COMMENT ON COLUMN FIRMA.TITOLO_ONORIFICO IS E'Indica il titolo tipo: Dott., Perito, Agronomo, etc.';
COMMENT ON COLUMN FIRMA.FIRMA IS E'Contiene la firma digitalizzata da riportare sul referto, rapporto di prova';
COMMENT ON COLUMN IRRIGAZIONE.ID_IRRIGAZIONE IS E'Identificativo univoco della irrigazione';
COMMENT ON COLUMN IRRIGAZIONE.DESCRIZIONE IS E'Assume i valori:\nScorrimento\nSommersione\nAssente\nLocalizzato a goccia\nLocalizzato a sorsi\nLocalizzato a pioggia';
COMMENT ON COLUMN LAVORAZIONE_TERRENO.ID_LAVORAZIONE_TERRENO IS E'Numero identificativo del tipo di lavorazione del terreno';
COMMENT ON COLUMN LAVORAZIONE_TERRENO.DESCRIZIONE IS E'Assume i valori:\nNon lavorato\nLavorato\nColtura in atto\nStoppie\nInerbito';
COMMENT ON COLUMN MATERIALE.CODICE_MATERIALE IS E'Puo essere chiamato anche Matrice. I valori sono predeterminati e non cambieranno perche utilizzati al fine di controlli.';
COMMENT ON COLUMN MATERIALE.DESCRIZIONE IS E'Descrizione estesa del materiale, es: Terreni, Acqua, Vegetali (Frutta), Vegetali (Foglie Erbacee), etc...';
COMMENT ON COLUMN PARAMETRI_FATTURE.ULTIMA_FATTURA_AGRICHIM IS E'Contiene l''ultimo numero fattura utilizzato dal vecchio applicativo AGRICHIM e serve per l''emissione della prima fattura sul nuovo sistema AGRICHIM';
COMMENT ON COLUMN PROFONDITA_PRELIEVO.ID_PROFONDITA IS E'Identificativo univoco per indicare la profondita';
COMMENT ON COLUMN PROFONDITA_PRELIEVO.DESCRIZIONE IS E'Descrive il range di profondita a cui e avvenuto il prelievo. Assumera i valori:\n0 - 30 cm\n30 - 60 cm\n60 - 100 cm\noltre 100 cm';
COMMENT ON COLUMN REGIONE.ID_REGIONE IS E'Identificativo univoco della regione';
COMMENT ON COLUMN REGIONE.DESCRIZIONE IS E'Nome della Regione';
COMMENT ON COLUMN SPECIE_COLTURA.ID_SPECIE IS E'Identificativo univoco della specie';
COMMENT ON COLUMN SPECIE_COLTURA.ID_COLTURA IS E'Identificativo univoco della Classe Coltura';
COMMENT ON COLUMN SPECIE_COLTURA.DESCRIZIONE IS E'Conterra la descrizione, es: Mela, Orchidea, Faggio, ecc...';
COMMENT ON COLUMN SPECIE_COLTURA.TIPO_COLTURA IS E'Indica il tipo di coltura:\n"E" Erbacea\n"A" Arborea';
COMMENT ON COLUMN SPECIE_COLTURA.ASPORTI_N IS E'Azoto';
COMMENT ON COLUMN SPECIE_COLTURA.ASPORTI_P IS E'Fosforo';
COMMENT ON COLUMN SPECIE_COLTURA.ASPORTI_K IS E'Potassio';
COMMENT ON COLUMN STADIO_FENOLOGICO.ID_STADIO_FENOLOGICO IS E'Identificativo univoco dello Stadio Fenologico';
COMMENT ON COLUMN STADIO_FENOLOGICO.CODICE_MATERIALE IS E'Lo stadio fenologico e diversificato in base al tipo di materiale. Quando si associa ai dati del campione lo stadio fenologico saro selezionabile uno dei valori in base al materiale a cui il campione e attribuito';
COMMENT ON COLUMN STADIO_FENOLOGICO.DESCRIZIONE IS E'A seconda del materiale puo assumere valori diversi. Es:\nMaturazione\nFrutto verde\nFioritura';
COMMENT ON COLUMN SUPERFICIE.ID_SUPERFICIE IS E'Identificativo univoco della superficie';
COMMENT ON COLUMN SUPERFICIE.DESCRIZIONE IS E'Dovrebbero forse essere di piu i valori, per ora sono:\ninferiore a 1 Ha\nda 1 a 5 Ha\noltre 5 ha';
COMMENT ON COLUMN TIPI_DI_ANALISI.CODICE_ANALISI IS E'Codice identificativo dell''analisi. Ogni singola analisi viene identificata da un codice (Vd campo descrizione)';
COMMENT ON COLUMN TIPI_DI_ANALISI.DESCRIZIONE IS E'Descrizione del tipo di analisi. I valori al momento previsti sono i seguenti (Codice analisi - Descrizione):\npH - pH\nCa - Calcio\nMg - Magnesio\nK - Potassio\nN - Azoto\nP - Fosforo\nCSC - Capacita di scambio cationico\nSO - Sostanza organica\nCaCO3 - Calcare totale\nCaAtt - Calcare attivo\nStd - Standard (analisi ridotta di presenza di Limo, Sabbia e Argilla)\n4Fra - a 4 frazioni (analisi di Limo grosso, Limo fine, Sabbia e Argilla)\n5Fra - a 5 frazioni (analisi di Limo grosso, Limo fine, Sabbia grossa, Sabbia fine e Argilla)\nSal - Salinita\nFe - Ferro\nMn - Manganese\nZn - Zinco\nCu - Rame\nB - Boro\nUm - Umidita';
COMMENT ON COLUMN TIPO_ORGANIZZAZIONE.ID_TIPO_ORGANIZZAZIONE IS E'Identificativo univoco attribuito dal sistema';
COMMENT ON COLUMN TIPO_ORGANIZZAZIONE.DESCRIZIONE IS E'Descrizione che serve ad identificare il tipo di organizzazione';
COMMENT ON COLUMN UTENTE_INTERNO.CODICE_FISCALE IS E'Codice fiscale dell''utente';
COMMENT ON COLUMN UTENTE_INTERNO.ID_FIRMA IS E'Numero identificativo univoco';
COMMENT ON COLUMN VARIETA_SPECIE.ID_VARIETA IS E'Identificativo univoco della varieta specie';
COMMENT ON COLUMN VARIETA_SPECIE.ID_SPECIE IS E'Uno dei valori della tabella Specie Coltura a cui la varieta specie appartiene';
COMMENT ON COLUMN VARIETA_SPECIE.DESCRIZIONE IS E'Contiene la descrizione della varieta all''interno della specie';
COMMENT ON COLUMN PORTA_INNESTO.ID_INNESTO IS E'Identificativo univoco dell''innesto';
COMMENT ON COLUMN PORTA_INNESTO.ID_SPECIE IS E'Uno dei valori della tabella Specie Coltura a cui il porta innesto fa riferimento';
COMMENT ON COLUMN PORTA_INNESTO.DESCRIZIONE IS E'Contiene la descrizione dell''innesto all''interno della specie';
COMMENT ON COLUMN PROVINCIA.ID_PROVINCIA IS E'Identificativo numerico della provincia, quello utilizzato nel codice Istat del comune';
COMMENT ON COLUMN PROVINCIA.ID_REGIONE IS E'Legame con la tabella "Regione" per indicare la regione a cui appartiene la Provincia';
COMMENT ON COLUMN PROVINCIA.SIGLA_PROVINCIA IS E'Sigla della provincia, es: TO, CN, MI ...';
COMMENT ON COLUMN PROVINCIA.DESCRIZIONE IS E'Descrizione estesa della provincia';
COMMENT ON COLUMN SISTEMA_ALLEVAMENTO.ID_SISTEMA_ALLEVAMENTO IS E'Identificativo univoco del sistema di allevamento';
COMMENT ON COLUMN SISTEMA_ALLEVAMENTO.ID_SPECIE IS E'Uno dei valori della tabella Specie Coltura a cui il sistema di allevamento appartiene';
COMMENT ON COLUMN SISTEMA_ALLEVAMENTO.DESCRIZIONE IS E'Contiene la descrizione della forma di allevamento all''interno della specie';
COMMENT ON COLUMN TARIFFE.CODICE_MATERIALE IS E'Puo essere chiamato anche Matrice. Codifica breve, ad es: TER, FOG, etc.\nIl costo della stessa analisi puo essere diverso a seconda del materiale';
COMMENT ON COLUMN TARIFFE.FASCIA_RIDUZIONE_1 IS E'Tariffa ridotta da applicare all''analisi per privato e T non convenzionato che richiedono l''analisi tramite cartaceo al LAR';
COMMENT ON COLUMN TARIFFE.FASCIA_RIDUZIONE_2 IS E'Tariffa ridotta da applicare all''analisi per privato e T non convenzionato che richiedono l''analisi tramite internet oppure per T convenzionato che richiede l''analisi tramite cartaceo al LAR';
COMMENT ON COLUMN TARIFFE.FASCIA_RIDUZIONE_3 IS E'Tariffa ridotta da applicare all''analisi per T convenzionato che richiede analisi tramite internet';
COMMENT ON COLUMN TARIFFE.PREZZO_INTERO IS E'Prezzo di mercato';
COMMENT ON COLUMN TARIFFE.FASCIA_RIDUZIONE_1_MACINATI IS E'Come per la fascia riduzione 1 ma con uno sconto ulteriore del 15%';
COMMENT ON COLUMN TARIFFE.FASCIA_RIDUZIONE_2_MACINATI IS E'Come per la fascia riduzione 2 ma con uno sconto ulteriore del 15%';
COMMENT ON COLUMN TARIFFE.FASCIA_RIDUZIONE_3_MACINATI IS E'Come per la fascia riduzione 3 ma con uno sconto ulteriore del 15%';
COMMENT ON COLUMN COMUNE.CODICE_ISTAT IS E'Codice ISTAT del comune (3 caratteri numerici di provincia + 3 caratteri numerici di comune)';
COMMENT ON COLUMN COMUNE.CODICE_ISTAT_OLD IS E'Codice ISTAT precedente nel caso in cui sia cambiato nel tempo';
COMMENT ON COLUMN COMUNE.PROVINCIA IS E'Provincia di appartenenza del comune. Fa riferimento ad una delle province presenti sulla tabella "Provincia"';
COMMENT ON COLUMN COMUNE.PROVINCIA_OLD IS E'Provincia precedente a cui apparteneva il comune nel caso sia stata cambiata nel tempo. Fa riferimento ad una delle province presenti sulla tabella "Provincia"';
COMMENT ON COLUMN COMUNE.DESCRIZIONE IS E'Descrizione del comune';
COMMENT ON COLUMN COMUNE.CAP IS E'CAP del comune; Per i comuni multi CAP sara inserito quello generico';
COMMENT ON COLUMN COMUNE.CODICE_FISCALE IS E'Utilizzato per determinare le ultime 4 lettere (prima del check-digit finale) del codice fiscale dell''individuo.';
COMMENT ON COLUMN LABORATORIO.CODICE_LABORATORIO IS E'Codice del laboratorio';
COMMENT ON COLUMN LABORATORIO.SEDE IS E'Indica quale dei laboratori e la sede principale (quello di Torino). Uno solo dei record della tabella potra essere la sede. Valorizzare a ''S'' per indicare la sede principale.';
COMMENT ON COLUMN LABORATORIO.DESCRIZIONE IS E'Descrizione del laboratorio';
COMMENT ON COLUMN LABORATORIO.INDIRIZZO IS E'Indirizzo del laboratorio';
COMMENT ON COLUMN LABORATORIO.CAP IS E'Controllo di validita: deve essere un campo numerico di 5';
COMMENT ON COLUMN LABORATORIO.COMUNE IS E'Comune in cui e situato il laboratorio';
COMMENT ON COLUMN LABORATORIO.RIFERIMENTI IS E'Informazioni aggiuntive come ad esempio telefono e fax';
COMMENT ON COLUMN ORGANIZZAZIONE_PROFESSIONALE.ID_ORGANIZZAZIONE IS E'Identificativo unicovo della organizzazione. Utilizzare sequence oracle';
COMMENT ON COLUMN ORGANIZZAZIONE_PROFESSIONALE.ID_TIPO_ORGANIZZAZIONE IS E'Identificativo univoco attribuito dal sistema';
COMMENT ON COLUMN ORGANIZZAZIONE_PROFESSIONALE.CF_PARTITA_IVA IS E'Puo contenere il codice fiscale o la partita iva. Effettuare i controlli di validita sul check-digit. In caso di codice fiscale memorizzare e gestire i campi corrispondenti sulle form con lettere in MAIUSCOLO';
COMMENT ON COLUMN ORGANIZZAZIONE_PROFESSIONALE.RAGIONE_SOCIALE IS E'Ragione sociale dell''organizzazione professionale. Potrebbe coincidere, nella maggior parte dei casi con il Nome dell''organizzazione, per cui in fase di inserimento, dopo aver selezionato il "Tipo organizzazione" impostare la Ragione sociale con lo stesso valore.';
COMMENT ON COLUMN ORGANIZZAZIONE_PROFESSIONALE.SEDE_TERRITORIALE IS E'Campo descrittivo contenente la sede territoriale di riferimento.';
COMMENT ON COLUMN ORGANIZZAZIONE_PROFESSIONALE.CAP IS E'Controllo di validita: deve essere un campo numerico di 5';
COMMENT ON COLUMN ORGANIZZAZIONE_PROFESSIONALE.COMUNE_RESIDENZA IS E'Uno dei comuni presenti sulla tabella "Comune"';
COMMENT ON COLUMN ORGANIZZAZIONE_PROFESSIONALE.EMAIL IS E'Deve avere un formato e.mail valido';
COMMENT ON COLUMN ANAGRAFICA.ID_ANAGRAFICA IS E'Numero di identificativo univoco assegnato dal sistema. Utilizzare sequence oracle';
COMMENT ON COLUMN ANAGRAFICA.CODICE_IDENTIFICATIVO IS E'Puo contenere il codice fiscale o la partita iva. Effettuare i controlli di validita sul check-digit. In caso di codice fiscale memorizzare e gestire i campi corrispondenti sulle form con lettere in MAIUSCOLO';
COMMENT ON COLUMN ANAGRAFICA.TIPO_PERSONA IS E'Indica se trattasi di persona fisica o giuridica\nF - Persona fisica\nG - Persona giuridica';
COMMENT ON COLUMN ANAGRAFICA.COGNOME_RAGIONE_SOCIALE IS E'Potra contenere sia la Ragione sociale, per persona giuridica, sia il Cognome se persona fisica';
COMMENT ON COLUMN ANAGRAFICA.NOME IS E'Significativo solo nel caso di persona fisica';
COMMENT ON COLUMN ANAGRAFICA.CAP IS E'Controllo di validita: deve essere un campo numerico di 5';
COMMENT ON COLUMN ANAGRAFICA.COMUNE_RESIDENZA IS E'Uno dei comuni presenti sulla tabella "Comune"';
COMMENT ON COLUMN ANAGRAFICA.EMAIL IS E'Deve avere un formato e.mail valido';
COMMENT ON COLUMN ANAGRAFICA.ID_ORGANIZZAZIONE IS E'Organizzazione di appartenenza nel caso di Tecnico';
COMMENT ON COLUMN ANAGRAFICA.TIPO_UTENTE IS E'Indica se l''anagrafica appartiene ad un utente del sistema e di che tipo:\nL - Dipendente del LAR\nP - Utente Privato\nT - Utente Tecnico';
COMMENT ON COLUMN ANAGRAFICA.ID_ANAGRAFICA_AZIENDA IS E'Indica se l''utente rappresenta un''azienda (diverso da null) e quale';
COMMENT ON COLUMN ANAGRAFICA.ID_ANAGRAFICA_2 IS E'Utilizzata come chiave unica per individuare tentativi di inserimenti di anagrafiche gia'' esistenti';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.ID_RICHIESTA IS E'Identificativo univoco della richiesta attribuito automaticamente. Utilizzare sequence oracle';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.DATA_INSERIMENTO_RICHIESTA IS E'Data in cui e avvenuta la richiesta di analisi. Da attribuirsi in fase iniziale del processo di richiesta nuova analisi, quando il campione e allo stato di bozza. Nell''ultimo step, quello di conferma finale della richiesta aggiornare nuovamente la data con quella di sistema.';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.CODICE_MATERIALE IS E'Uno dei valori della tabella "Materiale". E'' inseribile in fase di richiesta nuova analisi e dal lato FrontOffice e modificabile solo se sulla tabella "Fasi Richiesta" il "Numero fase" e inferiore a 5';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.ANNO IS E'Anno di riferimento. Al ricevimento del campione, quando viene passato allo stato di "Ricevuto campione", verra attribuito automaticamente l''anno in corso utilizzando la data di sistema';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.NUMERO_CAMPIONE IS E'Numero progressivo attribuito automaticamente nell''ambito dell''anno e materiale. Viene attribuito assieme all''anno quando il campione viene passato allo stato di "Ricevuto campione". Serve all''utente di laboratorio per proseguire in sequenza nell''effettuazione delle analisi.';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.DESCRIZIONE_ETICHETTA IS E'Campo di libera digitazione in cui si potra inserire un codice o descrizione per aiutare ad identificare il campione';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.ANAGRAFICA_UTENTE IS E'Contiene il codice utente che ha effettuato l''inserimento della richiesta di analisi, che puo essere un tecnico, un privato o un dipendente del LAR';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.ANAGRAFICA_TECNICO IS E'Indica il codice anagrafico del tecnico:\nviene valorizzato nel caso in cui l''utente che sta effettuando l''inserimento dei dati del campione sia un dipendente del LAR e il committente e un tecnico.';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.LABORATORIO_CONSEGNA IS E'Riferimento al laboratorio in cui il cliente consegna il campione e sara uno dei valori della tabella "Laboratorio"';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.LABORATORIO_ANALISI IS E'Riferimento al laboratorio in cui verra effettuata l''analisi del campione e sara uno dei valori della tabella "Laboratorio". Viene assegnato in fase di "Analisi richiesta"';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.CODICE_MODALITA IS E'Dato della tabella "Modalita di consegna"';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.STATO_ATTUALE IS E'Codice identificativo dello stato cui si trova il campione. Ad ogni variazione di stato, verra memorizzato un nuovo record sulla tabella "Tracciatura" e lo stato attuale in questo campo. Assume uno dei valori possibili della tabella "Codifica tracciabilita".\nIn fase di inserimento di una nuova richiesta di analisi lo stato e ''00 - Richiesta in bozza''. Fino a quando non sono completati tutti gli step non verra aggiornato a ''10 - Analisi richiesta''.';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.STATO_ANOMALIA IS E'Nel caso in cui si sia verificata una anomalia e possibile indicare il blocco o l''anomalia.\nQuando il campione si trova allo step "10 - Analisi richiesta" o "30 - Referto da emettere" puo essere indicato:\n"B" Bloccato\n"A" Anomalo';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.PAGAMENTO IS E'Si tratta di un flag che indica se e stato effettuato il pagamento da parte del cliente.\nPuo assumere i valori:\nS - per pagamento avvenuto\nN - manca pagamento\nG - prestazione gratuita\n\nIn fase di inserimento della richiesta viene impostato a "S".';
COMMENT ON COLUMN ETICHETTA_CAMPIONE.NOTE_CLIENTE IS E'Informazioni aggiuntive di qualsiasi tipo fornite dal cliente';
COMMENT ON COLUMN FASI_RICHIESTA.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN FASI_RICHIESTA.NUMERO_FASE IS E'Ad ogni passaggio alla fase successiva viene aggiornato il Numero fase, solo in incremento, con il numero di quella appena completata.\nSe si duplica un campione in bozza si impostera il numero della ultima fase (6).\nLe fasi sono:\n1 - Identificazione campione\n2 - Coordinate geografiche\n3 - Anagrafica richiedente\n4 - Fattura commerciale\n5 - Dati del campione\n6 - Analisi richiesta';
COMMENT ON COLUMN FIRMA_REFERTO.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN FIRMA_REFERTO.ID_FIRMA IS E'Identificativo del firmatario del rapporto di prova';
COMMENT ON COLUMN FIRMA_REFERTO.NOTE IS E'Informazioni aggiuntive sull''esito delle analisi. Nella stampa del rapporto di prova queste note vengono riportate in ultima pagina con il giudizio sul terreno';
COMMENT ON COLUMN FOSFORO_METODO_OLSEN.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN FOSFORO_METODO_OLSEN.LETTURA_FOSFORO IS E'Campo di input (unita di misura p.p.m.). Controlli:\n[Lettura Fosforo] > 0';
COMMENT ON COLUMN FOSFORO_METODO_OLSEN.FOSFORO_ASSIMILABILE IS E'Campo calcolato (unita di misura p.p.m.) se:\n[Lettura Fosforo] > 0\nFormula:\nsi imposta uguale a [Lettura Fosforo]';
COMMENT ON COLUMN FOSFORO_METODO_OLSEN.ANIDRIDE_FOSFORICA IS E'Campo calcolato (unita di misura p.p.m.) se:\n[Lettura Fosforo] > 0\nFormula:\n[Lettura Fosforo] * 2,29';
COMMENT ON COLUMN GRANULOMETRIA_A_4_FRAZIONI.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN GRANULOMETRIA_A_4_FRAZIONI.ARGILLA IS E'Campo di input. Valore %.\nControlli: [Argilla] >= 0';
COMMENT ON COLUMN GRANULOMETRIA_A_4_FRAZIONI.LIMO_TOTALE IS E'Campo di input. Valore %.\nControlli: [Limo totale] >= 0';
COMMENT ON COLUMN GRANULOMETRIA_A_4_FRAZIONI.LIMO_FINE IS E'Campo di input. Valore %.\nControlli: [Limo fine] >= 0 and <= [Limo totale]';
COMMENT ON COLUMN GRANULOMETRIA_A_4_FRAZIONI.LIMO_GROSSO IS E'Campo Calcolato. Valore %.\nFormula: [Limo totale] - [Limo fine]';
COMMENT ON COLUMN GRANULOMETRIA_A_4_FRAZIONI.SABBIA_TOTALE IS E'Campo calcolato. Valore %.\nControlli: 100 - ([Argilla] + [Limo totale])';
COMMENT ON COLUMN GRANULOMETRIA_A_5_FRAZIONI.ID_RICHIESTA IS E'Identificativo univoco della richiesta.';
COMMENT ON COLUMN GRANULOMETRIA_A_5_FRAZIONI.ARGILLA IS E'Campo di input. Valore %.\nControlli: [Argilla] >= 0';
COMMENT ON COLUMN GRANULOMETRIA_A_5_FRAZIONI.SABBIA_TOTALE IS E'Campo di input. Valore %.\nControlli: [Sabbia totale] >= 0';
COMMENT ON COLUMN GRANULOMETRIA_A_5_FRAZIONI.SABBIA_GROSSA IS E'Campo di input. Valore %.\nControlli: [Sabbia grossa] >= 0 and <= [Sabbia totale]';
COMMENT ON COLUMN GRANULOMETRIA_A_5_FRAZIONI.LIMO_TOTALE IS E'Campo di input. Valore %.\nControlli: [Limo totale] >= 0';
COMMENT ON COLUMN GRANULOMETRIA_A_5_FRAZIONI.LIMO_FINE IS E'Campo di input. Valore %.\nControlli: [Limo fine] >= 0 and <= [Limo totale]';
COMMENT ON COLUMN GRANULOMETRIA_A_5_FRAZIONI.SABBIA_FINE IS E'Campo Calcolato. Valore %.\nFormula: [Sabbia totale] - [Sabbia grossa]';
COMMENT ON COLUMN GRANULOMETRIA_A_5_FRAZIONI.LIMO_GROSSO IS E'Campo Calcolato. Valore %.\nFormula: [Limo totale] - [Limo fine]\nControlli: [Argilla] + [Sabbia fine] + [Sabbia grossa] + [Limo grosso] + [Limo fine] = 100';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.LETTURA_DENSITA_1_15 IS E'Campo di input.';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.LETTURA_DENSITA_1_30 IS E'Campo di input. Controlli:\n([Lettura a 1''15"] > 0 and >= [Lettura a 1''30"]) or [Lettura a 1''30"] > 0';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.LETTURA_DENSITA_1_45 IS E'Campo di input. Controlli:\n([Lettura a 1''30"] > 0 and [Lettura a 1''15"] >= [Lettura a 1''30"]) or\n([Lettura a 1''45"] > 0" and [Lettura a 1''15"] > [Lettura a 1''45"]) or\n([Lettura a 1''45"] > 0" and [Lettura a 1''30"] >= [Lettura a 1''45"])';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_SOLUZ_FONDO_1 IS E'Campo di input. Deve essere > 0';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.TEMPERATURA_1 IS E'Campo di input in ?C. Deve essere compresa tra 10 e 30';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.FATTORE_TEMP_GRANULARE_1 IS E'Campo calcolato. Formula:\n((55,104 * [Temperatura 1]) + 18550) ; ((1 + (0,02078 * [Temperatura 1])) * 1000)';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DIAMETRO_1_15 IS E'Campo calcolato se [Lettura a 1''15"] > 0.\nFormula:\n[Fattore temperatura granulare 1] * (RADQ ((24,5 - (0,13 * [Lettura densita a 1''15''''] )) ; 1,25 ))\n\nN.B: L''operazione RADQ indica che deve essere fatta la radice quadrata';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DIAMETRO_1_30 IS E'Campo calcolato se [Lettura a 1''30"] > 0.\nFormula:\n[Fattore temperatura granulare 1] * (RADQ ((24,5 - (0,13 * [Lettura densita a 1''30''''] )) ; 1,50 ))\n\nN.B: L''operazione RADQ indica che deve essere fatta la radice quadrata';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DIAMETRO_1_45 IS E'Campo calcolato se [Lettura a 1''45"] > 0.\nFormula:\n[Fattore temperatura granulare 1] * (RADQ ((24,5 - (0,13 * [Lettura densita a 1''45"] )) ; 1,75 ))\n\nN.B: L''operazione RADQ indica che deve essere fatta la radice quadrata';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_LORDA_50_1_2 IS E'Campo calcolato se\n[DIAMETRO m c part sosp 1''30"] > 0 and [DIAMETRO m c part sosp 1''15"] > [DIAMETRO m c part sosp 1''30"] and ([DIAMETRO m c part sosp 1''45"] = 0 or [DIAMETRO m c part sosp 1''30"] < 50)\nFormula:\n[Lettura densita a 1''15''''] - ((([DIAMETRO m c part sosp 1''15"] - 50) ; ([DIAMETRO m c part sosp 1''15"] - [DIAMETRO m c part sosp 1''30"])) * ([Lettura densita a 1''15''''] - [Lettura densita a 1''30"]))';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_LORDA_50_1_3 IS E'Campo calcolato se\n[DIAMETRO m c part sosp 1''45"] > 0 and [DIAMETRO m c part sosp 1''15"] > [DIAMETRO m c part sosp 1''45"] and [DIAMETRO m c part sosp 1''30"] = 0\nFormula:\n[Lettura densita a 1''15''''] - ((([DIAMETRO m c part sosp 1''15"] - 50) ; ([DIAMETRO m c part sosp 1''15"] - [DIAMETRO m c part sosp 1''45"])) * ([Lettura densita a 1''15''''] - [Lettura densita a 1''45"]))';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_LORDA_50_2_3 IS E'Campo calcolato se\n[DIAMETRO m c part sosp 1''45"] > 0 and [DIAMETRO m c part sosp 1''30"] > [DIAMETRO m c part sosp 1''45"] and ([DIAMETRO m c part sosp 1''15"] = 0 or [DIAMETRO m c part sosp 1''30"] >= 50)\nFormula:\n[Lettura densita a 1''30''''] - ((([DIAMETRO m c part sosp 1''30"] - 50) ; ([DIAMETRO m c part sosp 1''30"] - [DIAMETRO m c part sosp 1''45"])) * ([Lettura densita a 1''30''''] - [Lettura densita a 1''45"]))';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_LORDA_50 IS E'Campo calcolato. Al momento non viene calcolato.';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.SABBIA IS E'Campo calcolato se:\n([Densita lorda calcolata 50 micron 1-2] > 0 or [Densita lorda calcolata 50 micron 1-3] > 0 or [Densita lorda calcolata 50 micron 2-3] > 0) and [Densita soluzione di fondo 1] > 0\nFormula (valore %):\n100 - (([Densita lorda calcolata 50 micron 1-2] + [Densita lorda calcolata 50 micron 1-3] + [Densita lorda calcolata 50 micron 2-3] - [Densita soluzione di fondo 1]) * 2 )';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.LETTURA_DENSITA_9_30 IS E'Campo di input. Controlli:\n([Lettura densita a 1''45''''] = 0 or [Lettura densita a 1''45''''] >= [Lettura densita a 9''30"]) and ([Lettura densita a 1''30"] = 0 or [Lettura densita a 1''30''''] >= [Lettura densita a 9''30''''])';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.LETTURA_DENSITA_10 IS E'Campo di input. Controlli:\n([Lettura densita a 9''30''''] > 0 and [Lettura densita a 9''30''''] >= [Lettura densita a 10'']) or [Lettura densita a 10] >= 0)';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.LETTURA_DENSITA_10_45 IS E'Campo di input. Controlli:\n([Lettura densita a 10''] > 0 and [Lettura densita a 9''30"] >= [Lettura densita a 10]) or ([Lettura densita a 10''45"] >= 0 and [Lettura densita a 9''30"] >= [Lettura densita a 10''45"]) or ([Lettura densita a 10''45"] >= 0 and [Lettura densita a 10''] >= [Lettura densita a 10''45"])';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_SOLUZ_FONDO_2 IS E'Campo di input. Controlli:\n(([Lettura densita a 9''30"] > 0 or ([Lettura densita a 10''] > 0 and [Lettura densita a 10''45"] > 0)) and [Densita soluzione di fondo 2] > 0) or ([Lettura densita a 9''30"] = 0 and [Lettura densita a 10''] = 0 and [Densita soluzione di fondo 2] = 0)';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.TEMPERATURA_2 IS E'Campo di input in ?C. Controlli:\n([Densita soluzione di fondo 2] = 0 and [Temperatura 2] = 0) or ([Densita soluzione di fondo 2] > 0 and ([Temperatura 2] >= 10 and <= 30))';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.FATTORE_TEMP_GRANULARE_2 IS E'Campo calcolato se [Temperatura 2] > 0.\nFormula:\n((55,104 * [Temperatura 2]) + 18550) ; ((1 + (0,02078 * [Temperatura 2])) * 1000)';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DIAMETRO_9_30 IS E'Campo calcolato se [Lettura a 9''30"] > 0.\nFormula:\n[Fattore temperatura granulare 2] * (RADQ ((24,5 - (0,13 * [Lettura densita a 9''30''''] )) ; 9,5 ))\n\nN.B: L''operazione RADQ indica che deve essere fatta la radice quadrata';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DIAMETRO_10 IS E'Campo calcolato se [Lettura a 10''] > 0.\nFormula:\n[Fattore temperatura granulare 2] * (RADQ ((24,5 - (0,13 * [Lettura densita a 10''] )) ; 10 ))\n\nN.B: L''operazione RADQ indica che deve essere fatta la radice quadrata';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DIAMETRO_10_45 IS E'Campo calcolato se [Lettura a 10''45"] > 0.\nFormula:\n[Fattore temperatura granulare 2] * (RADQ ((24,5 - (0,13 * [Lettura densita a 10''45''''] )) ; 10,75 ))\n\nN.B: L''operazione RADQ indica che deve essere fatta la radice quadrata';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_LORDA_20_4_5 IS E'Campo calcolato se\n[DIAMETRO m c part sosp 10''] > 0 and [DIAMETRO m c part sosp 9''30"] > [DIAMETRO m c part sosp 10''] and ([DIAMETRO m c part sosp 10''45"] = 0 or [DIAMETRO m c part sosp 10''] < 20)\nFormula:\n[Lettura densita a 9''30''''] - ((([DIAMETRO m c part sosp 9''30"] - 20) ; ([DIAMETRO m c part sosp 9''30"] - [DIAMETRO m c part sosp 10''])) * ([Lettura densita a 9''30''''] - [Lettura densita a 10'']))';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_LORDA_20_4_6 IS E'Campo calcolato se\n[DIAMETRO m c part sosp 10''45"] > 0 and [DIAMETRO m c part sosp 9''30"] > [DIAMETRO m c part sosp 10''45"] and [DIAMETRO m c part sosp 10''] = 0\nFormula:\n[Lettura densita a 9''30''''] - ((([DIAMETRO m c part sosp 9''30"] - 20) ; ([DIAMETRO m c part sosp 9''30"] - [DIAMETRO m c part sosp 10''45"])) * ([Lettura densita a 9''30''''] - [Lettura densita a 10''45"]))';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_LORDA_20_5_6 IS E'Campo calcolato se\n[DIAMETRO m c part sosp 10''45"] > 0 and [DIAMETRO m c part sosp 10''] > [DIAMETRO m c part sosp 10''45"] and ([DIAMETRO m c part sosp 9''30"] = 0 or [DIAMETRO m c part sosp 10''] >= 20)\nFormula:\n[Lettura densita a 10''] - ((([DIAMETRO m c part sosp 10''] - 20) ; ([DIAMETRO m c part sosp 10''] - [DIAMETRO m c part sosp 10''45"])) * ([Lettura densita a 10''] - [Lettura densita a 10''45"]))';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_LORDA_20 IS E'Campo calcolato. Al momento non viene calcolato.';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.LIMO_GROSSO IS E'Campo calcolato se:\n([Densita lorda calcolata 50 micron 1-2] > 0 or [Densita lorda calcolata 50 micron 1-3] > 0 or [Densita lorda calcolata 50 micron 2-3] > 0) and\n([Densita lorda calcolata 20 micron 4-5] > 0 or [Densita lorda calcolata 20 micron 4-6] > 0 or [Densita lorda calcolata 20 micron 5-6] >0) and\n[Densita soluzione di fondo 1] > 0 and [Densita soluzione di fondo 2] > 0\nFormula (valore %):\n(([Densita lorda calcolata 50 micron 1-2] + [Densita lorda calcolata 50 micron 1-3] + [Densita lorda calcolata 50 micron 2-3] - [Densita soluzione di fondo 1]) -\n([Densita lorda calcolata 20 micron 4-5] + [Densita lorda calcolata 20 micron 4-6] + [Densita lorda calcolata 20 micron 5-6] - [Densita soluzione di fondo 2])) * 2';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.LETTURA_DENSITA_17 IS E'Campo di input. Controlli:\n([Lettura densita a 10''45''''] = 0 or [Lettura densita a 10''45''''] >= [Lettura densita a 17 h]) and ([Lettura densita a 10''] = 0 or [Lettura densita a 10''''] >= [Lettura densita a 17 h]) and ([Lettura densita a 1''45''''] = 0 or [Lettura densita a 1''45''''] >= [Lettura densita a 17 h])';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.LETTURA_DENSITA_18_30 IS E'Campo di input. Controlli:\n([Lettura densita a 17 h] > 0 and [Lettura densita a 17 h] >= [Lettura densita a 18 h 30'']) or [Lettura densita a 18 h 30''] > 0';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.LETTURA_DENSITA_20 IS E'Campo di input. Controlli:\n([Lettura densita a 18 h 30''] > 0 and [Lettura densita a 17 h] >= [Lettura densita a 18 h 30'']) or ([Lettura densita a 20 h] > 0 and [Lettura densita a 17 h] > [Lettura densita a 20 h]) or ([Lettura densita a 20 h] > 0 and [Lettura densita a 18 h 30''] >= [Lettura densita a 20 h])';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_BIANCO_17 IS E'Campo di input.';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_BIANCO_18_30 IS E'Campo di input.';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_BIANCO_20 IS E'Campo di input. Controlli:\n[Densita bianco a 17 h] > 0 or [Densita bianco a 18 h 30''] > 0 or [Densita bianco a 20 h] > 0';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_MEDIA_BIANCO_3 IS E'Campo calcolato. Formula:\n([Densita bianco a 17 h] + [Densita bianco a 18 h 30''] + [Densita bianco a 20 h]) ; (ROUND [Densita bianco a 17 h] ; ([Densita bianco a 17 h] + 1) + ROUND [Densita bianco a 18 h 30'' h] ; ([Densita bianco a 18 h 30''] + 1) + ROUND [Densita bianco a 20 h] ; ([Densita bianco a 20 h] + 1) )\n\nN.B: l''operazione ROUND indica che il calcolo tra parentesi deve essere arrotondato al valore numerico intero)';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.TEMPERATURA_17 IS E'Campo di input in ?C. Controlli:\n([Temperatura a 17 h] >= 10 and <= 30) or [Temperatura a 17 h] = 0';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.TEMPERATURA_18_30 IS E'Campo di input in ?C. Controlli:\n([Temperatura a 18 h 30''] >= 10 and <= 30) or [Temperatura a 18 h 30''] = 0';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.TEMPERATURA_20 IS E'Campo di input in ?C. Controlli:\n[Temperatura a 17 h] > 0 or [Temperatura a 18 h 30''] > 0 or ([Temperatura a 20 h] >= 10 or <= 30)';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.TEMPERATURA_MEDIA_3 IS E'Campo calcolato in ?C. Formula:\n([Temperatura a 17 h] + [Temperatura a 18 h 30''] + [Temperatura a 20 h]) ; ( ROUND [Temperatura a 17 h] ; ([Temperatura a 17 h] + 1) + ROUND [Temperatura a 18 h 30''] ; ([Temperatura a 18 h 30''] + 1) + ROUND [Temperatura a 20 h] ; ([Temperatura a 20 h] + 1) )\n\nN.B: l''operazione ROUND indica che il calcolo tra parentesi deve essere arrotondato al valore numerico intero)';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.FATTORE_TEMP_GRANULARE_3 IS E'Campo calcolato. Formula:\n((55,104 * [Temperatura media 3]) + 18550) ; ((1 + (0,02078 * [Temperatura media 3])) * 1000)';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DIAMETRO_17 IS E'Campo calcolato se:\n[Lettura densita a 17 h] > 0\nFormula:\n[Fattore temperatura granulare 3] * (RADQ (( 24,5 - (0,13 * [Lettura densita a 17 h] )) ; 1020 ))\n\nN.B: L''operazione RADQ indica che deve essere fatta la radice quadrata';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DIAMETRO_18_30 IS E'Campo calcolato se:\n[Lettura densita a 18 h 30''] > 0\nFormula:\n[Fattore temperatura granulare 3] * (RADQ (( 24,5 - (0,13 * [Lettura densita a 18 h 30''] )) ; 1110 ))\n\nN.B: L''operazione RADQ indica che deve essere fatta la radice quadrata';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DIAMETRO_20 IS E'Campo calcolato se:\n[Lettura densita a 20 h] > 0\nFormula:\n[Fattore temperatura granulare 3] * (RADQ (( 24,5 - (0,13 * [Lettura densita a 20 h] )) ; 1200 ))\n\nN.B: L''operazione RADQ indica che deve essere fatta la radice quadrata';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_LORDA_2_7_8 IS E'Campo calcolato se\n[DIAMETRO m c part sosp 18 h 30''] > 0 and [DIAMETRO m c part sosp 17 h] > [DIAMETRO m c part sosp 18 h 30''] and ([DIAMETRO m c part sosp 20 h] = 0 or [DIAMETRO m c part sosp 18 h 30''] < 2)\nFormula:\n[Lettura densita a 17 h] - ((([DIAMETRO m c part sosp 17 h] - 2) ; ([DIAMETRO m c part sosp 17 h] - [DIAMETRO m c part sosp 18 h 30''])) * ([Lettura densita a 17 h] - [Lettura densita a 18 h 30'']))';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_LORDA_2_7_9 IS E'Campo calcolato se\n[DIAMETRO m c part sosp 20 h] > 0 and [DIAMETRO m c part sosp 17 h] > [DIAMETRO m c part sosp 20 h] and ([DIAMETRO m c part sosp 18 h 30''] = 0\nFormula:\n[Lettura densita a 17 h] - ((([DIAMETRO m c part sosp 17 h] - 2) ; ([DIAMETRO m c part sosp 17 h] - [DIAMETRO m c part sosp 20 h])) * ([Lettura densita a 17 h] - [Lettura densita a 20 h]))';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_LORDA_2_8_9 IS E'Campo calcolato se\n[DIAMETRO m c part sosp 20 h] > 0 and [DIAMETRO m c part sosp 18 h 30''] > [DIAMETRO m c part sosp 20 h] and ([DIAMETRO m c part sosp 17 h] = 0 or [DIAMETRO m c part sosp 18 h 30''] >= 2)\nFormula:\n[Lettura densita a 18 h 30''] - ((([DIAMETRO m c part sosp 18 h 30''] - 2) ; ([DIAMETRO m c part sosp 18 h 30''] - [DIAMETRO m c part sosp 20 h])) * ([Lettura densita a 18 h 30''] - [Lettura densita a 20 h]))';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.DENSITA_LORDA_2 IS E'Campo calcolato. Al momento non viene calcolato.';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.LIMO_FINE IS E'Campo calcolato se:\n([Densita lorda calcolata 20 micron 4-5] > 0 or [Densita lorda calcolata 20 micron 4-6] > 0 or [Densita lorda calcolata 20 micron 5-6 > 0]) and\n([Densita lorda calcolata 2 micron 7-8] > 0 or [Densita lorda calcolata 2 micron 7-9] > 0 or [Densita lorda calcolata 2 micron 8-9] > 0) and\n[Densita soluzione di fondo 2] > 0 and [Densita media bianco 3] > 0\nFormula (valore %):\n(([Densita lorda calcolata 20 micron 4-5] + [Densita lorda calcolata 20 micron 4-6] + [Densita lorda calcolata 20 micron 5-6] - [Densita soluzione di fondo 2]) -\n([Densita lorda calcolata 2 micron 7-8] + [Densita lorda calcolata 2 micron 7-9] + [Densita lorda calcolata 2 micron 8-9] - [Densita media bianco 3])) * 2';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.ARGILLA_1 IS E'Campo calcolato se:\n[Limo grosso] > 0 or [Limo fine] > 0\nFormula (valore %):\n100 - [Sabbia] - [Limo grosso] - [Limo fine]';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.LIMO IS E'Campo calcolato se:\n[Sabbia] > 0 and ([Densita lorda calcolata 2 micron 7-8] > 0 or [Densita lorda calcolata 2 micron 7-9] > 0 or [Densita lorda calcolata 2 micron 8-9] > 0) and [Limo grosso] = 0 and [Argilla 1] = 0\nFormula (valore %):\n(([Densita lorda calcolata 50 micron 1-2] + [Densita lorda calcolata 50 micron 1-3] + [Densita lorda calcolata 50 micron 2-3] - [Densita soluzione di fondo 1]) -\n([Densita lorda calcolata 2 micron 7-8] + [Densita lorda calcolata 2 micron 7-9] + [Densita lorda calcolata 2 micron 8-9] - [Densita media bianco 3])) * 2';
COMMENT ON COLUMN GRANULOMETRIA_METODO_BOJOUCOS.ARGILLA_2 IS E'Campo calcolato se:\n[Limo grosso] = 0 and [Limo fine] = 0 and [Argilla 1] = 0 and [Sabbia] > 0 and [Limo] > 0\nFormula (valore %):\n100 - [Sabbia] - [Limo]';
COMMENT ON COLUMN GRANULOMETRIA_STANDARD.ID_RICHIESTA IS E'Identificativo univoco della richiesta.';
COMMENT ON COLUMN GRANULOMETRIA_STANDARD.ARGILLA IS E'Campo di input. Valore %.\nControlli: [Argilla] >= 0';
COMMENT ON COLUMN GRANULOMETRIA_STANDARD.LIMO_TOTALE IS E'Campo di input. Valore %.\nControlli: [Limo totale] >= 0';
COMMENT ON COLUMN GRANULOMETRIA_STANDARD.SABBIA_TOTALE IS E'Campo calcolato in %.\nControlli: [Argilla] + [Limo totale] <= 100\nFormula: 100 - ([Argilla] + [Limo totale])';
COMMENT ON COLUMN LOG_ACCESSI.ID_ANAGRAFICA IS E'Numero di identificativo univoco assegnato dal sistema. Utilizzare sequence oracle';
COMMENT ON COLUMN LOG_ACCESSI.USERID IS E'Username dell''archivio IRIDE. formato di esempio: mario.rossi';
COMMENT ON COLUMN LOG_ACCESSI.SSID IS E'Contiene la data e l''ora estratta dal Time Stamping fornito da IRIDE dell''istante di autenticazione. Formato di esempio del time stamping: 13-07-2001-16:38:24';
COMMENT ON COLUMN LOG_ACCESSI.SISTEMA IS E'Indica il sistema a cui si e acceduto:\nFO - FrontOffice (accesso con IRIDE PA)\nBO - BackOffice (accesso con IRIDE SP)';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.LETTURA_FERRO IS E'Campo di input (unita di misura p.p.m.). Controlli:\n[Lettura Ferro] >= 0';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.DILUIZIONE_FERRO IS E'Campo di input. Valore di default 10. Controlli:\n[Diluizione Ferro] >= 0';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.FERRO_ASSIMILABILE IS E'Campo calcolato se:\n[Lettura Ferro] > 0 and [Diluizione Ferro] > 0\nFormula:\n2 * [Lettura Ferro] * [Diluizione Ferro]';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.LETTURA_MANGANESE IS E'Campo di input (unita di misura p.p.m.). Controlli:\n[Lettura Manganese] >= 0';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.DILUIZIONE_MANGANESE IS E'Campo di input. Valore di default 10. Controlli:\n[Diluizione Manganese] >= 0';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.MANGANESE_ASSIMILABILE IS E'Campo calcolato se:\n[Lettura Manganese] > 0 and [Diluizione Manganese] > 0\nFormula:\n2 * [Lettura Manganese] * [Diluizione Manganese]';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.LETTURA_ZINCO IS E'Campo di input (unita di misura p.p.m.). Controlli:\n[Lettura Zinco] >= 0';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.DILUIZIONE_ZINCO IS E'Campo di input. Valore di default 10. Controlli:\n[Diluizione Zinco] >= 0';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.ZINCO_ASSIMILABILE IS E'Campo calcolato se:\n[Lettura Zinco] > 0 and [Diluizione Zinco] > 0\nFormula:\n2 * [Lettura Zinco] * [Diluizione Zinco]';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.LETTURA_RAME IS E'Campo di input (unita di misura p.p.m.). Controlli:\n[Lettura Rame] >= 0';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.DILUIZIONE_RAME IS E'Campo di input. Valore di default 10. Controlli:\n[Diluizione Rame] >= 0';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.RAME_ASSIMILABILE IS E'Campo calcolato se:\n[Lettura Rame] > 0 and [Diluizione Rame] > 0\nFormula:\n2 * [Lettura Rame] * [Diluizione Rame]';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.LETTURA_BORO IS E'Campo di input (unita di misura p.p.m.). Controlli:\n[Lettura Boro] >= 0';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.DILUIZIONE_BORO IS E'Campo di input. Valore di default 50. Controlli:\n[Diluizione Boro] >= 0';
COMMENT ON COLUMN MICROELEMENTI_METODO_DTPA.BORO_ASSIMILABILE IS E'Campo calcolato se:\n[Lettura Boro] > 0 and [Diluizione Boro] > 0\nFormula:\n2 * [Lettura Boro] * [Diluizione Boro]';
COMMENT ON COLUMN REAZIONE_SUOLO.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN REAZIONE_SUOLO.PH_ACQUA IS E'Campi di input. Controlli:\n[pH in acqua 1:2,5] > 0 and <= 14';
COMMENT ON COLUMN REAZIONE_SUOLO.PH_CLORURO_POTASSIO IS E'Campi di input. Controlli:\n[pH in cloruro di potassio] >= 0 and <= 14';
COMMENT ON COLUMN REAZIONE_SUOLO.PH_TAMPONE IS E'Campi di input. Controlli:\n[pH tampone] >= 0 and <= 14';
COMMENT ON COLUMN SOSTANZA_ORGANICA.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN SOSTANZA_ORGANICA.LETTURA_SOSTANZA_ORGANICA IS E'Campo di input in %. Controlli:\n[Lettura sostanza organica] > 0 or [Carbonio organico metodo ANA] > 0';
COMMENT ON COLUMN SOSTANZA_ORGANICA.PESO_CAMPIONE IS E'Campo di input in grammi.\nControlli: Se [Lettura sostanza organica] > 0  [Peso campione] > 0';
COMMENT ON COLUMN SOSTANZA_ORGANICA.SOSTANZA_ORGANICA IS E'Campo calcolato in % se:\n[Lettura sostanza organica] > 0 and [Peso campione] > 0\nFormula:\n([Lettura sostanza organica] ; [Peso campione])';
COMMENT ON COLUMN SOSTANZA_ORGANICA.CARBONIO_ORGANICO IS E'Campo calcolato in % se:\n[Sostanza organica] > 0\nFormula:\n[Sostanza organica] ; 1,72';
COMMENT ON COLUMN SOSTANZA_ORGANICA.CARBONIO_ORGANICO_METODO_ANA IS E'Campo di input in %. Controlli:\n[Lettura sostanza organica] > 0 or [Carbonio organico metodo ANA] > 0';
COMMENT ON COLUMN SOSTANZA_ORGANICA.SOSTANZA_ORGANICA_METODO_ANA IS E'Campo calcolato in % se:\n[Carbonio organico metodo ANA] > 0\nFormula:\n[Carbonio organico metodo ANA] * 1,72';
COMMENT ON COLUMN TRACCIATURA.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN TRACCIATURA.PROGRESSIVO IS E'Progressivo nell''ambito del campione; indica la sequenza temporale con cui sono avvenuti i cambiamenti di stato';
COMMENT ON COLUMN TRACCIATURA.CODICE IS E'Uno dei valori della tabella "Codifica tracciabilita". Indica gli step percorsi dal campione';
COMMENT ON COLUMN TRACCIATURA.DATA IS E'Data in cui e avvenuta l''azione o il cambiamento di stato. Dovra essere sempre consecutiva nell''ambito del campione (uguale o superiore all''ultimo progressivo)';
COMMENT ON COLUMN TRACCIATURA.NOTE IS E'Note aggiuntive che possono essere ad ogni step con opportuna funzione di Accettazione o Scarto. Queste note sono visualizzabili anche da parte del cliente che controlla lo stato di avanzamento dell''analisi';
COMMENT ON COLUMN UMIDITA_CAMPIONE.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN UMIDITA_CAMPIONE.TARA IS E'Campo di Input in grammi. Controlli:\n[Tara] >= 0';
COMMENT ON COLUMN UMIDITA_CAMPIONE.PESO_NETTO_UMIDO IS E'Campo di Input in grammi. Controlli:\n[Peso netto umido] >= 0';
COMMENT ON COLUMN UMIDITA_CAMPIONE.PESO_LORDO_SECCO IS E'Campo di Input in grammi. Controlli:\n[Peso lordo secco] >= 0 and [Peso lordo secco] <= [Peso netto umido]';
COMMENT ON COLUMN UMIDITA_CAMPIONE.UMIDITA_CAMPIONE IS E'Campo calcolato in %. Formula:\n([Peso netto umido] - ([Peso lordo secco] - [Tara])) ; [Peso netto umido] * 100';
COMMENT ON COLUMN UMIDITA_CAMPIONE.SOSTANZA_SECCA IS E'Campo calcolato  in %.. Formula:\n100 - [Umidita del campione]';
COMMENT ON COLUMN ANALISI_DATI.ID_RICHIESTA IS E'Identificativo univoco della richiesta attribuito automaticamente';
COMMENT ON COLUMN ANALISI_DATI.NOTE IS E'Campo descrittivo in cui inserire eventuali osservazioni e problemi';
COMMENT ON COLUMN ANALISI_RICHIESTE.ID_RICHIESTA IS E'Identificativo univoco della richiesta attribuito automaticamente';
COMMENT ON COLUMN ANALISI_RICHIESTE.CODICE_ANALISI IS E'Codice identificativo dell''analisi. Ogni singola analisi viene identificata da un codice';
COMMENT ON COLUMN ANALISI_RICHIESTE.COSTO_ANALISI IS E'Costo di ogni singola analisi richiesta calcolato prelevando il corrispondente prezzo dalla tabella "Tariffe" in base alla fasce di prezzo applicata (intero o ridotto) all''utente.\nLa tariffa e sempre espressa in Euro comprensiva di aliquota IVA fissa al 20% su tutti gli importi.';
COMMENT ON COLUMN AZOTO.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN AZOTO.AZOTO_TOTALE_METODO_ANA IS E'Campo di input in %. Controlli:\n[Azoto totale] > 0 or [Azoto Kjeldahl] > 0';
COMMENT ON COLUMN AZOTO.AZOTO_KJELDAHL IS E'Campo di input in %. Controlli:\nSe [Azoto totale] nullo o = "0"\n[Azoto Kjeldahl] > 0';
COMMENT ON COLUMN AZOTO.RAPPORTO_C_N IS E'Campo calcolato\nse:\n[Carbonio organico] tabella "Sostanza organica" > 0 and [Azoto totale] > 0\nFormula:\n[Carbonio organico] tabella "Sostanza organica"; [Azoto totale]\n\nse:\n[Carbonio organico metodo ANA] tabella "Sostanza organica" > 0 and [Azoto totale] > 0\nFormula:\n[Carbonio organico metodo ANA] tabella "Sostanza organica"; [Azoto totale]\n\nse:\n[Carbonio organico] tabella "Sostanza organica" > 0 and [Azoto Kjeldahl] > 0\nFormula:\n[Carbonio organico] tabella "Sostanza organica"; [Azoto  Kjeldahl]\n\nse:\n[Carbonio organico metodo ANA] tabella "Sostanza organica" > 0 and [Azoto Kjeldahl] > 0\nFormula:\n[Carbonio organico metodo ANA] tabella "Sostanza organica"; [Azoto Kjeldahl]';
COMMENT ON COLUMN CALCIMETRIA.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN CALCIMETRIA.LETTURA_CALCIMETRO IS E'Campo di input';
COMMENT ON COLUMN CALCIMETRIA.PRESSIONE_ATMOSFERICA IS E'Campo di input. Controlli:\n[Pressione atmosferica] > 0';
COMMENT ON COLUMN CALCIMETRIA.TEMPERATURA IS E'Campo di input in ?C. Controlli:\n[Temperatura] >= 10 and <= 30';
COMMENT ON COLUMN CALCIMETRIA.TENSIONE_DI_VAPORE IS E'Campo calcolato se:\n[Temperatura] >= 10 and <= 30\nFormula:\n(((385,366 * [Temperatura]) + 3648,78) ; (1 - ( 0,0176151 * [Temperatura]))) ; 1000';
COMMENT ON COLUMN CALCIMETRIA.CARBONATO_CALCIO_TOTALE IS E'Campo calcolato in % se:\n[Lettura calcimetro] > 0 and [Pressione atmosferica] > 0 and [Fattore conversione temperatura calcimetro] > 0 and [Temperatura] > 0\nFormula:\n([Lettura calcimetro] * ([Pressione atmosferica] - [Fattore conversione temperatura calcimetro]) * 273 * 0,44655) ; (760 * (273 + [Temperatura]))';
COMMENT ON COLUMN CALCIMETRIA.CALCARE_ATTIVO IS E'Campo di input in % . Controlli:\n[Calcare attivo] >= 0';
COMMENT ON COLUMN CALCIMETRIA.LETTURA_FERRO_OSSALATO IS E'Campo di input (unita di misura p.p.m. Controlli:\n[Lettura ferro in ossalato] >= 0\n\nN.B: l''unita di misura p.p.m. e utilizzata in molti dati e significa Parte Per Milione';
COMMENT ON COLUMN CALCIMETRIA.DILUIZIONE_DETERMINA_FERRO IS E'Campo di input. Controlli:\n[Diluizione per determina Ferro in ossalato] >= 0';
COMMENT ON COLUMN CALCIMETRIA.FERRO_OSSALATO IS E'Campo calcolato (unita di misura p.p.m.) se:\n[Lettura ferro in ossalato] > 0 and [Diluizione per determina Ferro in ossalato] > 0\nFormula:\n[Lettura ferro in ossalato] * [Diluizione per determina Ferro in ossalato]';
COMMENT ON COLUMN CALCIMETRIA.INDICE_POTERE_CLOROSANTE IS E'Campo calcolato se:\n[Calcare attivo] > 0 and [Ferro in ossalato] > 0\nFormula:\n([Calcare attivo] * 10000) ; ([Ferro in ossalato] ** 2\n\nN.B: l''operazione "** 2" indica l''elevazione al quadrato';
COMMENT ON COLUMN CAMPIONE_VEGETALI_ERBACEE.ID_RICHIESTA IS E'Identificativo univoco attribuito automaticamente';
COMMENT ON COLUMN CAMPIONE_VEGETALI_ERBACEE.DATA_CAMPIONAMENTO IS E'Data in cui e avvenuto il prelievo del campione';
COMMENT ON COLUMN CAMPIONE_VEGETALI_ERBACEE.ID_SPECIE IS E'Uno dei valori presenti sulla tabella "Specie Coltura" solo tra quelli di tipo coltura "Erbacea".';
COMMENT ON COLUMN CAMPIONE_VEGETALI_ERBACEE.CAMPIONE_TERRENO IS E'Nel caso in cui, negli ultimi 4 anni sia stata effettuata un''analisi sul terreno da cui e stato prelevato il campione di vegetale, indicare il numero identificativo del campione di terreno. Siccome l''analisi del campione di terreno potrebbe essere sul vecchio sistema AGRICHIM non esiste una relazione con il numero identificativo del campione del nuovo AGRICHIM';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.ID_RICHIESTA IS E'Identificativo univoco attribuito automaticamente';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.DATA_CAMPIONAMENTO IS E'Data in cui e avvenuto il prelievo del campione';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.GIACITURA IS E'"P" Piano\n"A" Acclive';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.SUPERFICIE_APPEZZAMENTO IS E'Uno dei valori della tabella "Superficie"';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.ID_ESPOSIZIONE IS E'Uno dei valori della tabella "Esposizione"';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.SCHELETRO IS E'Presenza di pietre o ghiaie:\n"S" Si\n"N" No';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.ALTITUDINE_SLM IS E'Altitudine sul livello del mare in metri';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.ETA_IMPIANTO IS E'Eta dell''impianto espressa in numero di anni';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.ID_COLTURA IS E'Uno dei valori presenti sulla tabella "Classe Coltura" tra quelle legate a "Specie coltura" con tipo coltura "Arborea".\nE'' necessario avere il riferimento con "Classe coltura" perche potrebbe essere selezionato il dato "Altra specie" anziche uno dei valori della tabella "Specie Coltura"';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.ID_SPECIE IS E'Uno dei valori presenti sulla tabella "Specie Coltura" solo tra quelli di tipo coltura "Arborea".';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.ALTRA_SPECIE IS E'Nel caso in cui la specie non sia tra quelle previste nella tabella "Specie coltura" dovra essere indicata in questo campo';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.ID_VARIETA IS E'Uno dei valori della tabella "Varieta Specie" nell''ambito della Specie Coltura selezionata';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.ID_INNESTO IS E'Uno dei valori della tabella "Porta Innesto"';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.ID_SISTEMA_ALLEVAMENTO IS E'Uno dei valori della tabella "Sistema allevamento"';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.ALTRO_ALLEVAMENTO IS E'Nel caso in cui il sistema di allevamento non sia tra quelli previsti nella tabella "Sistema allevamento" dovra essere indicata in questo campo';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.SESTO_IMPIANTO_1 IS E'Distanza tra le piante nel filare.\nUnita di misura in metri con 2 decimali.';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.SESTO_IMPIANTO_2 IS E'Distanza tra i filari.\nUnita di misura in metri con 2 decimali.';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.UNITA_N IS E'Concimazione Azoto un./Ha.\n\nN.B: l''unita di misura un.Ha significa Unita per Ettaro';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.UNITA_P2O5 IS E'L''etichetta a video dovra essere espressa correttamente con i numeri in formato "pedice". Concimazione Fosforo un./Ha.';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.UNITA_K2O IS E'L''etichetta a video dovra essere espressa correttamente con i numeri in formato "pedice". Concimazione Potassio un./Ha.';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.UNITA_MG IS E'Concimazione Magnesio un./Ha.';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.LETAMAZIONE_ANNO IS E'Quantita di letame cosparsa in un anno espressa in q/Ha (quintali per ettaro)';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.TIPO_CONCIMAZIONE IS E'Uno dei valori della tabella "Concimazione organica"';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.ID_CONCIME IS E'Uno dei valori della tabella "Concime"';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.ID_STADIO_FENOLOGICO IS E'Uno dei valori della tabella "Stadio Fenologico" nell''ambito di quelli appartenenti al materiale del campione';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.CODICE_PRODUTTIVITA IS E'Uno dei valori della tabella "Produttivita"';
COMMENT ON COLUMN CAMPIONE_VEGETALI_FOGLIEFRUTTA.CAMPIONE_TERRENO IS E'Nel caso in cui, negli ultimi 4 anni sia stata effettuata un''analisi sul terreno da cui e stato prelevato il campione di vegetale, indicare il numero identificativo del campione di terreno. Siccome l''analisi del campione di terreno potrebbe essere sul vecchio sistema AGRICHIM non esiste una relazione con il numero identificativo del campione del nuovo AGRICHIM';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.PESO_SECCO_PROVETTA IS E'Campo di input in grammi. Controlli:\n[Peso secco + provetta] > 0';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.PESO_SECCO_ACQUA_PROVETTA IS E'Campo di input in grammi. Controlli:\n[Peso secco + acqua + provetta] > 0 and >= [Peso secco + provetta]';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.PESO_TERRENO IS E'Campo di input in grammi. Valore di default "2". Controlli:\n[Peso terreno] > 0';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.LETTURA_MAGNESIO_EDTA IS E'Campo di input in ml. Controlli:\n[Lett Magnesio ppm/Titol EDTA campione] > 0';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.LETTURA_BIANCO_EDTA IS E'Campo di input in ml. Controlli:\n[Lett Bianco ppm/titol EDTA bianco] > 0 and [Lett Bianco ppm/titol EDTA bianco] > [Lett Magnesio ppm/Titol EDTA campione] and\n\nSe ([Lett Magnesio ppm/Titol EDTA campione] > 156\ncontrollare che\n[Lett Bianco ppm/titol EDTA bianco] > 156\naltrimenti\n[Lett Bianco ppm/titol EDTA bianco] < 156 )';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.CAPACITA_SCAMBIO_CATIONICO IS E'Campo calcolato. Formula:\nSe [Lett Magnesio ppm/Titol EDTA campione] > 156\ncalcolo:\n(([Lett Bianco ppm/titol EDTA bianco] * 25/12160) - (([Lett Magnesio ppm/Titol EDTA campione] * (25 + ([Peso secco + acqua + provetta] - [Peso secco + provetta]))) ; 12160)) *50\naltrimenti\n(1/[Peso terreno]) * (250 - (([Lett Magnesio ppm/Titol EDTA campione] ; [Lett Bianco ppm/titol EDTA bianco]) * 10 * (25 +([Peso secco + acqua + provetta] - [Peso secco + provetta])))))';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.LETTURA_CALCIO IS E'Campo di input (unita di misura P.P.M.)';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.LETTURA_MAGNESIO IS E'Campo di input (unita di misura P.P.M.)';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.LETTURA_POTASSIO IS E'Campo di input (unita di misura P.P.M.)';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.LETTURA_SODIO IS E'Campo di input (unita di misura P.P.M.).';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.VBACL2_PER_ESTRAZIONE IS E'Campo di input (unita di misura P.P.M.). Valore di default "25". Controlli:\n[VBaCL2 per estrazione] > 0';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.DILUIZIONE_CALCIO IS E'Campo di input. Valore di default 50. Controlli:\n[Diluizione Calcio] > 0';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.DILUIZIONE_MAGNESIO IS E'Campo di input. Valore di default 50. Controlli:\n[Diluizione Magnesio] > 0';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.DILUIZIONE_POTASSIO IS E'Campo di input. Valore di default 50. Controlli:\n[Diluizione Potassio] > 0';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.DILUIZIONE_SODIO IS E'Campo di input. Controlli:\n([Lettura Sodio] = 0 and [Diluizione Sodio] = 0) or ([Lettura Sodio] > 0 and [Diluizione Sodio] > 0)';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.CALCIO_SCAMBIABILE IS E'Campo calcolato (unita di misura P.P.M.). Formula:\n([Lettura Calcio] * [VBaCL2 per estrazione] * [Diluizione Calcio]) ; [Peso terreno]';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.MAGNESIO_SCAMBIABILE IS E'Campo calcolato (unita di misura P.P.M.). Formula:\n([Lettura Magnesio] * [VBaCL2 per estrazione] * [Diluizione Magnesio]) ; [Peso terreno]';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.POTASSIO_SCAMBIABILE IS E'Campo calcolato (unita di misura P.P.M.). Formula:\n([Lettura Potassio] * [VBaCL2 per estrazione] * [Diluizione Potassio]) ; [Peso terreno]';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.SODIO_SCAMBIABILE IS E'Campo calcolato (unita di misura P.P.M.). Formula:\n([Lettura Sodio] * [VBaCL2 per estrazione] * [Diluizione Sodio]) ; [Peso terreno]';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.CALCIO_SCAMBIABILE_MEQ_100 IS E'Campo calcolato in grammi. Formula:\n[Calcio scambiabile] ; (20,04 * 10)';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.MAGNESIO_SCAMBIABILE_MEQ_100 IS E'Campo calcolato in grammi. Formula:\n[Magnesio scambiabile] ; (12,156 * 10)';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.POTASSIO_SCAMBIABILE_MEQ_100 IS E'Campo calcolato in grammi. Formula:\n[Potassio scambiabile] ; (39,102 * 10)';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.SODIO_SCAMBIABILE_MEQ_100 IS E'Campo calcolato in grammi. Formula:\n[Sodio scambiabile] ; (22,9898 * 10)';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.CALCIO_SCAMBIABILE_CSC IS E'Campo calcolato in % se:\n[Calcio scambiabile meq/100] <= [Capacita di scambio cationico meq/100] and [Capacita di scambio cationico meq/100] > 0\nFormula:\n([Calcio scambiabile meq/100] ; [Capacita di scambio cationico meq/100]) * 100';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.MAGNESIO_SCAMBIABILE_CSC IS E'Campo calcolato in % se:\n[Magnesio scambiabile meq/100] <= [Capacita di scambio cationico meq/100] and [Capacita di scambio cationico meq/100] > 0\nFormula:\n([Magnesio scambiabile meq/100] ; [Capacita di scambio cationico meq/100]) * 100';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.POTASSIO_SCAMBIABILE_CSC IS E'Campo calcolato in % se:\n[Potassio scambiabile meq/100] <= [Capacita di scambio cationico meq/100] and [Capacita di scambio cationico meq/100] > 0\nFormula:\n([Potassio scambiabile meq/100] ; [Capacita di scambio cationico meq/100]) * 100';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.SODIO_SCAMBIABILE_CSC IS E'Campo calcolato in % se:\n[Sodio scambiabile] > 0 and [Capacita di scambio cationico meq/100]  > 0 and [Sodio scambiabile meq/100] <= [Capacita di scambio cationico meq/100]\nFormula:\n([Sodio scambiabile meq/100] ; [Capacita di scambio cationico meq/100]) * 100';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.SATURAZIONE_BASICA IS E'Campo calcolato se:\n[Calcio scambiabile CSC] > 0 and [Magnesio scambiabile CSC] > 0 and [Potassio scambiabile CSC] > 0 and ([Calcio scambiabile CSC] + [Magnesio scambiabile CSC] + [Potassio scambiabile CSC] + [Sodio scambiabile CSC]) <= 100\nFormula:\n[Calcio scambiabile CSC] + [Magnesio scambiabile CSC] + [Potassio scambiabile CSC] + [Sodio scambiabile CSC]';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.CA_MG IS E'Campo calcolato se:\n[Calcio scambiabile meq/100] > 0 and [Magnesio scambiabile meq/100] > 0\nFormula:\n[Calcio scambiabile meq/100] ; [Magnesio scambiabile meq/100]';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.CA_K IS E'Campo calcolato se:\n[Calcio scambiabile meq/100] > 0 and [Potassio scambiabile meq/100] > 0\nFormula:\n[Calcio scambiabile meq/100] ; [Potassio scambiabile meq/100]';
COMMENT ON COLUMN COMPLESSO_SCAMBIO.MG_K IS E'Campo calcolato se:\n[Potassio scambiabile meq/100] > 0 and [Magnesio scambiabile meq/100] > 0\nFormula:\n[Magnesio scambiabile meq/100] ; [Potassio scambiabile meq/100]';
COMMENT ON COLUMN CONDUCIBILITA_SALINITA.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN CONDUCIBILITA_SALINITA.CONDUCIBILITA IS E'Campo di input. Unita di misura "micro S/cm".\nControlli:\n[Conducibilita] >= 0';
COMMENT ON COLUMN DATI_APPEZZAMENTO.ID_RICHIESTA IS E'Identificativo univoco della richiesta';
COMMENT ON COLUMN DATI_APPEZZAMENTO.LOCALITA_APPEZZAMENTO IS E'Campo descrittivo con ulteriore indicazioni riguardante la localita';
COMMENT ON COLUMN DATI_APPEZZAMENTO.COMUNE_APPEZZAMENTO IS E'Uno dei comuni presenti sulla tabella "Comune". Se il comune appartiene alla Regione Piemonte saranno reperibili le coordinate con l''utilizzo delle funzioni GIS';
COMMENT ON COLUMN DATI_APPEZZAMENTO.PARTICELLA_CATASTALE IS E'I campi Particella catastale, Sezione e Foglio, sono obbligatorie, nel caso di materiale TER (Terreno) se non vengono indicate le coordinate. La particella catastale potrebbe essere piu di una. Indicare in questo caso tutte le particelle con una virgola separatrice tra l''una e l''altra';
COMMENT ON COLUMN DATI_APPEZZAMENTO.COORDINATA_NORD_BOAGA IS E'Inserendo le coordinate Boaga Nord si puo risalire alle coordinate UTM Nord utilizzando la formula di conversione:\nNord UTM = Nord Boaga + 181\nLa precisione e di qualche metro.';
COMMENT ON COLUMN DATI_APPEZZAMENTO.COORDINATA_EST_BOAGA IS E'Inserendo le coordinate Boaga Est si puo risalire alla coordinata UTM Est utilizzando la formula di conversione:\nEst UTM = Est Boaga - 999946\nLa precisione e di qualche metro.';
COMMENT ON COLUMN DATI_APPEZZAMENTO.COORDINATA_NORD_UTM IS E'Le coordinate UTM verranno prelevate dall''acquisizione tramite GIS se il comune appartiene al Piemonte. In questo caso non saranno modificabili. Se invece il comune non e Piemonte le coordinate dovranno essere inserite manualmente.\nIn alternativa si possono inserire le coordinate Boaga e ricavare le UTM applicando la formula di conversione';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.ID_RICHIESTA IS E'Identificativo univoco attribuito automaticamente';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.ID_PROFONDITA IS E'Uno dei valori della tabella Profondita prelievo';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.NUOVO_IMPIANTO IS E'Assume il valor "S" se trattasi di nuovo impianto oppure "N" in caso contrario';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.COLTURA_ATTUALE IS E'Specie coltivata in atto o precedentemente. Uno dei valori della tabella Specie Coltura';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.COLTURA_PREVISTA IS E'Specie prevista in coltivazione. Uno dei valori della tabella Specie Coltura';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.ID_VARIETA IS E'Uno dei valori della tabella Varieta specie (tra quelli della "Coltura prevista")';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.ID_INNESTO IS E'Uno dei valori della tabella Porta Innesto (tra quelli della "Coltura prevista")';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.ANNO_IMPIANTO IS E'Anno dell''impianto';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.ID_SISTEMA_ALLEVAMENTO IS E'Uno dei valori della tabella Sistema allevamento';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.PRODUZIONE_Q_HA IS E'Produzione stimata in quintali per ettaro';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.SUPERFICIE_APPEZZAMENTO IS E'Uno dei valori della tabella "Superficie"';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.GIACITURA IS E'"P" Piano\n"A" Acclive';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.ID_ESPOSIZIONE IS E'Uno dei valori della tabella Esposizione.';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.SCHELETRO IS E'Presenza di pietre o ghiaie:\n"S" Si\n"N" No';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.PERCENTUALE_PIETRE IS E'Nel caso in cui sia stato indicata la presenza di pietre o ghiaie (Scheletro = ''S''), indicare il valore percentuale';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.STOPPIE IS E'Interramento stoppie:\n"S" Si\n"N" No';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.TIPO_CONCIMAZIONE IS E'Uno dei valori della tabella "Concimazione organica"';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.ID_CONCIME IS E'Uno dei valori della tabella Concime';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.ID_LAVORAZIONE_TERRENO IS E'Indica lo stato del terreno. Uno dei valori della tabella Lavorazione Terreno';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.ID_IRRIGAZIONE IS E'Uno dei valori della tabella Irrigazione';
COMMENT ON COLUMN DATI_CAMPIONE_TERRENO.CODICE_MODALITA_COLTIVAZIONE IS E'Uno dei valori della tabella "Modalita coltivazione"';
COMMENT ON COLUMN DATI_FATTURA.FATTURA_SN IS E'Indica se si vuole la fattura (S) oppure (N)';
COMMENT ON COLUMN DATI_FATTURA.SPEDIZIONE IS E'S - Indica che si vuole la spedizione della fattura all''intestatario\nN - La fattura verra ritirata manualmente';
COMMENT ON COLUMN DATI_FATTURA.IMPORTO_SPEDIZIONE IS E'Costo della spedizione fattura. Al momento della richiesta di analisi, se viene richiesta la "Spedizione" viene memorizzato l''importo "Costo di spedizione" della tabella "Parametri fattura".';
COMMENT ON COLUMN DATI_FATTURA.FATTURARE IS E'Si tratta di un flag indicatore se la fattura deve essere intestato a:\nU - Utente (tecnico o privato); verra intestata alla "Anagrafica utente"\nT - Tecnico; verra intestata alla "Anagrafica tecnico"\nP - Proprietario del campione; verra intestata alla "Anagrafica proprietario"\nO - Organizzazione del tecnico; verra intestata alla organizzazione a cui appartiene la "Anagrafica tecnico" se presente, altrimenti alla "Anagrafica utente"\nA - Altri estremi; in questo caso occorre indicare gli estremi di fatturazione compilando i dati sottostanti';
COMMENT ON COLUMN DATI_FATTURA.CF_PARTITA_IVA IS E'Puo contenere il codice fiscale, la partita iva o il CUAA. Effettuare i controlli di validita sul check-digit. In caso di codice fiscale memorizzare e gestire i campi corrispondenti sulle form con lettere in MAIUSCOLO\n\nN.B: il CUAA (Codice Univoco Azienda Agricola) puo essere un C.F. o una P.IVA';
COMMENT ON COLUMN DATI_FATTURA.CAP IS E'Controllo di validita: deve essere un campo numerico di 5';
COMMENT ON COLUMN DATI_FATTURA.COMUNE IS E'Uno dei comuni presenti sulla tabella "Comune"';
COMMENT ON COLUMN CAMPIONE_FATTURATO.ANNO IS E'Anno di emissione in base all''anno di sistema';
COMMENT ON COLUMN CAMPIONE_FATTURATO.NUMERO_FATTURA IS E'Numero progressivo nell''ambito dell''anno. Ad anno nuovo si ricomincia da 1.';
COMMENT ON COLUMN CAMPIONE_FATTURATO.IMPORTO_IMPONIBILE IS E'Per ogni campione viene calcolato l''importo imponibile scorporando l''IVA (vedere parametro) dall''importo contenuto nella tabella "Costo analisi" sommando tutti gli importi di dettaglio riferiti alla stessa richiesta';
COMMENT ON COLUMN CAMPIONE_FATTURATO.IMPORTO_IVA IS E'All''imponibile viene applicata l''IVA (vedere parametro)';

COMMENT ON TABLE STORICO_IVA IS E'Elenca i valori storicizzati di IVA';



INSERT INTO STORICO_IVA ( ID_STORICO_IVA, DATA_INIZIO_VALIDITA, DATA_FINE_VALIDITA, VALORE )
VALUES ( 1, to_timestamp( '09/29/1997 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM'), to_timestamp( '09/16/2011 11:59:59 PM', 'MM/DD/YYYY HH:MI:SS AM'), 20);
INSERT INTO STORICO_IVA ( ID_STORICO_IVA, DATA_INIZIO_VALIDITA, DATA_FINE_VALIDITA, VALORE )
VALUES ( 2, to_timestamp( '09/17/2011 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM'), null, 21);
commit;

-- copia i dati dalla colonna PK alla nuova colonna UK
UPDATE ANAGRAFICA A1
SET ID_ANAGRAFICA_2 = (SELECT ID_ANAGRAFICA FROM ANAGRAFICA A2 WHERE A1.ID_ANAGRAFICA=A2.ID_ANAGRAFICA);

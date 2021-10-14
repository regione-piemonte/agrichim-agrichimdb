CREATE TABLE pagamenti
(
	id_pagamenti         NUMERIC(9) NOT NULL,
	Id_Richiesta         NUMERIC(9) NOT NULL,
	IUV                  character varying(50) NOT NULL,
	esito                character varying(2) NOT NULL,
	data_pagamento       timestamp without time zone NOT NULL,
	CONSTRAINT pk_pagamenti PRIMARY KEY (id_pagamenti)
);

GRANT ALL ON pagamenti TO agrichim_rw;

CREATE SEQUENCE id_pagamenti
  INCREMENT 1
  MINVALUE 1
  START 1
  CACHE 1;
  
GRANT ALL ON id_pagamenti TO agrichim_rw;  
  
CREATE TABLE tipo_pagamento
(
	id_tipo_pagamento    NUMERIC(4) NOT NULL,
	cod_tipo_pagamento   character varying(2) NOT NULL,
	desc_tipo_pagamento  character varying(200) NOT NULL,
	data_inizio_validita timestamp without time zone NOT NULL,
	data_fine_validita   timestamp without time zone NULL,
	CONSTRAINT pk_tipo_pagamento PRIMARY KEY (id_tipo_pagamento)
);

alter TABLE pagamenti add data_richiesta_pagamento timestamp without time zone NOT NULL;

alter TABLE pagamenti add id_tipo_pagamento    NUMERIC(4) NULL;

ALTER TABLE pagamenti
ADD CONSTRAINT fk_tipo_pagamento_01 FOREIGN KEY (id_tipo_pagamento) 
REFERENCES tipo_pagamento (id_tipo_pagamento);

alter TABLE pagamenti add CF_Partita_IVA       character varying(16) NULL;

ALTER TABLE pagamenti ALTER COLUMN data_pagamento DROP NOT NULL; 

GRANT ALL ON tipo_pagamento TO agrichim_rw;

alter TABLE pagamenti add data_annullamento timestamp without time zone NULL;

comment on column pagamenti.data_annullamento is 'per tenere traccia dell''annullamento di uno IUV';

alter TABLE Anagrafica add codice_contabilia character varying(7) NULL;

comment on column Anagrafica.codice_contabilia is 'serve per gestire il colloquio con la contabilita''';

ALTER TABLE Organizzazione_professionale ADD Codice_destinatario  character varying(7);

ALTER TABLE Organizzazione_professionale ADD PEC  character varying(200);

ALTER TABLE Organizzazione_professionale ADD codice_contabilia  character varying(7);



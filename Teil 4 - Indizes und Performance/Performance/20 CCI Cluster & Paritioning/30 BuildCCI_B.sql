﻿-- select CONCAT('CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON ', QUOTENAME(TABLE_SCHEMA), '.', QUOTENAME(Table_Name),' WITH (DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])')  from INFORMATION_SCHEMA.TABLES


CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[DEPOT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[FUEHRENDER_KUNDE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_ABIL_ADR_HGB] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_ABIL_ADR_IFRS] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_ABIL_INTERNER_EL_HGB] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_ABIL_INTERNER_EL_IFRS] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_BIL_ADR_HGB] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_BIL_ADR_IFRS] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_BIL_INTERNER_EL_HGB] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_BIL_INTERNER_EL_IFRS] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_DERIVAT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_EIGENEMISSION_BILANZ] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_EINLAGE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_EINLAGE_BILANZ] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_EINLAGE_ZUSATZ] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_EVENTUALVERBINDLICHKEIT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_EVENTUALVERBINDLICHKEIT_RISIKOVORSORGE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_EVENTUALVERBINDLICHKEIT_ZUSATZ] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_KONTOKORRENT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_KONTOKORRENT_BILANZ] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_KONTOKORRENT_RISIKOVORSORGE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_KONTOKORRENT_ZUSATZ] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_KREDIT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_KREDIT_BILANZ] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_KREDIT_RISIKOVORSORGE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_KREDIT_ZUSATZ] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_OFFENES_EXTERNES_LIMIT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_RAHMENKREDIT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_RAHMENKREDIT_RISIKOVORSORGE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_RAHMENKREDIT_ZUSATZ] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_REPO] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_WERTPAPIER_BILANZ] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_ZUSAGE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_ZUSAGE_RISIKOVORSORGE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[GESCHAEFT_ZUSAGE_ZUSATZ] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[KONTO] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[KONTO_ADR_HGB] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[KONTO_ADR_IFRS] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[KONTO_HGB] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[KONTO_IFRS] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[KUNDE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[KUNDENROLLE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[KUNDENROLLE_OBJEKT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[KUNDENVERKNUEPFUNG] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[OBJEKT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[OBJEKT_FLUGZEUG] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[OBJEKT_IMMOBILIE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[OBJEKT_SCHIFF] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_AUFGABENGEBIET] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_BANKENGRUPPE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_BEARBEITUNGSGRUND] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_BETRIEBSSTELLE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_CENTRAL_COUNTERPARTY] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_DOKUMENTENART] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_FORDERUNGSKLASSE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_GESCHAEFTSARTEN_SCHLUESSEL] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_HAUPTVERWENDUNGSZWECK] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_INSTITUT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_KONTENSYSTEMATIK_NICHT_KUNDE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_KREDITART] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_KUNDEN_INTERNE_GESCHAEFTE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_KUNDENGRUPPE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_LAND] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_LIEFERSYSTEM] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_MINDESTRESERVEPFLICHT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_MONETAERES_FINANZIELLES_INSTITUT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_NUTZUNGSART] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_OBJEKTART] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_OBJEKTVERSICHERUNGSART] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_OBJEKTWERTART] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_OEFFENTLICHE_STELLE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_ORGANISATIONSEINHEIT] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_RECHTSFORM] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_REFERENZZINS_KK] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_SICHERUNGSGESCHAEFTSART] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_STELLUNG_IM_LEBEN] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_UNTERNEHMENSGRUPPE] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_VERKNUEPFUNGSART] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_VERKNUEPFUNGSGRUND] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_WAEHRUNGSSCHLUESSEL] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PR_WIRTSCHAFTSZWEIG] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[PRODUKTKATALOG] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[REF_VERLUSTQUOTE_PARAMETER] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[RISIKOVORSORGEUMSATZ] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[SICHERHEITENVERTEILUNG_HGB] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[SICHERHEITENVERTEILUNG_IFRS] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[SICHERHEITENVERTEILUNG_INTERN_HGB] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[SICHERHEITENVERTEILUNG_INTERN_IFRS] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[VERBRIEFUNG] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE CLUSTERED COLUMNSTORE INDEX idx_cci ON [IDS_T].[WERTPAPIERSTAMM] WITH (DROP_EXISTING = ON, DATA_COMPRESSION = COLUMNSTORE_ARCHIVE ON PARTITIONS (1,2,3,4,5,6,7,8,9,10), DATA_COMPRESSION = COLUMNSTORE ON PARTITIONS (11)) ON ArchivierungPerBuchungsdatum([BUSINESS_DATE])
CREATE TABLE LinLogFields (ADIFName UNIQUE Not NULL,Type,LinLogName UNIQUE Not NULL, DefaultValue);
INSERT INTO LinLogFields VALUES('QSO_DATE','D','Date of QSO','');
INSERT INTO LinLogFields VALUES('TIME_ON','T','Time of QSO','');
INSERT INTO LinLogFields VALUES('CALL','S','Callsign','');
INSERT INTO LinLogFields VALUES('NAME','S','Name','');
INSERT INTO LinLogFields VALUES('RST_RCVD','S','RST received','');
INSERT INTO LinLogFields VALUES('RST_SENT','S','RST given','');
INSERT INTO LinLogFields VALUES('BAND','E','Band','6');
INSERT INTO LinLogFields VALUES('TX_PWR','N','Tx Power','5');
INSERT INTO LinLogFields VALUES('MODE','E','Mode','3');
INSERT INTO LinLogFields VALUES('QTH','S','QTH','');
INSERT INTO LinLogFields VALUES('GRIDSQUARE','G','Locator','');
INSERT INTO LinLogFields VALUES('APP_LinLog_DOK','S','Dok','');
INSERT INTO LinLogFields VALUES('COMMENT','S','Comment','');
INSERT INTO LinLogFields VALUES('QSL_SENT','E','QSL sent','3');
INSERT INTO LinLogFields VALUES('QSLSDATE','D','Date sent','');
INSERT INTO LinLogFields VALUES('QSL_VIA','S','Via','');
INSERT INTO LinLogFields VALUES('QSL_RCVD','E','QSL rcvd','2');
INSERT INTO LinLogFields VALUES('EQSL_QSL_SENT','E','Eqsl sent','');
INSERT INTO LinLogFields VALUES('EQSL_QSLSDATE','D','Eqsl date sent','');
INSERT INTO LinLogFields VALUES('EQSL_QSL_RCVD','E','Eqsl rcvd','2');
INSERT INTO LinLogFields VALUES('LOTW_QSL_SENT','E','LotW qsl sent','');
INSERT INTO LinLogFields VALUES('LOTW_QSLSDATE','D','LotW date sent','');
INSERT INTO LinLogFields VALUES('LOTW_QSL_RCVD','E','LotW qsl rcvd','');
CREATE TABLE ADIF (ADIFName UNIQUE NOT NULL, Type NOT NULL);
INSERT INTO ADIF VALUES('BAND','E');
INSERT INTO ADIF VALUES('CALL','S');
INSERT INTO ADIF VALUES('COMMENT','S');
INSERT INTO ADIF VALUES('GRIDSQUARE','G');
INSERT INTO ADIF VALUES('MODE','E');
INSERT INTO ADIF VALUES('NAME','S');
INSERT INTO ADIF VALUES('QSLMSG','M');
INSERT INTO ADIF VALUES('QSLRDATE','D');
INSERT INTO ADIF VALUES('QSLSDATE','D');
INSERT INTO ADIF VALUES('QSL_RCVD','E');
INSERT INTO ADIF VALUES('QSL_SENT','E');
INSERT INTO ADIF VALUES('QSO_DATE','D');
INSERT INTO ADIF VALUES('QTH','S');
INSERT INTO ADIF VALUES('APP_LinLog_DOK','S');
INSERT INTO ADIF VALUES('RST_RCVD','S');
INSERT INTO ADIF VALUES('RST_SENT','S');
INSERT INTO ADIF VALUES('TIME_ON','T');
INSERT INTO ADIF VALUES('TX_PWR','N');
INSERT INTO ADIF VALUES('QSL_SENT_VIA','E');
INSERT INTO ADIF VALUES('EQSL_QSLRDATE','D');
INSERT INTO ADIF VALUES('EQSL_QSLSDATE','D');
INSERT INTO ADIF VALUES('LOTW_QSLRDATE','D');
INSERT INTO ADIF VALUES('LOTW_QSLSDATE','D');
INSERT INTO ADIF VALUES('EQSL_QSL_RCVD','E');
INSERT INTO ADIF VALUES('EQSL_QSL_SENT','E');
INSERT INTO ADIF VALUES('LOTW_QSL_RCVD','E');
INSERT INTO ADIF VALUES('LOTW_QSL_SENT','E');
INSERT INTO ADIF VALUES('QSL_VIA','S');
CREATE TABLE BAND (Id INTEGER PRIMARY KEY AUTOINCREMENT,BANDvalue UNIQUE NOT NULL);
INSERT INTO BAND VALUES('0','-');
INSERT INTO BAND VALUES('1','160m');
INSERT INTO BAND VALUES('2','80m');
INSERT INTO BAND VALUES('3','60m');
INSERT INTO BAND VALUES('4','40m');
INSERT INTO BAND VALUES('5','30m');
INSERT INTO BAND VALUES('6','20m');
INSERT INTO BAND VALUES('7','17m');
INSERT INTO BAND VALUES('8','15m');
INSERT INTO BAND VALUES('9','12m');
INSERT INTO BAND VALUES('10','10m');
INSERT INTO BAND VALUES('11','6m');
INSERT INTO BAND VALUES('12','2m');
INSERT INTO BAND VALUES('13','70cm');
CREATE TABLE MODE (Id INTEGER PRIMARY KEY AUTOINCREMENT,MODEvalue UNIQUE);
INSERT INTO MODE VALUES('0','-');
INSERT INTO MODE VALUES('1','FM');
INSERT INTO MODE VALUES('2','MFSK16');
INSERT INTO MODE VALUES('3','PSK31');
INSERT INTO MODE VALUES('4','SSB');
INSERT INTO MODE VALUES('5','CW');
INSERT INTO MODE VALUES('6','RTTY');
CREATE TABLE QSL_RCVD(Id INTEGER PRIMARY KEY AUTOINCREMENT,QSL_RCVDvalue UNIQUE);
INSERT INTO QSL_RCVD VALUES('0','-');
INSERT INTO QSL_RCVD VALUES('1','Y');
INSERT INTO QSL_RCVD VALUES('2','N');
INSERT INTO QSL_RCVD VALUES('3','R');
INSERT INTO QSL_RCVD VALUES('4','I');
CREATE TABLE QSL_SENT(Id INTEGER PRIMARY KEY AUTOINCREMENT,QSL_SENTvalue UNIQUE);
INSERT INTO QSL_SENT VALUES('0','-');
INSERT INTO QSL_SENT VALUES('1','Y');
INSERT INTO QSL_SENT VALUES('2','N');
INSERT INTO QSL_SENT VALUES('3','R');
INSERT INTO QSL_SENT VALUES('4','I');
INSERT INTO QSL_SENT VALUES('5','Q');
CREATE TABLE QSL_SENT_VIA(Id INTEGER PRIMARY KEY AUTOINCREMENT,QSL_SENT_VIAvalue UNIQUE);
INSERT INTO QSL_SENT_VIA VALUES('0','-');
INSERT INTO QSL_SENT_VIA VALUES('1','B');
INSERT INTO QSL_SENT_VIA VALUES('2','D');
INSERT INTO QSL_SENT_VIA VALUES('3','E');
CREATE TABLE EQSL_QSL_RCVD(Id INTEGER PRIMARY KEY AUTOINCREMENT,EQSL_QSL_RCVDvalue UNIQUE);
INSERT INTO EQSL_QSL_RCVD VALUES('0','-');
INSERT INTO EQSL_QSL_RCVD VALUES('1','Y');
INSERT INTO EQSL_QSL_RCVD VALUES('2','N');
INSERT INTO EQSL_QSL_RCVD VALUES('3','R');
INSERT INTO EQSL_QSL_RCVD VALUES('4','I');
CREATE TABLE EQSL_QSL_SENT(Id INTEGER PRIMARY KEY AUTOINCREMENT,EQSL_QSL_SENTvalue UNIQUE);
INSERT INTO EQSL_QSL_SENT VALUES('0','-');
INSERT INTO EQSL_QSL_SENT VALUES('1','Y');
INSERT INTO EQSL_QSL_SENT VALUES('2','N');
INSERT INTO EQSL_QSL_SENT VALUES('3','R');
INSERT INTO EQSL_QSL_SENT VALUES('4','Q');
INSERT INTO EQSL_QSL_SENT VALUES('5','I');
CREATE TABLE LOTW_QSL_RCVD(Id INTEGER PRIMARY KEY AUTOINCREMENT,LOTW_QSL_RCVDvalue UNIQUE);
INSERT INTO LOTW_QSL_RCVD VALUES('0','-');
INSERT INTO LOTW_QSL_RCVD VALUES('1','Y');
INSERT INTO LOTW_QSL_RCVD VALUES('2','N');
INSERT INTO LOTW_QSL_RCVD VALUES('3','R');
INSERT INTO LOTW_QSL_RCVD VALUES('4','I');
CREATE TABLE LOTW_QSL_SENT(Id INTEGER PRIMARY KEY AUTOINCREMENT,LOTW_QSL_SENTvalue UNIQUE);
INSERT INTO LOTW_QSL_SENT VALUES('0','-');
INSERT INTO LOTW_QSL_SENT VALUES('1','Y');
INSERT INTO LOTW_QSL_SENT VALUES('2','N');
INSERT INTO LOTW_QSL_SENT VALUES('3','R');
INSERT INTO LOTW_QSL_SENT VALUES('4','Q');
INSERT INTO LOTW_QSL_SENT VALUES('5','I');
UPDATE dbStatus set status= 2;

USE traindb;
INSERT INTO trains VALUES('SF01',NULL,'SUPERFAST01');
INSERT INTO trains VALUES('SF02',NULL,'SUPERFAST02');
INSERT INTO trains VALUES('SF03',NULL,'SUPERFAST03');
INSERT INTO trains VALUES('P01',NULL,'PASSENGER01');
INSERT INTO trains VALUES('P02',NULL,'PASSENGER02');
INSERT INTO trains VALUES('P03',NULL,'PASSENGER03');
INSERT INTO trains VALUES('VB01',NULL,'VANDEBHARAT01');
INSERT INTO trains VALUES('GD01',NULL,'GOODS01');
INSERT INTO trains VALUES('GD02',NULL,'GOODS02');
INSERT INTO trains VALUES('GD03',NULL,'GOODS03');

ALTER TABLE trains ADD type VARCHAR(2);

UPDATE trains
SET type = 'NA';

UPDATE trains
SET type = 'SF' 
WHERE train_id = 'SF01';

UPDATE trains
SET type = 'SF' 
WHERE train_id = 'SF02';

UPDATE trains
SET type = 'SF' 
WHERE train_id = 'SF03';

UPDATE trains
SET type = 'P' 
WHERE train_id = 'P01';

UPDATE trains
SET type = 'P' 
WHERE train_id = 'P02';

UPDATE trains
SET type = 'P' 
WHERE train_id = 'P03';

UPDATE trains
SET type = 'GD' 
WHERE train_id = 'GD01';

UPDATE trains
SET type = 'GD' 
WHERE train_id = 'GD02';

UPDATE trains
SET type = 'GD' 
WHERE train_id = 'GD03';

UPDATE trains
SET type = 'VB' 
WHERE train_id = 'VB01';

 
INSERT INTO station VALUES('ALD','ALLAHABAD','4','10');
INSERT INTO station VALUES('DLH','DELHI','5','12');
INSERT INTO station VALUES('MUM','MUMBAI','4','13');
INSERT INTO station VALUES('KOL','KOLKATA','4','30');

UPDATE trains
SET station_id = 'ALD'
WHERE type = 'GD';

UPDATE trains
SET station_id = 'DLH'
WHERE type = 'P';

UPDATE trains
SET station_id = 'MUM'
WHERE type IN ('SF','VB') ;

UPDATE  trains
SET station_id = 'KOL'
WHERE train_id = 'P03';



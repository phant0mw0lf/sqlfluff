ALTER TABLE t1 RENAME TO t2;
ALTER TABLE IF EXISTS t1 RENAME TO t2;

ALTER TABLE t1 ADD COLUMN col1 VARCHAR;
ALTER TABLE t1 ADD COLUMN IF NOT EXISTS col1 VARCHAR;
ALTER TABLE t1 ADD COLUMN col1 VARCHAR NOT NULL;
ALTER TABLE t1 ADD COLUMN col1 VARCHAR COMMENT 'comment';
ALTER TABLE t1 ADD COLUMN col1 VARCHAR WITH (x = 'y');
ALTER TABLE t1 ADD COLUMN col1 VARCHAR FIRST;
ALTER TABLE t1 ADD COLUMN col1 VARCHAR LAST;
ALTER TABLE t1 ADD COLUMN col1 VARCHAR AFTER col2;

ALTER TABLE t1 DROP COLUMN col1;
ALTER TABLE t1 DROP COLUMN IF EXISTS col1;

ALTER TABLE t1 RENAME COLUMN col1 TO col2;
ALTER TABLE t1 RENAME COLUMN IF EXISTS col1 TO col2;

ALTER TABLE t1 ALTER COLUMN col1 SET DATA TYPE INTEGER;
ALTER TABLE t1 ALTER COLUMN col1 SET DATA TYPE VARCHAR(100);

ALTER TABLE t1 ALTER COLUMN col1 DROP NOT NULL;

ALTER TABLE t1 SET AUTHORIZATION u1;
ALTER TABLE t1 SET AUTHORIZATION USER u1;
ALTER TABLE t1 SET AUTHORIZATION ROLE r1;

ALTER TABLE t1 SET PROPERTIES x = 'y';
ALTER TABLE t1 SET PROPERTIES x = DEFAULT;
ALTER TABLE t1 SET PROPERTIES foo = 123, bar = 456;

ALTER TABLE t1 EXECUTE func;
ALTER TABLE t1 EXECUTE func(x => 'y');
ALTER TABLE t1 EXECUTE func(foo => 123, bar => 456);
ALTER TABLE t1 EXECUTE func(x => 'y') WHERE col1 > 0;

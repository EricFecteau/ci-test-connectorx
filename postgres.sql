DROP TABLE IF EXISTS test_types;

CREATE TABLE IF NOT EXISTS test_types(
    test_timestamp TIMESTAMP,
    test_timestamptz TIMESTAMPTZ
);

/*                              test_timestamp                  test_timestamptz               */
INSERT INTO test_types VALUES ( '1970-01-01 00:00:01',          '1970-01-01 00:00:01-00'       );
INSERT INTO test_types VALUES ( '2000-02-28 12:00:10',          '2000-02-28 12:00:10-04'       );
INSERT INTO test_types VALUES ( '2038-01-18 23:59:59',          '2038-01-18 23:59:59+08'       );
INSERT INTO test_types VALUES ( '1901-12-14 00:00:00.062547',   '1901-12-14 00:00:00.062547-12');
INSERT INTO test_types VALUES ( NULL,                           NULL                          );
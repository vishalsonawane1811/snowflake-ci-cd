BEGIN
	LET col_exists BOOLEAN := (
			SELECT COUNT(*) > 0
			FROM INFORMATION_SCHEMA.COLUMNS
			WHERE TABLE_SCHEMA = 'demo_access_schema'
			  AND TABLE_NAME = 'demo'
			  AND COLUMN_NAME = 'column3'
		);

    IF (col_exists) THEN
        EXECUTE IMMEDIATE 'ALTER TABLE demo_access_schema.demo RENAME COLUMN column3 TO created_date';
    END IF;
END;


BEGIN
	LET col_exists BOOLEAN := (
			SELECT COUNT(*) > 0
			FROM INFORMATION_SCHEMA.COLUMNS
			WHERE TABLE_SCHEMA = 'demo_access_schema'
			  AND TABLE_NAME = 'demo'
			  AND COLUMN_NAME = 'column2'
		);

    IF (col_exists) THEN
        EXECUTE IMMEDIATE 'ALTER TABLE demo_access_schema.demo RENAME COLUMN column2 TO id';
    END IF;
END;


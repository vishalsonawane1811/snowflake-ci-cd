BEGIN

    -- rename column3 -> created_date
    LET col1_exists BOOLEAN := (
        SELECT COUNT(*) > 0
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = 'DEMO_ACCESS_SCHEMA'
          AND TABLE_NAME = 'DEMO'
          AND COLUMN_NAME = 'COLUMN3'
    );

    IF (col1_exists) THEN
        EXECUTE IMMEDIATE 
            'ALTER TABLE DEMO_ACCESS_SCHEMA.DEMO RENAME COLUMN COLUMN3 TO CREATED_DATE';
    END IF;


    -- rename column2 -> id
    LET col2_exists BOOLEAN := (
        SELECT COUNT(*) > 0
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = 'DEMO_ACCESS_SCHEMA'
          AND TABLE_NAME = 'DEMO'
          AND COLUMN_NAME = 'COLUMN2'
    );

    IF (col2_exists) THEN
        EXECUTE IMMEDIATE 
            'ALTER TABLE DEMO_ACCESS_SCHEMA.DEMO RENAME COLUMN COLUMN2 TO ID';
    END IF;

END;

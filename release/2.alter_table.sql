DECLARE 
    col_exists BOOLEAN;

BEGINcolumn3
    SELECT EXISTS (
        SELECT 1
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = 'demo_access_schema'
          AND TABLE_NAME = 'demo'
          AND COLUMN_NAME = 'column3'
    ) INTO :col_exists;

    IF (col_exists) THEN
        EXECUTE IMMEDIATE 'ALTER TABLE MY_SCHEMA.MY_TABLE RENAME COLUMN column3 TO created_date';
    END IF;
END;


DECLARE 
    col_exists BOOLEAN;

BEGINcolumn3
    SELECT EXISTS (
        SELECT 1
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = 'demo_access_schema'
          AND TABLE_NAME = 'demo'
          AND COLUMN_NAME = 'column2'
    ) INTO :col_exists;

    IF (col_exists) THEN
        EXECUTE IMMEDIATE 'ALTER TABLE MY_SCHEMA.MY_TABLE RENAME COLUMN column2 TO id';
    END IF;
END;


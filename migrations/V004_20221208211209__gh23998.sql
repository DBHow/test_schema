-- Script generated by Redgate Compare v1.2.2.6772

SET check_function_bodies = false;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating test_schema_github.view1...';END$$;
CREATE VIEW test_schema_github.view1 (id) AS SELECT table1.id
   FROM test_schema_github.table1;;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating test_schema_github.add1(integer, integer)...';END$$;
CREATE FUNCTION test_schema_github.add1(IN integer, IN integer)
RETURNS integer
LANGUAGE sql
AS $_$select $1 + $2$_$;
SET check_function_bodies = true;

\echo 'You need to use the following commands:'
\echo 'CREATE EXTENSION IF NOT EXISTS softvisio;'
\echo 'ALTER EXTENSION softvisio UPDATE;'
\echo \quit

CREATE OR REPLACE FUNCTION normalize_nfc_casefold ( value text ) RETURNS text IMMUTABLE PARALLEL SAFE STRICT
    LANGUAGE sql
    RETURN casefold( normalize( value, NFC ) );

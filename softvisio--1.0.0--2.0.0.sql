\echo 'You need to use the following commands:'
\echo 'CREATE EXTENSION IF NOT EXISTS softvisio;'
\echo 'ALTER EXTENSION softvisio UPDATE;'
\echo \quit

DROP FUNCTION IF EXISTS normalize_casefold ( value text );

DROP FUNCTION IF EXISTS normalize_text ( value text );

CREATE OR REPLACE FUNCTION normalize_nfc ( value text ) RETURNS text IMMUTABLE PARALLEL SAFE STRICT
    LANGUAGE sql
    RETURN normalize( value, NFC );

CREATE OR REPLACE FUNCTION normalize_nfc_casefold ( value text ) RETURNS text IMMUTABLE PARALLEL SAFE STRICT
    LANGUAGE sql
    RETURN casefold( normalize_nfc( value ) );

# `softvisio` `PostgreSQL` extension

Additional types and functions.

## Install / update / drop

```sql
CREATE EXTENSION IF NOT EXISTS softvisio;

ALTER EXTENSION softvisio UPDATE;

DROP EXTENSION IF EXISTS softvisio;
```

## Build

```sh
gmake USE_PGXS=1 install
```

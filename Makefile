EXTENSION = softvisio
DATA =	\
	softvisio--1.0.0.sql \
	softvisio--1.0.0--2.0.0.sql \
	softvisio--2.0.0.sql \
	softvisio--2.0.0--2.0.1.sql \
	softvisio--2.0.1.sql

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

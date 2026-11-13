EXTENSION = softvisio
DATA =	\
	softvisio--1.0.0.sql \
	softvisio--1.0.0--2.0.0.sql \
	softvisio--2.0.0.sql \
	softvisio--2.0.0--2.0.1.sql \
	softvisio--2.0.1.sql \
	softvisio--2.0.1--2.0.2.sql \
	softvisio--2.0.2.sql \
	softvisio--2.0.2--2.0.3.sql \
	softvisio--2.0.3.sql \
	softvisio--2.0.3--2.0.4.sql \
	softvisio--2.0.4.sql

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

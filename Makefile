LIBSECRET_FLAGS := $(shell pkg-config --cflags --libs libsecret-1)

all: lssecret

lssecret: lssecret.cpp
	$(CXX) -O3 -o $@ $^ $(LIBSECRET_FLAGS)

install: lssecret
	install -Dsm777 $< $(DESTDIR)/bin/$<

clean:
	rm -f lssecret

.PHONY: all install

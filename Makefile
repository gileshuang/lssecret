LIBSECRET_FLAGS := $(shell pkg-config --cflags --libs libsecret-1)

all: lssec

lssec: lssec.cpp
	$(CXX) -O3 -o lssec lssec.cpp $(LIBSECRET_FLAGS)

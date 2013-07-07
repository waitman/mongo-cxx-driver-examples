PREFIX?=	/usr/local
CXX?=		clang++

all: bsondemo mongodemos

bsondemo:
	$(CXX) -o bsondemo -I$(PREFIX)/include bsondemo.cpp

mongodemos:
	$(CXX) -o clientTest -I$(PREFIX)/include -L$(PREFIX)/lib clientTest.cpp $(PREFIX)/lib/libmongoclient.a -lboost_thread -lboost_filesystem
	$(CXX) -o authTest -I$(PREFIX)/include -L$(PREFIX)/lib authTest.cpp $(PREFIX)/lib/libmongoclient.a -lboost_thread -lboost_filesystem
	$(CXX) -o first -I$(PREFIX)/include -L$(PREFIX)/lib first.cpp $(PREFIX)/lib/libmongoclient.a -lboost_thread -lboost_filesystem
	$(CXX) -o httpClientTest -I$(PREFIX)/include -L$(PREFIX)/lib httpClientTest.cpp $(PREFIX)/lib/libmongoclient.a -lboost_thread -lboost_filesystem
	$(CXX) -o rs -I$(PREFIX)/include -L$(PREFIX)/lib rs.cpp $(PREFIX)/lib/libmongoclient.a -lboost_thread -lboost_filesystem
	$(CXX) -o second -I$(PREFIX)/include -L$(PREFIX)/lib second.cpp $(PREFIX)/lib/libmongoclient.a -lboost_thread -lboost_filesystem
	$(CXX) -o tutorial -I$(PREFIX)/include -L$(PREFIX)/lib tutorial.cpp $(PREFIX)/lib/libmongoclient.a -lboost_thread -lboost_filesystem
	$(CXX) -o whereExample -I$(PREFIX)/include -L$(PREFIX)/lib whereExample.cpp $(PREFIX)/lib/libmongoclient.a -lboost_thread -lboost_filesystem

clean:
	rm -f *.core
	rm -f clientTest
	rm -f authTest
	rm -f first
	rm -f httpClientTest
	rm -f rs
	rm -f second
	rm -f tutorial
	rm -f whereExample
	rm -f bsondemo


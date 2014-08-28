include ../../environment
INSTANCES=./FJSS-instances

all: MainLan MainSeq

clean:
	rm -f MainLan MainSeq MainWan *.o *% *~

MainLan: newGA.req.o newGA.pro.o MainLan.o
	$(CXX) $(LDFLAGS) $^ $(LOADLIBES) $(CPPFLAGS) -o $@

MainWan: newGA.req.o newGA.pro.o MainWan.o
	$(CXX) $(LDFLAGS) $^ $(LOADLIBES) $(CPPFLAGS) -o $@

MainSeq: newGA.req.o newGA.pro.o MainSeq.o
	$(CXX) $(LDFLAGS) $^ $(LOADLIBES) $(CPPFLAGS) -o $@

MainTest: newGA.req.o newGA.pro.o MainTest.o
	$(CXX) $(LDFLAGS) $^ $(LOADLIBES) $(CPPFLAGS) -o $@

LAN:
	$(RUN) -np 10 ./MainLan Config.cfg

WAN:
	$(RUN) -v  -p4pg pgfileWan MainWan

SEQ:
	./MainSeq newGA.cfg $(INSTANCES)/abz6.fjs res/sol_abz6.txt

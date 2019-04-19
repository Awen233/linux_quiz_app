JCC = javac



JFLAGS = -g



all: *.class createserver createclient createcontestant

*.class: *.java
	$(JCC) $(JFLAGS) *.java

createserver: P2qserver.class
	$ echo 'java -XX:ParallelGCThreads=2 P2qserver' > cserver
	$ chmod 777 cserver

createclient: meisterClient.class
	$ echo 'java -XX:ParallelGCThreads=2 meisterClient $$1 $$2' > contestmeister
	$ chmod 777 contestmeister

createcontestant: ContestClient.class
	$ echo 'java -XX:ParallelGCThreads=2 ContestClient $$1 $$2' > contestant
	$ chmod 777 contestant



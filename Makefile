JAVAC=/usr/bin/javac
JAVA=/usr/bin/java
.SUFFIXES: .java .class
SRCDIR=src/clubSimulation
BINDIR=bin

$(BINDIR)/%.class:$(SRCDIR)/%.java
	$(JAVAC) -d $(BINDIR)/ -cp $(BINDIR) $<

CLASSES= GridBlock.class PeopleCounter.class\
	 PeopleLocation.class CounterDisplay.class\
	 ClubGrid.class ClubView.class\
	 Clubgoer.class ClubSimulation.class\

CLASS_FILES=$(CLASSES:%.class=$(BINDIR)/%.class)

default: $(CLASS_FILES)
	$(JAVA) -cp bin clubSimulation.ClubSimulation 20 10 10 10

clean: 
	rm $(BINDIR)/clubSimulation/*.class

run: $(CLASS_FILES)
	$(JAVA) -cp bin clubSimulation.ClubSimulation 20 10 10 10


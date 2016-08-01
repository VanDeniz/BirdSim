# "make" to compile the files
# "make run" to run the game in appletviewer
# "make clean" to clean all .class files

my.class: BirdSimPackage
	javac -Xlint ./BirdSimPackage/*.java ./BirdSimPackage/Enemies/*.java

new:
	jar -cvfm BirdSim.jar manifest.txt BirdSimPackage/*.class BirdSimPackage/Enemies/*.class
	
run: 
	appletviewer BirdSimPackage.html

make clean:
	rm ./BirdSimPackage/*.class

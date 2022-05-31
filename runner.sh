g++.exe -w -g -c main.cpp -o main.o
g++.exe -o main.exe main.o -lglut32 -lopengl32 -lglu32 -lwinmm -lgdi32
./main.exe
mkdir out
g++ -c -I. -Ilibs/google/v8/include src/Main.cpp -o out/main.o -pthread -std=c++17


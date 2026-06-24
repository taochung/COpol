#! /bin/tcsh
gcc -Wall -I../scisoft/include -c main.c rate_eq_solv.c LAMDA_Data_Reader.c coefficients_calculator.c physics_function.c integral.c

gcc -L../scisoft/lib main.o rate_eq_solv.o LAMDA_Data_Reader.o coefficients_calculator.o physics_function.o integral.o -lgsl -lgslcblas -lm -o c3.6.exe

./c3.6.exe


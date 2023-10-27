clc; clear; 
//--1-- Creating polynom
a = [1 3 3 1]
a1 = a'
disp('a', a)
disp('a1', a1)
res = poly(a, 'x', 'c'),
disp('poly coeff res ', res,'- - -')

res2 = poly([-1 -1 -1], 'x', 'r'),
disp('poly root res', res)

//--1-- Finding Roots
X = roots(res)	
disp(X)


clc; clear; 
//--1-- Creating polynom
a = [1 3 3 1]
a1 = a'
disp('a', a)
disp('a1', a1)
res = poly(a, 'x', 'c'),
disp('poly coeff res ', res,'- - -')

//--2-- Finding Roots
res2 = poly([-1 -1 -1], 'x', 'r'),
disp('poly root res', res)
X = roots(res); disp('roots', X)

res3 = poly([1 2 3 4], 'x', 'c') // 1 +2x +3x^2 +4x^3
disp('res3 = ',res3)
res4 = poly([-5 -2 0 1], 'x', 'c') // x**3 - 2*x - 5 
disp('res4 = ',res4)
X = roots(res4); disp('roots res4', X)





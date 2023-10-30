clc;
clear;
Nstud=29;
K=100;
N=6; ## размерность матрицы
rand("seed",2);
for i=1:Nstud
    X1=1:N;
    X11 = rand()*K*X1;
    X=fix(X11); # случайный вектор неизвестных целых чисел
    X=X';             # Транспонируем матрицу для правильного умножения
    A=rand(N,N); # случайная матрица неизвестных целых чисел
    A=fix(A*K);
    B=A*X;
endfor

# ----------  вывод в файл
mydir='D:\Work_Lang\Octave\';
myfn='A.txt';
fn= [mydir myfn];
# sfprintfMat(fn,A,s,'test');
save fn, A;
disp('Normal shutdown');



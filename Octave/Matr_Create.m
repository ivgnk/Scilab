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
mydir='J:\Work_Lang2\Octave\';
mydir='j:/Work-Lang2/Octave/';
myfn='A.txt';
fn= [mydir myfn];
disp(A); disp(fn);
# Введение в Octave для инженеров и математиков/ Е. Р. Алексеев, О. В. Чеснокова
# Москва ALT Linux 2012
# Глава 3 Программирование 3.4. Работа с файлами
# стр. 73 - 75
dlmwrite(fn,A,' ');
disp('- - -')
M = dlmread(fn,' ');
disp('M'); disp(M);

disp('Normal shutdown');



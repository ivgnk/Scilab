clc; clear;

function y=x2(x)
    y = x.^2
endfunction

function y=f1log(x)
    y = -(1+log(x))
endfunction


function y=f2(x)
    y = x.^2 - (1+log(x))
endfunction;

// deff('[y]=fff(x)', 'y=-0.4*x+sin(x)')


X=linspace(0.0001, 2, 200)
Yx2 = x2(X)
Yf2 = f2(X)
Ylog = f1log(X)
plot(X, Yx2,'b'); plot(X, Ylog,'g'); plot(X, Yf2,'r');
xgrid();

// https://help.scilab.org/fsolve
res=fsolve(0.2, f2); disp('res1',res)
res=fsolve(2, f2); disp('res2',res)
 


clc; clear;

function y=x2(x)
    y = x.^x
endfunction

function y=f1log(x)
    y = -(1+log(x))
endfunction


function y=f2(x)
    y = x.^x - (1+log(x))
endfunction;

// deff('[y]=fff(x)', 'y=-0.4*x+sin(x)')


X=linspace(0.0001, 3, 200)
Yx2 = x2(X)
Yf2 = f2(X)
Ylog = f1log(X)
ymin = Yx2 + Ylog
plot(X, Yx2,'b'); plot(X, Ylog,'g'); plot(X, ymin, 'k')
plot(X, Yf2,'--r');
xgrid();

// https://help.scilab.org/fsolve
res=fsolve(0.02, f2); disp('res1',res)
res=fsolve(20, f2); disp('res2',res)
 


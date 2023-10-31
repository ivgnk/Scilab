# https://www.youtube.com/watch?v=eEEBW6CN2E8
# X**(X**X) = (1/2)^Sqrt(2)

# stackoverflow.com/questions/35818295/octave-force-deepcopy

clc
clear

br = [0.1 3.0];
# disp(br); disp(class(br)); disp(typeinfo(br))

function y = f1(x)
    the_const = (1/2)^sqrt(2);
    y = x;
    llen = numel(x); # https://docs.octave.org/latest/Object-Sizes
    for i = 1:llen
      y(i) = x(i)^(x(i)^x(i))- the_const;
    endfor
endfunction

function y = f2(x)
    the_const = (1/2)^sqrt(2);
    y = x.^(x.^x)- the_const;
endfunction

function y = decision(f)
  y = fzero('f',[0.1 2])
endfunction

x = linspace(0.1, 2.0, 200);
y1 = f1(x);
y2 = f2(x);


res_ = fzero('f2',[0.01 2]);
disp(res_);

hold on;
plot(x, y1, 'r-', "displayname",'for')
plot(x, y2, 'g--', "displayname",'vec')
x_l1 = [res_ res_]; y_l = [-5 60];
plot(x_l1, y_l,'b-', "displayname",'root 1')
legend()

# plot(x, y1, label = 'vec', linestyle='dashed')
grid()
disp('normal shutdown')



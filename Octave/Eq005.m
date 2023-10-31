# https://www.youtube.com/watch?v=GVR3dp97d20

# Найти минимальное натуральное N такое что
# N+2018 делится на 2020, а
# N+2020 делится на 2018

# Find the minimum natural N such that
# N+2018 is divisible by 2020,
# and N+2020 is divisible by 2018

clc; clear;

function divisions
  # https://octave.sourceforge.io/octave/overview.html
  # https://octave.sourceforge.io/octave/function/mod.html
  disp('function divisions')
  disp(20/6);
  disp(20\6);
  disp(rem(20,6));
  disp(mod(20,6));
end

function calculations
  disp('function calculations')
  for i =0:3_000_000
      a1 = i+2018;
      a2 = i+2020;
      r1 = rem(a1, 2020);
      r2 = rem(a2, 2018);
      # https://docs.octave.org/latest/The-if-Statement.html
      # https://octave.sourceforge.io/octave/function/and.html
      if and(r1 == 0, r2 == 0)
          disp('i=');   # Result i=2034142
          disp(i);
          break;
      end
  end
end;

calculations;

clc; clear;

# https://docs.octave.org/latest/High_002dLevel-Plotting.html (15.2)
# https://docs.octave.org/latest/Plot-Annotations.html


function Plot1
  x = -10:0.1:10;
  plot (x, sin (x));
  title ("sin(x) for x = -10:0.1:10");
  xlabel ("x");
  ylabel ("sin (x)");
  text (pi, 0.7, "arbitrary text");
  legend ("sin (x)");
endfunction

function Plot2
  ## Create a single plot with its legend.
  figure ();
  plot (1:10);
  legend ("Slope 1");
  ## Add another plot and specify its displayname so that
  ## the legend is correctly updated.
  hold on;
  plot ((1:10) * 2, "displayname", "Slope 2");
  ## Stop automatic updates for further plots.
  legend ("autoupdate", "off");
  plot ((1:10) * 3);
  grid;
endfunction

function Plot3
  ## Create a single plot with its legend.
  # figure ();
  title ('Many Graphs')
  xlabel ("x");
  ylabel ("Graph Y");
  x = 1:10;
  y1=x;  y2=x*2; y3=x*3; y4=x*4;
  hold on;
  plot(x,y1,'r-', "displayname", "Slope 1");
  plot(x,y2,'g--', "displayname", "Slope 2");
  plot(x,y3,'b:', "displayname", "Slope 3");
  grid;
  h1 = legend();
  legend ("autoupdate", "off");
  plot(x,y4,'c-');

##  hold on;
##  plot ((1:10) * 2, "displayname", "Slope 2");
##  ## Stop automatic updates for further plots.
##  plot ((1:10) * 3);
##  legend ("Slope 3", "displayname", "Slope 3");
endfunction


Plot3;

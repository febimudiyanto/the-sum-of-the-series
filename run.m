function run
clc;
clear;
A=[-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-99,-100,-500,-999,-1000];
global t=10000;
fprintf('nilai t = %d\n',t);
disp('==================================================');
disp('a                s         s(10^6)        s_line');
disp('==================================================');   
for i=2:length(A)
  a=A(i);
  made(a);
endfor
endfunction

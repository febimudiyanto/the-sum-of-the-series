function made(aa)
format long
global t
a=aa;
A=-a;A2=A*A;s=0;saaa=0;s2aaa=0;sumaaa=0;
z3=1.20205690315959428540;
for k=1:A-1
  s1=0;s2=0;s3=0;
  if (k-1==0)
    s2=0;
  else
    for i=1:k-1
      s2=s2+hnum(i)/(i*(i+1));
    endfor
  endif
  s2=s2+hnum(k)/k+hnum(k)/A;
  s1=s1+s2/(k*(k+1));
  s=s+s1;
  s3=s3+((2*k+1)*hnum(k))/(k*k*(k+1)*(k+1));
endfor
saaa=z3-  s -(hnum(A)/A2);
s2aaa=z3 - s3 -(hnum(A)/A2);
fprintf(' %d \t %11.10f \t',a,saaa)
for k=1:t
  sumaaa=sumaaa+1/((k-a)*(k-a)*(k-a));
endfor
fprintf(' %11.10f\t',sumaaa);
sumaaaline=(2*A2+2*a+1)/(4*A2*A2);
fprintf('%11.10f\n',sumaaaline);


  
endfunction
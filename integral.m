syms t T y
a=0.016;
b=0.406;
k=0.75;
y=k*(1-exp(-abs(a*t+b*log(t+1))));
f(t)=0.07+0.08/(t+1);
a1=int(int(f(t)*(1-y),t,1,4),T,2006,2014);
a11=vpa(a1,4);
a2=int(int(f(t)*(1-y),t,5,9),T,2006,2014);
a22=vpa(a2,4);
a3=int(int(f(t)*(1-y),t,10,14),T,2006,2014);
a33=vpa(a3,4);
a4=int(int(f(t)*(1-y),t,15,19),T,2006,2014);
a44=vpa(a4,4);
a5=int(int(f(t)*(1-y),t,20,24),T,2006,2014);
a55=vpa(a5,4);
a6=int(int(f(t)*(1-y),t,25,29),T,2006,2014);
a66=vpa(a6,4);
a7=int(int(f(t)*(1-y),t,30,34),T,2006,2014);
a77=vpa(a7,4);
a8=int(int(f(t)*(1-y),t,35,39),T,2006,2014);
a88=vpa(a8,4);
a9=int(int(f(t)*(1-y),t,40,49),T,2006,2014);
a99=vpa(a9,4);
a10=int(int(f(t)*(1-y),t,50,59),T,2006,2014);
a1010=vpa(a10,4);
a=(a11+a22+a33+a44+a55+a66+a77+a88+a99+a1010)/10;
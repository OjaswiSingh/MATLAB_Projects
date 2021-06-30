syms a b %creating variables
a=linspace(0,5);
m=exp(-1.2*a).*sin(10*a+5); %equation1
subplot(2,1,1),plot(a,m);%plotting equation1 in subplot 1
b=linspace(-6,6);
n=abs(b.^3-100); %equation2
subplot(2,1,2), plot(b,n); %plotting equation2 in subplot 2
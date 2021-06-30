syms y(x) t %defining variables
eqn=diff(y,x)==x+t; %differential equation
cond=y(0)==0;
S = dsolve(eqn); %sloving differential equation
ySol(x) = dsolve(eqn,cond);%solving differential equation with boundary condition
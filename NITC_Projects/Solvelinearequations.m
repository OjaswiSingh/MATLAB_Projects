syms x y z %defining symbolic variables
eqns = [5*x-3*y+2*z==10,3*x-8*y-4*z ==-20,2*x+4*y-9*z ==9];%definig linear equations
[A,b] = equationsToMatrix(eqns);%Converting equations to matrix form
vars = symvar(eqns);%Determine symbolic variables in expression
Sol = linsolve(A,b);%Solution to linear equations

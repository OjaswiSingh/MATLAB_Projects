p=[1 -25 -8 +80]; %defining polynomial
roots_p=roots(p);% roots of the polynomial
y = polyval(p,5);%value of polynomial at x=5
derivative=polyder(p);%derrivative of the polynomia
q=[1 1];%Second polynomial
Multiply=conv(p,q);%multiplying two polynomials

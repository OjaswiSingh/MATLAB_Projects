x=[5 10 20 50 100]; %points on x axis
y=[15 33 53 140 301];%corresponding points on y  axis
graph=plot(x,y);%plotting x and y on graph
a=polyfit(x,y,1);
b=linspace(min(x),max(x),1000);
c=polyval(a,b);
hold on;
plot(b,c);%plotting best fit curve

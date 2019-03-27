syms a
syms f
f=a/100*log(a)+(1-a)*log(1-a);
fplot(f,[0,1],'k');
xlabel('Polymer Volume Fraction');
theta_0=zeros(1);
for i=1:5
    theta_0(i,1)=interp1(x(i,:),y(i,:),conc(i,1)*100,'linear','extrap');
end
conc_0=zeros(1);
for i=1:11
    conc_0(i,1)=interp1(x(:,i),y(:,i),sin(1,i),'linera','extrap');
end


L=10000;  //ft
Ws=6.5; //lbm/ft
Ri=1.22; //inch, inner radius
Re=1.438; //inch, out radius
F=20000; //lbf
ROi=15;  // lbm/gal, inside tube
ROe=7.31; // lbm/gal, annulus
Rp=3.25;   // inch, packer hole size

Ae=%pi*Re^2;
Ai=%pi*Ri^2;
As=Ae-Ai;
Ap=%pi*(Rp/2)^2;

//ROi=9.63;
x=0;  // distance from lower end
W = Ws + (ROi/0.1336808)*(Ai/144) - (ROe/0.1336808)*(Ae/144);
Fb=(ROi/0.1336808)*(L-x)*(As/144);

F=20000;
LAMa=(F+Fb-x*W)/As;
Pis=5000;  //psi
Pes=1000;  // psi
Pe = Pes + (ROe/(0.1336808*12^3)) * (L - x)*12;
Pi = Pis + (ROi/(0.1336808*12^3)) * (L - x)*12;
Rd = 1.329;
LAMr= -((Pi * Ri^2 - Pe * Re^2)/(Re^2 - Ri^2)) + ((Pi - Pe)/(Re^2 - Ri^2))*(Re^2*Ri^2/Rd^2);
LAMt= -((Pi * Ri^2 - Pe * Re^2)/(Re^2 - Ri^2)) - ((Pi - Pe)/(Re^2 - Ri^2))*(Re^2*Ri^2/Rd^2);
n=F/W;

Fa = (Ap - Ai)*Pi - (Ap - Ae)*Pe;
Ff = Ap*(Pi - Pe);

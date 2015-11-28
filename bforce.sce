L=10000;  //ft
Ws=6.5; //lbm/ft
Ri=1.22; //inch, inner radius
Re=1.438; //inch, out radius
F=20000; //lbf
ROi=15;  // lbm/gal, inside tube
ROe=7.31; // lbm/gal, annulus
Pis=5000;  //psi
Pes=1000;  // psi
Rp=3.25;   // inch, packer hole size

Ae=%pi*Re^2;
Ai=%pi*Ri^2;
As=Ae-Ai;
Ap=%pi*(Rp/2)^2;

ROi=9.63;
x=0:10000;
W=Ws-(ROi/0.1336808)*(As/144);
Fb=(ROi/0.1336808)*(L-x)*(As/144);

F=20000;
LAMa=(F+Fb-x*W)/As
n=F/W;

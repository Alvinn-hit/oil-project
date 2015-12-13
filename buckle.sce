X = 120000;
E = 3E+7;
RHOi = [7.31/(0.1336808*12^3),15/(0.1336808*12^3)]; RHOo = [7.31/(0.1336808*12^3),7.31/(0.1336808*12^3)];
Ws = 0.542;
pi = [0,5000]; po = [0,1000];
Ri = 1.22*2; Ro = 1.438*2; Rp = 3.25; r = 1.61;   //???
I = %pi*(Ro^4 - Ri^4)/64;
Ao = %pi*Ro^2/4;
Ai = %pi*Ri^2/4;
As = Ao - Ai;
Ap = %pi*Rp^2/4;
W = Ws + RHOi*Ai - RHOo*Ao;
Pi = pi + RHOi*X; Po = po + RHOo*X;
Fa = (Ap - Ai)*Pi - (Ap - Ao)*Po;
Ff = Ap*(Pi - Po);
//////////////////////////////////////////////////
DFa = Fa(2)-Fa(1);
DL1 = - X*DFa/(E*As);
DFf = Ap*((Pi(2)-Pi(1)) - (Po(2)-Po(1)));
DL2 = - r^2*DFf^2/(8*E*I*W(2));   //within neutral point and F is compression

X = 120000;
E = 3E+7;
RHOi = 15/(0.1336808*12*12*12); RHOo = 7.31/(0.1336808*12*12*12);
Ws = 0.542;
pi = 5000; po = 1000;
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
/////////not correct
DL1 = - X*Fa/(E*As);
DL2 = - r^2*Ff^2/(8*E*I*W);   //within neutral point and F is compression

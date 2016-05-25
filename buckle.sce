X = 120000;
E = 3E+7; v = 0.3; delta=0; B=6.9E-6; DT=-20; Ws = 0.542;
Ri = 1.22*2; Ro = 1.438*2; Rp = 3.25; r = 1.61; R = Ro/Ri;

RHOi = [7.31/(0.1336808*12^3),15/(0.1336808*12^3)]; RHOo = [7.31/(0.1336808*12^3),7.31/(0.1336808*12^3)];
pi = [0,5000]; po = [0,1000];

I = %pi*(Ro^4 - Ri^4)/64;
Ao = %pi*Ro^2/4; Ai = %pi*Ri^2/4; As = Ao - Ai; Ap = %pi*Rp^2/4;
W = Ws + RHOi*Ai - RHOo*Ao;
Pi = pi + RHOi*X; Po = po + RHOo*X;
Fa = (Ap - Ai)*Pi - (Ap - Ao)*Po;
Ff = Ap*(Pi - Po);
//////////////////////////////////////////////////
DFa = Fa(2)-Fa(1);
DL1 = - X*20000/(E*As);
DFf = Ap*((Pi(2)-Pi(1)) - (Po(2)-Po(1)));
DL2 = - r^2*20000^2/(8*E*I*W(2));   //within neutral point and F is compression
DRHOi = RHOi(2)-RHOo(1); DRHOo = RHOo(2)-RHOo(1);
DL3 = -(v/E)*((DRHOi-R^2*DRHOo-((1+2*v)*delta/(2*v)))/(R^2-1))*X^2 - (2*v/E)*(((pi(2)-pi(1))-R^2*(po(2)-po(1)))/(R^2-1))*X;
DL4 = X*B*DT;

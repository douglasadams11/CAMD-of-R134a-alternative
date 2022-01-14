$title "CAMD of replacement for R134a refrigerant"
$onEolCom

SETS                                      
i building-block molecular groups / i1*i63 /
j properties for use in equations / j1*j11 / 
k indices for vapour pressure calculation / evap, cond /
l indices of parameters in table c / 1*5 /
oddly_bonded(i) denotes the oddly bonded groups / i1,i3,i5,i8,i10,i11,i13*i15,i17*i19,i21*i23,i25,i27,i29,i30,i32,i34*i36,i38*i40,i42*i44,i46*i50,i52*i58,i60*i62 /

x define the number of integer cuts / 1*10 /
dyn(x) dynamic set of x for integer cuts
;

dyn(x) = NO;

PARAMETERS
pL(j)       Defines the lower bounds for the properties
    /j1 0,j2 0,j3 0,j4 0,j5 1.1,j6 0,j7 -10,j8 -10,j9 0,j10 0,j11 20.353 /
pU(j)       Defines the upper bounds for the properties
    /j1 1000,j2 1000,j3 1000,j4 10000,j5 100,j6 14,j7 10,j8 10,j9 1,j10 143.67,j11 10000 /
v(i)        Defines the valency & number of bonds on group i of the building block molecular groups 
      / i1  1, i2  2, i3  3, i4  4, i5  1, i6  2, i7  2, i8  4, i9  4, i10 1,
    i11 1, i12 2, i13 1, i14 1, i15 1, i16 2, i17 3, i18 1, i19 1, i20 2,
    i21 3, i22 1, i23 1, i24 2, i25 3, i26 4, i27 1, i28 2, i29 3, i30 1,
    i31 2, i32 3, i33 2, i34 3, i35 1, i36 1, i37 2, i38 3, i39 1, i40 1,
    i41 2, i42 1, i43 1, i44 1, i45 2, i46 3, i47 1, i48 1, i49 1, i50 3,
    i51 2, i52 1, i53 1, i54 1, i55 1, i56 1, i57 1, i58 1, i59 2, i60 3,
    i61 1, i62 1, i63 2 /
Nmax        Defines the maximum number of any building-block molecular groups
nL(i)       Defines the lower bound for building-block molecular groups
nU(i)       Defines the upper bound for building-block molecular groups
T_evap      Defines the evaporation temperature
T_crit      Defines the condensation temperature
T_mean      Defines the mean temperature
T_evap0     Defines the universal constant for evaporation temperature (Marrero & Gani Table 2)
T_crit0     Defines the universal constant for critical temperature (Marrero & Gani Table 2)
P_crit1     Defines the universal constant for the first-order critical pressure (Marrero & Gani Table 2)
P_crit2     Defines the universal constant for the second-order critical pressure (Marrero & Gani Table 2)
H_vap0      Defines the universal constant for the enthalpy of vapourisation (Marrero & Gani Table 2)
c(i,l)      Defines the table of constants for the building block molecules
nv(i,x)     Molecule ID values
OFv(x)      Objective function values 
pv(j,x)     Property values 
;

TABLE c(i,l) Table of constants for the building-block molecular groups
          1           2           3           4           5         
i1      0.8491      1.7506      0.018615    0.217       8.80       
i2      0.7141      1.3327      0.013547    4.910       7.26        
i3      0.2925      0.5960      0.007259    7.962       5.00        
i4     -0.0671      0.0306      0.001219   10.730       1.76        
i5      1.5596      3.2295      0.025745    4.031      10.30        
i6      1.5597      3.0741      0.023003    9.456      10.20
i7      1.3621      2.7717      0.021137    8.602       9.00
i8      1.2971      2.5666      0.019609   14.095       8.90
i9      1.2739      2.6391      0.014114   19.910       7.60
i10     2.6840      5.4330      0.035483   11.310      16.16
i11     1.7618      3.7897      0.014010    6.144      11.80
i12     1.6767      4.5870      0.010888   12.540      11.80
i13     2.5670      5.2188     -0.005401   24.214      10.70
i14     5.1108     14.6038      0.009885   17.002      19.10
i15     3.1178      7.0058      0.025227   15.195      21.46
i16     2.6761      5.7157      0.019619   19.392      19.92
i17     2.1748      4.4743      0.012487   20.350      17.66
i18     2.5388      5.8013      0.010204   12.370      12.66
i19     3.1228      6.3179      0.033812   19.342      23.30
i20     2.9850      5.9619      0.026983   21.100      21.76
i21     2.2869      4.7558      0.021990   24.937      19.50
i22     2.5972      5.6064      0.015249   15.422      18.00
i23     1.7703      3.4393      0.020084    5.783      17.20
i24     1.3368      2.4217      0.017954    9.997      15.66
i25     0.8924      0.7889      0.014487   14.620      13.40
i26     0.4983      0.2511      0.005613   13.850      10.16
i27     2.7987      8.1745      0.011413   15.432      21.26
i28     2.0948      4.2847      0.013049   16.048      19.00
i29     1.6525      2.8546      0.010790   17.257      15.76
i30     2.2514      4.5529      0.015963   11.831      19.30
i31     1.8750      3.2422      0.020482   13.067      17.76
i32     1.2317      2.0057      0.005329   14.048      15.50
i33     1.3841      3.0106      0.021186    9.493      16.30
i34     1.1222      2.1673      0.027454   12.636      14.76
i35     2.0315      4.7420      0.000571   13.425      14.00
i36     4.5871     12.9827      0.036523   21.923      21.16
i37     3.9774      8.4309      0.029034   24.963      18.90
i38     2.8870      5.8829      0.024654   24.967      15.66
i39     3.0972      8.1381      0.024346   16.639      13.90
i40     4.5311     10.9507      0.021056   29.640      27.36
i41     3.0869      9.5487      0.014899   29.173      25.10
i42     6.5652     25.1184      0.001467   44.240      26.66
i43     6.0070     15.4603      0.043090   38.290      37.76
i44     2.6364      6.2561      0.021419   11.754      15.86
i45     2.0246      4.3756      0.015640   12.048      13.60
i46     1.7049      3.7063      0.009187   16.597      10.36
i47     3.3420      7.8956      0.282360   17.251      22.20
i48     3.9093      8.8073      0.036746   20.550      24.96
i49     1.5022      3.3179      0.233150    8.238      11.26
i50     1.0084      2.1633     -0.010120    6.739       5.76
i51     0.5142      0.8543      0.018572    1.621       9.76
i52     1.1916      1.7737      0.048565    7.352      13.76
i53     2.5053      5.1653      0.037948    8.630      22.96
i54     1.7227      3.0593      0.041641    8.086      18.36
i55     3.1778      8.5775     -0.004637   14.171       8.60
i56     2.4231      4.5036     -0.001460    9.888       9.00
i57     4.8721     10.4579      0.025986   31.483      33.62
i58     3.1974      7.7300      0.017299   16.815      17.96
i59     2.5910      5.8527      0.008968   17.098      15.70
i60     2.0902      4.6431      0.005118   18.397      12.46
i61     2.3323      7.7987      0.006399    9.813      10.70
i62     2.9892      6.9733      0.018013   14.296      16.80
i63     2.6524      6.4871      0.015254   16.965      15.26
;

* Setting group bounds
Nmax = 3;         !! maximum number of building-block molecules in the designed molecule
nU(i) = Nmax;     !! maximum number of any building-block molecular group i in the designed molecule
nL(i) = 0;        !! minimum number of any building-block molecular group i in the designed molecule

* Target operating temperatures stated in the design brief
T_evap   = 272;
T_crit   = 316;
T_mean   = (T_evap+T_crit)/2;

* Constants for the Marrero and Gani method
T_evap0  = 222.543;     !! K
T_crit0  = 231.239;     !! K
P_crit1  = 5.9827;      !! bar
P_crit2  = 0.108998;    !! bar^{-0.5}
H_vap0   = 11.733;      !! kJ/mol

VARIABLES
p(j)    Bringing the property values into a variable
f0(k)   Pitzer expansion constant
f1(k)   Pitzer expansion constant
f2(k)   Pitzer expansion constant
OF      Objective function
;

INTEGER VARIABLES
n(i)                The number of consituent building-block molecules in the designed molecule
nOdd                The number of odd bonds in the designed molecule
;

* maximum number of odd bonds in the designed molecule
nOdd.up = 15;
* minimum number of odd bonds in the designed molecule
nOdd.l = 1;


EQUATIONS
* Thermodynamic models
eq1a            Equation for the boiling point (T_evap)             \\ Marrero & Gani Table 1
eq1b            Equation for the Critical temperature (T_crit)      \\ Marrero & Gani Table 1
eq1c            Equation for the Critical pressure (P_crit)         \\ Marrero & Gani Table 1
eq1d            Standard enthalpy of vaporization at 298K (H_vap)   \\ Marrero & Gani Table 1
eq2a            Pitzer expansion (evap)   \\ Pitzer expansion
eq2b            Pitzer expansion (cond)   \\ Pitzer expansion
eq3a1           Ambrose & Walton coefficient
eq3a2           Ambrose & Walton coefficient
eq3a3           Ambrose & Walton coefficient
eq3b1           Ambrose & Walton coefficient
eq3b2           Ambrose & Walton coefficient
eq3b3           Ambrose & Walton coefficient
eq4             Alpha (for eq6) 
eq5             Beta (for eq6)
eq6             Acentric factor --> page 45
eq7             Liquid heat capacity      \\ Chueh and Swanson group contribution method
eq8             Enthalpy of vaporization at T \\ Watson relation
eq9             Structural constraint 1 \\
eq10            Structural constraint 2 \\
eq11            Structural constraint 3 \\
eq12            Structural constraint 4 \\
eq13            Structural constraint 5 \\
eq14(i)         Structural constraint 6 \\
eq15            Objective function
eq16(x)         Integer cuts
;

* Marrero and Gani method
eq1a..      p('j1') =e= T_evap0*log(SUM(i,n(i)*c(i,'1')));
eq1b..      p('j2') =e= T_crit0*log(SUM(i,n(i)*c(i,'2')));
eq1c..      p('j3') =e= power(SUM(i,n(i)*c(i,'3'))+P_crit2,-2)+P_crit1;
eq1d..      p('j4') =e= SUM(i,n(i)*c(i,'4'))+H_vap0;

* Pitzer Expansion with Ambrose-Watson coefficients
eq2a..      p('j5') =e= exp(f0('evap')+p('j9')*f1('evap')+power(p('j9'),2)*f2('evap'))*p('j3');
eq2b..      p('j6') =e= exp(f0('cond')+p('j9')*f1('cond')+power(p('j9'),2)*f2('cond'))*p('j3');
eq3a1..     f0('evap') =e= (-5.97616*(1-T_evap/p('j2'))+1.29874*(1-T_evap/p('j2'))**1.5-0.60394*(1-T_evap/p('j2'))**2.5-1.06841*(1-T_evap/p('j2'))**5)/(T_evap/p('j2'));
eq3a2..     f1('evap') =e= (-5.03365*(1-T_evap/p('j2'))+1.11505*(1-T_evap/p('j2'))**1.5-5.41217*(1-T_evap/p('j2'))**2.5-7.46628*(1-T_evap/p('j2'))**5)/(T_evap/p('j2'));
eq3a3..     f2('evap') =e= (-0.64771*(1-T_evap/p('j2'))+2.41539*(1-T_evap/p('j2'))**1.5-4.26979*(1-T_evap/p('j2'))**2.5-3.25259*(1-T_evap/p('j2'))**5)/(T_evap/p('j2'));
eq3b1..     f0('cond') =e= (-5.97616*(1-T_crit/p('j2'))+1.29874*(1-T_crit/p('j2'))**1.5-0.60394*(1-T_crit/p('j2'))**2.5-1.06841*(1-T_crit/p('j2'))**5)/(T_crit/p('j2'));
eq3b2..     f1('cond') =e= (-5.03365*(1-T_crit/p('j2'))+1.11505*(1-T_crit/p('j2'))**1.5-5.41217*(1-T_crit/p('j2'))**2.5-7.46628*(1-T_crit/p('j2'))**5)/(T_crit/p('j2'));
eq3b3..     f2('cond') =e= (-0.64771*(1-T_crit/p('j2'))+2.41539*(1-T_crit/p('j2'))**1.5-4.26979*(1-T_crit/p('j2'))**2.5-3.25259*(1-T_crit/p('j2'))**5)/(T_crit/p('j2'));
eq4..       p('j7') =e= -5.97214-log(p('j3')/1.013)+6.09648*p('j2')/p('j1')+1.28862*log(p('j1')/p('j2'))-0.169347*(p('j1')/p('j2'))**6;
eq5..       p('j8') =e= 15.2518-15.6875*p('j2')/p('j1')-13.4721*log(p('j1')/p('j2'))+0.4357*(p('j1')/p('j2'))**6;
eq6..       p('j9') =e= p('j7')/p('j8');

* Heat capacity
eq7..       p('j10') =e= 4.184*SUM(i,n(i)*c(i,'5'));

* Watson's method
eq8..       p('j11') =e= p('j4')*((1-T_evap/p('j2'))/(1-298/p('j2')))**0.38;

* Rule 1: structural constraint
eq9..      SUM(i, n(i)) =g= 2;

* Rule 2: structural constraint
eq10..      SUM(oddly_bonded, n(oddly_bonded)) =e= 2*nOdd;

* Rule 3: structural constraint
eq11..      SUM(i, n(i)*v(i)) =g= 2*(SUM(i, n(i))-1);

* Rule 4: structural constraint
eq12..      SUM(i, n(i)*v(i)) =l= SUM(i, n(i))*(SUM(i, n(i))-1);

* Rule 5: Odele-Macchietto octet rule
eq13..      SUM(i,n(i)*(2-v(i))) =e= 2;

* Odele-Macchietto constraints 
ALIAS (i, ii);
eq14(i)..   SUM(ii, n(ii)) =g= n(i)*(v(i) - 1)+2;

* Objective function
eq15..    OF   =e= p('j10')/p('j11');

* Integer cuts
eq16(x)$(dyn(x)).. SUM(i,abs(nv(i,x)-n(i)))=g=1;

n.lo(i) = nL(i);
n.up(i) = nU(i);
p.lo(j) = pL(j);
p.up(j) = pU(j);

* set intial values
p.l('j1')  = 250;
p.l('j2')  = 375;
p.l('j3')  = 22;
p.l('j4')  = 22;
p.l('j5')  = 1.5;
p.l('j6')  = 4.5;
p.l('j7')  = -0.1;
p.l('j8') = -4;
p.l('j9') = 0.04;
p.l('j10')  = 130;
p.l('j11') = 20;
* Initial molecular guess CH3CH3
n.l('i1')  = 2;

OPTION SYSOUT = ON;

OPTION MINLP = baron;

Model CAMD /all/;

CAMD.OPTFILE=1;

*Integer cut
nv(i,x)=0;
ALIAS(x,xx);
LOOP(xx,
         SOLVE CAMD MINIMISING OF USING MINLP;
         nv(i,xx)=n.l(i);
         OFv(xx)=OF.l;
         pv(j,xx) = p.l(j);
         dyn(xx)=YES;
);

DISPLAY nv, pv, OFv;
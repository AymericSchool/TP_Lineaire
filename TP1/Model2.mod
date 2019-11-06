/*********************************************
 * OPL 12.7.1.0 Model
 * Author: Aymeric
 * Creation Date: 6 nov. 2019 at 14:48:44
 *********************************************/
 
 dvar int Caw;
 dvar int Cax;
 dvar int Cay;
 dvar int Caz;
 dvar int Cbw;
 dvar int Cbx;
 dvar int Cby;
 dvar int Cbz;
 dvar int Ccw;
 dvar int Ccx;
 dvar int Ccy;
 dvar int Ccz;
 
 dvar int Taw;
 dvar int Tax;
 dvar int Tay;
 dvar int Taz;
 dvar int Tbw;
 dvar int Tbx;
 dvar int Tby;
 dvar int Tbz;
 dvar int Tcw;
 dvar int Tcx;
 dvar int Tcy;
 dvar int Tcz;
 
 minimize
 20 * Caw + 40 * Cax + 70 * Cay + 50 * Caz 
 + 100 * Cbw + 60 * Cbx + 90 * Cby + 80 * Cbz
 + 10 * Ccw + 110 * Ccx + 30 * Ccy + 200 * Ccz;
 
 subject to {
 	c1: Taw + Tax + Tay + Taz == 400;
 	c2: Tbw + Tbx + Tby + Tbz == 1500;
 	c3: Tcw + Tcx + Tcy + Tcz == 900;
 	
 	c4: Taw + Tbw + Tcw == 700;
 	c5: Tax + Tbx + Tcx == 600;
 	c6: Tay + Tby + Tcy == 1000;
 	c7: Taz + Tbz + Tcz == 500;
 	
 	Taw <= 400 * Caw;
 	Tax <= 400 * Cax;
 	Tay <= 400 * Cay;
 	Taz <= 400 * Caz;
 	
 	Tbw <= 1500 * Cbw;
 	Tbx <= 1500 * Cbx;
 	Tby <= 1500 * Cby;
 	Tbz <= 1500 * Cbz;
 	
 	Tcw <= 900 * Ccw;
 	Tcx <= 900 * Ccx;
 	Tcy <= 900 * Ccy;
 	Tcz <= 900 * Ccz;
 	
 	Caw >= 0;
 	Cax >= 0;
 	Cay >= 0;
 	Caz >= 0;
 	
 	Cbw >= 0;
 	Cbx >= 0;
 	Cby >= 0;
 	Cbz >= 0;
 	 	
 	Ccw >= 0;
 	Ccx >= 0;
 	Ccy >= 0;
 	Ccz >= 0;
 	
 	Taw >= 0;
 	Tax >= 0;
 	Tay >= 0;
 	Taz >= 0;
 	
 	Tbw >= 0;
 	Tbx >= 0;
 	Tby >= 0;
 	Tbz >= 0;
 	 	
 	Tcw >= 0;
 	Tcx >= 0;
 	Tcy >= 0;
 	Tcz >= 0;
 }
 
 /*
 // solution (optimal) with objective 290
// Quality Incumbent solution:
// MILP objective                                2.9000000000e+002
// MILP solution norm |x| (Total, Max)           2.80600e+003 6.00000e+002
// MILP solution error (Ax=b) (Total, Max)       0.00000e+000 0.00000e+000
// MILP x bound error (Total, Max)               0.00000e+000 0.00000e+000
// MILP x integrality error (Total, Max)         0.00000e+000 0.00000e+000
// MILP slack bound error (Total, Max)           0.00000e+000 0.00000e+000
// 

Caw = 1;
Cax = 0;
Cay = 0;
Caz = 0;
Cbw = 0;
Cbx = 1;
Cby = 1;
Cbz = 1;
Ccw = 1;
Ccx = 0;
Ccy = 1;
Ccz = 0;
Taw = 400;
Tax = 0;
Tay = 0;
Taz = 0;
Tbw = 0;
Tbx = 600;
Tby = 400;
Tbz = 500;
Tcw = 300;
Tcx = 0;
Tcy = 600;
Tcz = 0;
 
 */

/*********************************************
 * OPL 12.7.1.0 Model
 * Author: Aymeric
 * Creation Date: 6 nov. 2019 at 13:24:56
 *********************************************/

 dvar float croquettes;
 dvar float boulettes;

 minimize 
 	0.3 * croquettes + 0.2 * boulettes;
 
 subject to {
 	limi: croquettes + boulettes <= 5;
 	lipi: 8 * croquettes + 12 * boulettes >= 24;
 	gluc: 12 * croquettes + 12 * boulettes >= 36;
 	prot: 2 * croquettes + boulettes >= 4;
 } 


// solution (optimal) with objective 0.7
// Quality There are no bound infeasibilities.
// There are no reduced-cost infeasibilities.
// Max. unscaled (scaled) Ax-b resid.          = 0 (0)
// Max. unscaled (scaled) c-B'pi resid.        = 1.38778e-017 (1.38778e-017)
// Max. unscaled (scaled) |x|                  = 2 (2)
// Max. unscaled (scaled) |slack|              = 8 (2)
// Max. unscaled (scaled) |pi|                 = 0.1 (0.2)
// Max. unscaled (scaled) |red-cost|           = 0 (0)
// Condition number of scaled basis            = 7.3e+000
// 

// croquettes = 1;
// boulettes = 2;
 
/* Objective function */
min: 2 AB + 4 AC + 9 AD + 3 BC + CE + 3 DE + 2 ED; 

/* Constraints */
AB + AC + AD = 50;
-1 AB + BC = 40;
-1 AC - BC + CE = 0;
- 1 AD + DE - ED = -30;
-1 CE -DE + ED = -60;
AB <= 10;
CE <= 80;
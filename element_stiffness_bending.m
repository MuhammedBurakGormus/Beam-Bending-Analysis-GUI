function K = element_stiffness_bending(nl,ENL,E,I)

x(1) = ENL(nl(1),1);
y(1) = ENL(nl(1),2);
x(2) = ENL(nl(2),1);
y(2) = ENL(nl(2),2);

L = sqrt((x(1) - x(2))^2 + (y(1) - y (2))^2);

K = (2*E*I)/(L^3) * [ 6    3*L       -6    3*L;
                      3*L  2*(L^2)   -3*L  L^2;
                      -6   -3*L       6    -3*L;
                      3*L   L^2      -3*L  2*(L^2)];  
end

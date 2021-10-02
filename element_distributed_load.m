function DL_vector = element_distributed_load(nl,ENL,magnitude)
% nl = [nodenumber1,nodenumber2]
x(1) = ENL(nl(1),1); %x coor
y(1) = ENL(nl(1),2); %y coor
x(2) = ENL(nl(2),1);
y(2) = ENL(nl(2),2);
L = sqrt((x(1) - x(2))^2 + (y(1) - y(2))^2);
DL_vector = (magnitude * L / 12) * [ 6; L; 6; -L];
end

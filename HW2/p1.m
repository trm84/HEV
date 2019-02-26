%Tyler Matthews 
%HW2 HEV-P2.8


%vi
syms x
T = abs(sqrt(1 + (2.05/sqrt(x))^2)); %absolute value of (1 + dfx^2)^0.5
M = int(T,[0 3*mile]); % integral of above function from 0 to 15840
Tx = double(M(1)) %Tangential Road Length
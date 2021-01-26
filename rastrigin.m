% Case 3 - Rastrigin Function
function z=rastrigin(v)
x=v(1,1);
y=v(1,2);

        z=20 + x^2 + y^2 -10*(cos(2*pi*x)+cos(2*pi*y));
end
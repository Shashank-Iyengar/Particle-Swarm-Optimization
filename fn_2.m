% Case 2 - Function
function z=fn_2(v)
x=v(1,1);
y=v(1,2);
% a_sigma=2;
% b_sigma=4;
% c_sigma=3;
% c=[10 20];
% c1=[30 10];
% c2=[20 40];
% sigma=[10 20 30];
% x=[];
% y=[];

        z=(1.5-x+(x*y))^2 + (2.25-x+(x*y^2))^2 + (2.625-x+(x*y^3))^2;
end
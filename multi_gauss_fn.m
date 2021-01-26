function y=multi_gauss_fn(x)
a_sigma=2;
b_sigma=4;
c_sigma=3;
c=[10 20];
c1=[30 10];
c2=[20 40];
sigma=[10 20 30];

        y=-1*(a_sigma*exp(-(((x(1)-c(1))^2)+((x(2)-c(2))^2))/sigma(1))+b_sigma*exp(-(((x(1)-c1(1))^2)+((x(2)-c1(2))^2))/sigma(2))+c_sigma*exp(-(((x(1)-c2(1))^2)+((x(2)-c2(2))^2))/sigma(3)));
end
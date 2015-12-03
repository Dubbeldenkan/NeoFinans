
% simulation 
Ts = 0.1;

% data region
tax = 0.3;
population = 100000;
public_average_salary = 25000;
public_employees = 20000;
education = 20;

% The price, material and production are for one unit
% salary and quantity is for one month
% data car
car_price = 200000;
car_material = 30000;
car_production = 10000;
car_salary = 18000;
car_employees = 10000;
car_effect_unit = 1500;
car_KpEmployeeController = 0.0002;
car_KiEmployeeController = 0.001;

% data oil
oil_price = 1000;
oil_material = 10;
oil_production = 50;
oil_salary = 12000;
oil_employees = 5000;
oil_effect_unit = 15;
oil_KpEmployeeController = 0.0002;
oil_KiEmployeeController = 0.001;

% data food
food_price = 400;
food_material = 2;
food_production = 3;
food_salary = 15000;
food_employees = 20000;
food_effect_unit = 1;
food_KpEmployeeController = 0.0002;
food_KiEmployeeController = 0.001;

unemployees = (population - public_employees - car_employees -...
    oil_employees - food_employees)/population;

sim_time = 50;

sim('GNP');

figure,
plot(GNP_result)
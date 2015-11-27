
tax = 0.3;
population = 100000;
public_average_salary = 25000;

public_employees = 20000;

% The price, material and production are for one unit
% salary and quantity is for one month
% data car
car_quantity = 2000;
car_price = 200000;
car_material = 30000;
car_production = 10000;
car_salary = 18000;
car_employees = 15000;

% data oil
oil_quantity = 500000;
oil_price = 100;
oil_material = 10;
oil_production = 50;
oil_salary = 12000;
oil_employees = 10000;

% data food
food_quantity = 10000000;
food_price = 30;
food_material = 2;
food_production = 3;
food_salary = 15000;
food_employees = 25000;

unemployees = (population - public_employees - car_employees -...
    oil_employees - food_employees)/population;

sim('GNP');

GNP_result.Data(1)
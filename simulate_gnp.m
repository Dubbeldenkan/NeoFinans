
% simulation 
Ts = 0.1;
upperEfficiency = 1;
lowerEfficiency = 0.000001;


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
car_KpEmployeeController = 0.0000000002/Ts;
car_KiEmployeeController = 0.0000000001/Ts;

% data oil
oil_price = 1000;
oil_material = 10;
oil_production = 50;
oil_salary = 12000;
oil_employees = 5000;
oil_effect_unit = 0.01;
oil_KpEmployeeController = 0.0000000002/Ts;
oil_KiEmployeeController = 0.0000000001/Ts;

% data food
food_price = 200;
food_material = 2;
food_production = 3;
food_salary = 10000;
food_employees = 20000;
food_effect_unit = 0.001;
food_KpEmployeeController = 0.00000000002/Ts;
food_KiEmployeeController = 0.00000000001/Ts;

unemployees = (population - public_employees - car_employees -...
    oil_employees - food_employees)/population;

sim_time = 20000;

sim('GNP');

number_of_col = 2;
number_of_row = 4;

figure

subplot(number_of_col,number_of_row,1)
plot(foodVolume)
title('food volume')
subplot(number_of_col,number_of_row,2)
plot(foodCapital)
title('Food capital')
subplot(number_of_col,number_of_row,3)
plot(foodEmployees)
title('food employees')
subplot(number_of_col,number_of_row,4)
plot(foodEmployeesChange)
title('employee change')

subplot(number_of_col,number_of_row,5)
plot(oilVolume)
title('oil volume')
subplot(number_of_col,number_of_row,6)
plot(oilCapital)
title('oil capital')
subplot(number_of_col,number_of_row,7)
plot(oilEmployees)
title('oil employees')
subplot(number_of_col,number_of_row,8)
plot(oilEmployeesChange)
title('employee change')

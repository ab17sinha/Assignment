#Calculate the probability given the chi_square_valu and the degree_of_freedom
a = input('Enter the chi_square value: : ');
dof=input('Enter degree of freedom: ');

p=chi_table_probability(a,dof);

fprintf('For chi_square value %f with degree of freedom %d cmulative probability is %f',a,dof,p);


#Calculate the chi_square_valu given the probability and the degree_of_freedom
a = input('Enter the cmulative probability: ');
dof=input('Enter degree of freedom: ');

p=chi_table_score(1-a,dof);

fprintf('For cmulative probability %f with degree of freedom %d chi_square value is %.5f',a,dof,p);



#Function to calculate the probability
function [p] = chi_table_probability(a,dof)
p=1-chi2cdf(a,dof);
end


#Function to calculate the chi_score
function [p] = chi_table_score(a,dof)
p=chi2inv(a,dof);
end


#_____________________OUTPUT____________________________
#Enter the chi_square value: : 12
#Enter degree of freedom: 4
#For chi_square value 12.000000 with degree of freedom 4 cmulative probability is 0.017351

#Enter the cmulative probability: .017351
#Enter degree of freedom: 4
#For cmulative probability 0.017351 with degree of freedom 4 chi_square value is 12.00004

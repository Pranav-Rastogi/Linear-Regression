#Changing the current working directory to C:
cd C:

#Initializing 'data' matrix from a file named ex1data1.txt saved in C:
#ex1data1 contains the training set
data = load('ex1data1.txt');

#Defining variables
#length(data) gets the number of rows in the matrix 'data'
#ones(m, n) return an m*n matrix of all ones
y = data(:, 2); #All rows of second column of 'data'
x = [ones(length(data), 1), data(:, 1)]; #First column is all 1's and second column is all rows of first column of 'data'
alpha = 0.01;
m = length(data);
theta = [1; 1];

#iterating repeatedly to reach final value of theta
for i = 1:10000
  theta = theta-(alpha/m)*(x')*((x*theta)-y); #Formula used
endfor

#Ploting the given training set
plot(data(:, 1), data(:, 2), 'rx', 'markersize', 5)

#Plots 2nd graph over this without erasing the first
hold on;

#ploting the predicted line
X = 1:25;
Y = theta(1, 1)+theta(2, 1)*X;
plot(X, Y);

#saving the plot as LinearRegression.jpg
print -djpg LinearRegression.jpg

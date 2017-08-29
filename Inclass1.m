% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a

%In the first example, the value assigned to x is a number, whereas in the
%second example the value assigned to a is a string. This explains why the
%result of the first makes sense as opposed to the second.
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]

%In these statements, there is concatenation wherein variables that
%were assigned earlier are being connected. In x2, x was a number, and so
%placing it within brackets creates a number array. For a2, a was a string,
%and so placing it within the same brackets keeps it as a string, and just
%adds to it. For x2b, the use of the semicolon makes it a vertical array as
%opposed to a horizontal one.

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

%For a==b, the answer that is returned is 0, indicating that the operation
%is false. The == symbol checks whether the two values are equal, and since
%1 is not equal to 2, it is false.

%For a=b, the = operator is used for variable assignment, and so is
%assigning the number for b into a. Therefore, a would return 2.

%For this iteration of a==b, both a and b are the same number and the
%operation checking for equality (==) will return 1, or True


%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b

%This operation is comparing the two arrays for matching numbers. As 2 is
%the only number that is shared by both a and b and is in the same
%location, that returned a 1 (True), whereas the rest of the numbers are
%not the same and returned 0 (False).

%explain why this gives an error:

b = [2, 3];
a == b

%This returns a "Matrix dimensions must agree" error since the dimensions
%of the two arrays that are being compared are not the same and cannot be
%analyzed.

%explain why this does not give an error
b = 2;
a == b 

%This does not give an error because it is simply a number and not a
%matrix. The operation involves identifying whether 2 is present in the a
%array.
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]

%The way the second line works is it takes the assigned oneToTen variable,
%which is values from 1-10 as the lower limit or first part of the answer,
%and the upper limit becomes oneToTen+10, or 20.


% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty

%2:+2:20
%oneToTen+1:+2:20


% 2. odd numbers from one to nineteen

%1:+2:19
%oneToTen:+2:19

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)

%f = oneToTen+1:+2:20
%g = fliplr(f)

% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)

%The fliplr function does not work for this iteration because it is a
%vertical array with only one column. The equivalent function that would
%work is flipud.

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2

%The addition of the . in front of the * distinguishes a matrix operation
%from an array operation, which explains the different outputs of the two
%commands. 
%The former multiplies the rows and columns by each other, adding up the products
%(i.e. (1*2)+(1*2)) to yield 4 at each position.
%The latter multiplies the arrays element by element, yielding
%the output 2 in each location.


%explain this command:
m2./m1

%This command divides the matrix m2 by m1 element by element, which is 2/1,
%yielding 2 at each location.

%extra credit: explain why this command gives a warning:
m2/m1

%This is right matrix division, where similar to multiplication, the rows
%and columns are divided by each other and the products are subtracted
%((1*2) - (1*2)), yielding zero, which makes the operation run incorrectly.
%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)

%A 5x5 matrix of random numbers was generated with the first command. In
%the second command, the number at Row 2, Column 3 was outputted.

rand_nums(2:4,3)

%Numbers ranging from Rows 2-4 at Column 3 were outputted.

rand_nums(1:2,3:4)

%Numbers from Rows 1 and 2 at Columns 3 and 4 were outputted.

rand_nums(:,2)

%All numbers from Column 2 were outputted.

rand_nums(1,:)

%All numbers from Row 1 were outputted

rand_nums(:,[1 3 5])

%Numbers from Columns 1, 3, 5 were outputted.



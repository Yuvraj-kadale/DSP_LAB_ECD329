% Author : Yuvraj Kadale
% Roll No: 184534

% Let total number of samples be N
N = 21;
% let the samples be from n= 0 to n= 20
n = 0:1:N-1;

%let x be any random DT signal 
x=(0.25).^n;

% As we know that O/p signal should have same no.of symbols as that of I/p.
%let X be the final output
X=0; % Initilised Output
z= sym('z'); % defining symbol

for i=0:(N-1)
    X=X+x(i+1)*z^(-i);
end

disp('Z transform of the given function is:');
disp(X);

%disp('Verifying output with the help of inbuilt function we get');
%disp(ztrans(X));

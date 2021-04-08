% Author : Yuvraj Kadale
% Roll No: 184534

%Convolution of two signals

%let one of the function be x
x =[1 2 -1];                 % some random discrete function x
a= -1:1;                     % timeline -1 to 1
subplot(4,1,1)               % plotting at first plot of 4x1
stem(a,x)                    % stem for discreate signal
xlabel('Index Time');        % label on X-axis
ylabel('Amplitude');         % label on Y axis
title ('Signal x(n)');       % tite of the plot
axis([-2 5 -2 3]);           % defining range for axis
grid on;

%let the Second signal be y 
y=[4 1 2 5];                 % some random Function y  
b=0:3;
subplot(4,1,2)               % plotting at second plot of 4x1
stem(b,y);          
xlabel('Index Time');        % label on X axis  
ylabel('Amplitude');         % label on Y axis
title ('Signal h(n)');       % Title of the plot  
axis([-2 5 0 6]);            % Range of axis
grid on;


% let s be the result of convolution
s=convolution(x,y);          % convolving signal x with signal y
c=-1:4;      
subplot(4,1,3);              % plotting of third plot of 4x1
stem(c,s);        
xlabel('Index Time');        % label on X axis
ylabel('Amplitude');         % label on Y axid
title ('Discrete Convoluted Signal');
axis([-2 5 -7 11]);          % range of axis
grid on;
disp('Signal After convolution is')
disp(s)
disp('Verifying the result with inbuilt function we get')
disp(conv(x,y))

%corelation of two signals

%let t be the result of cross corelation
t=corelation(x,y);           % taking corelation of x and y
e=-3:2;  
subplot(4,1,4);              % plotting of fourth plot of 4x1
stem(e,t);        
xlabel('Index Time');        % label on X axis
ylabel('Amplitude');         % label on Y axid
title ('Cross correlated Signal');
axis([-2 5 -7 11]);          % range of axis
grid on;
disp('Signal After correlation is')
disp(t)
disp('Verifying the result with inbuilt function we get')
disp(xcorr(x,y))

% function for convolution

function convo = convolution(f1,f2) 
    lf1 = length(f1);        % length of signal f1
    lf2 = length(f2);        % length of signal f2
    n = lf1+lf2-1;            
    convo = zeros(1,n);      % providing zero padding
    xt = [f1,zeros(1,lf2-1)];
    ht = [f2,zeros(1,lf1-1)];
    for i=1:n
        for j=1:i
            convo(i) =convo(i)+xt(j)*ht(i-j+1); 
        end
    end
end 

% Function for cross correlation

function crossco = corelation(f1,f2)
    
    lf1 = length(f1);        % length of signal f1
    lf2 = length(f2);        % length of signal f2
    n = lf1+lf2-1;
    z = fliplr(f2);          % elements flipped left to right
    
         % providing zero padding
    crossco = zeros(1,n);
    xt = [f1,zeros(1,lf2)];
    zt = [z,zeros(1,lf1)];
    
    for i=1:n
        crossco(i)=0;
        for j=1:lf1
            if((i-j+1)>0)
                crossco(i)=crossco(i)+(xt(j)*zt(i-j+1));
            else
            end
        end
    end
end
    
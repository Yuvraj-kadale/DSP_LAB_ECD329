% Author : Yuvraj Kadale
% Roll No: 184534

% Matlab program to to generate elementary discrete time signals.

% Let total number of samples be N
N = 21;
% let the samples be from n= 0 to n= 20
n = 0:1:N-1;

% Generation of Unit Step function
figure(1);
x1 = ones(1,N);             % setting Amplitude to one
subplot(2,2,1);             % locating on first plot of  2 X 2
stem(n,x1);                 %Stem for discrete output, use plot for continuous signal.
xlabel('n');                % label on X-axis
ylabel('x1(n)');            % lable on Y-axis
title('Unit Step Signal');  %Title of the graph
axis([-5 15 0 2]);

% Genration of Ramp signal
x2 = n;             
subplot(2,2,2);             % locating on second plot of  2 X 2
stem(n,x2);                 %Stem for discrete output, use plot for continuous signal.
xlabel('n');                % label on X-axis
ylabel('x2(n)');            % lable on Y-axis
title('Unit Ramp Signal');  %Title of the graph

% Generation of Unit Impulse signal
p = -5:1:5;                % setting time interval from -5 to +5 with increment of 1 unit
subplot(2,2,3);             % locating on third plot of  2 X 2
x3 = [zeros(1,5),1,zeros(1,5)];                            
stem(p,x3);                 %Stem for discrete output, use plot for continuous signal.
xlabel('n');                % label on X-axis
ylabel('x3(n)');            % lable on Y-axis
title('Unit Impulse Signal');  %Title of the graph
axis([-5 5 0 2])

% Generation of Exponential signal
x4 = (1.2).^n;                      
subplot(2,2,4);             % locating on fourth plot of  2 X 2
stem(n,x4);                 % Stem for discrete output, use plot for continuous signal.
xlabel('n');                % label on X-axis
ylabel('x4(n)');            % lable on Y-axis
title('Exponential Signal');%Title of the graph


% Genratation of complex exponential signal
figure(2);
complx = -0.2+0.5j;         % Any random complex number
x5 = exp(complx.*n);        % Defining complex exponential function
subplot(4,1,1)              % plotting at 1 of 4x1
stem(n,real(x5));           % plotting real part
xlabel('n')                 % label on x axis
ylabel('Real of f(n)') % label on Y axis 
title('Complex Exponential signal')


% plotting Imaginary part of complex signal
subplot(4,1,2)              % plotting at 2 of 4x1
stem(n,imag(x5));           % plotting imaginary part
xlabel('n')                 % Label on X axis
ylabel('Imaginary of f(n)') 

% plotting magnitude of complex signal 
subplot(4,1,3)             % plotting at 3 of 4x1         
stem(n,abs(x5));           % plotting the absolute values
xlabel('n')                % label on X - axis
ylabel('Magnitude')        % label on Y - axis

% plotting phase of complex signal
subplot(4,1,4)             % plotting at 4 of 4x1
stem(n,angle(x5));         % plotting angles/phase value
xlabel('n')                % label on X-axis
ylabel('Phase')            % label on Y-axis

% plotting of sinusodial signals
figure(3);                  
t=0:(1/100):1;             % defining timeline
y1=sin(2*pi*2*t);          % Defining Sinusodial function  
subplot(3,2,1);            % plotting at 1 of 3x2
stem(t,y1)                 % plotting discrete sin waves
xlabel('Time')             % Label on X-axis
ylabel('Amplitude')        % Label on Y-axis
title('Sinusoidal signal') % Title of the graphs
grid on                    % grids enabled

% plotting cos (w_0 n) where w_0 = pi/8, pi/4, pi/2, pi, and 17*pi/8

w_o=pi/8;                  % for w_o = pi/8     
y2=cos(w_o.*n);            % Defining function
subplot(3,2,2)             % plotting at 2 of 3x2
stem(n,y2)                 % plotting discrete values
xlabel('Time')             % Label On X-axis
ylabel('Amplitude')        % Label On Y-axis
title('Cosine at w_o=pi/8')% Title of the graph

            %Similary for other values of w_o we 

% for w_o= pi/4
w_o=pi/4;
y3=cos(w_o.*n);
subplot(3,2,3)
stem(n,y3)
xlabel('Time')
ylabel('Amplitude')
title('Cosine at w_o=pi/4')

% for w_o= pi/2
w_o=pi/2;
y4=cos(w_o.*n);
subplot(3,2,4)
stem(n,y4)
xlabel('Time')
ylabel('Amplitude')
title('Cosine at w_o=pi/2')

% for w_o= pi
w_o=pi;
y5=cos(w_o.*n);
subplot(3,2,5)
stem(n,y5)
xlabel('Time')
ylabel('Amplitude')
title('Cosine at w_o=pi')

% for w_o= (17*pi)/8
w_o=(17*pi)/8;
y6=cos(w_o.*n);
subplot(3,2,6)
stem(n,y6)
xlabel('Time')
ylabel('Amplitude')
title('Cosine at w_o=(17*pi)/8')


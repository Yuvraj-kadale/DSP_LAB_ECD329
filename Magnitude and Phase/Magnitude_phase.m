% Author : Yuvraj Kadale
% Roll No: 184534

% Let total number of samples be N
N = 21;
% let the samples be from n= 0 to n= 20
n = 0:1:N-1;

% define W, F1(W) a random exponential signal
f1 = 0.90.^n;                       % define f1[n]
W = -15:0.01:15;                   
F1 = 1./(1 - 0.90*exp(-1i*W));       %define F1(W)

% plotting graphs
figure(1); 
clf;                                % open and clear figure 1

% Ploting DT signal
subplot(3,1,1);                     % Positioning at plot 1 of 3x1
stem(n,f1,'filled');                % plotting DT signal
grid on;                            % turning on grids
xlabel('n');                        % label on X - axis
ylabel('f[n]');                     % label on Y -axis
title('Varying DT Signal: f1[n]=(0.90^n)u[n]'); 

% Plotting magnitude of DT signal
subplot(3,1,2);                     % plot |F1(W)| on plot 2 of 3x1
plot(W,abs(F1));                    % plotting absolute value/ magnitude 
grid on;                            % turning on grids
xlabel('\Omega rad');               % label on X axis
ylabel('|f(\Omega)|');              % label on Y axis
title('Magnitude (Amplitude) Spectra of f[n]');

% Plotting phase spectra of DT signal
subplot(3,1,3);                     % plot F(W) on plot 3 of 3x1
plot(W,angle(F1)*180.0/pi);         % plotting phase value w.r.t W
grid on;                            % turning on grids
xlabel('\Omega rad');               %label on x-axis
ylabel('\angle(F(\Omega)) ^o');     %label on Y - axis
title('Phase Spectra of f[n]');     % title of the graph
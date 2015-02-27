% EE3370 Project 1
% MATLAB code for xxxxxxxxxxxxx
% Jason de Jongh
% 2/26/15

clc      % Clear screen 
clear    % Clear all variables
A = 3; f= 1000; omega = 2*pi*f; 
angle = degtorad(33); T=1/f;
t=linspace(-3*T,3*T,1000);
x_t=3*cos(omega*t+angle);
subplot(3,1,1)
plot(t,x_t, 'linewidth',2);grid on
subplot(3,1,2)
u_t=heaviside(t);
plot(t,u_t, 'linewidth',2);grid on
subplot(3,1,3)
plot(t,x_t.*u_t, 'linewidth',2);grid on
subplot(3,1,4)
x_t=cos(omega*t)*sin(omega*t)*u(t-1);
plot(t,x_t.*u_t, 'linewidth',2);grid on

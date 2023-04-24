% Task 4

%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;

setup_lung_soln
cvsolve_soln
outchecklung_soln

betalist = [0 0.2 0.4 0.6 0.8 1.0];
Mlist = [0.031 0.030 0.028 0.025 0.020 0.017];

figure()
plot(betalist, Mlist)
title('M vs beta');
ylabel('M');
xlabel('beta');
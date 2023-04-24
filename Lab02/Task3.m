% Task 3

%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;

PI2 = [];
PAbar2 = [];
Pabar2 = [];
Pv2 = [];
betaVal = 0:0.1:1;
for i = 1:length(betaVal)
    beta = betaVal(i);
    setup_lung
    cvsolve
    outchecklung

    PI2(i) = PI;
    PAbar2(i) = PAbar;
    Pabar2(i) = Pabar;
    Pv2(i) = Pv;
end

figure()
plot(betaVal, PI2)
hold on
plot(betaVal,PAbar2)
plot(betaVal,Pabar2)
plot(betaVal,Pv2)

title('Partial Pressure (PI, PAbar, Pabar, and Pv) vs beta');
ylabel('Parital pressure of O2');
xlabel('beta');
legend('PI','PAbar','Pabar','Pv');
hold off

% Task 5

%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;

PAbar5 = [];
Pabar5 = [];
Pv5 = [];

cAbar5 = [];
cabar5 = [];
cv5 = [];
cIRange = 0.004:0.001:0.04
for i = 1:length(cIRange)
    cI = cIRange(i);
    setup_lung
    cvsolve
    outchecklung

    PAbar5(i) = PAbar;
    Pabar5(i) = Pabar;
    Pv5(i) = Pv;

    cAbar5(i) = cAbar;
    cabar5(i) = cabar;
    cv5(i) = cv;
end

figure()
plot(cIRange, PAbar5)
hold on
plot(cIRange, Pabar5)
plot(cIRange, Pv5)
title('Partial pressures vs cI');
ylabel('Partial pressure');
xlabel('cI');
legend('PAbar', 'Pabar', 'Pv');
hold off

figure()
plot(cIRange, cAbar5)
hold on
plot(cIRange, cabar5)
plot(cIRange, cv5)
title('Concentrations vs cI');
ylabel('Concentration');
xlabel('cI');
legend('cAbar', 'cabar', 'cv');
hold off
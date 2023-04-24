% Task 9

%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;

%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;

PI9 = [];
PAbar9 = [];
Pabar9 = [];
Pv9 = [];

cAbar9 = [];
cabar9 = [];
cv9 = [];
cstarRange = 0.0079:-0.0001:0
for i = 1:length(cstarRange)
    cstar = cstarRange(i);
    setup_lung
    cvsolve
    outchecklung

    PI9(i) = PI;
    PAbar9(i) = PAbar;
    Pabar9(i) = Pabar;
    Pv9(i) = Pv;

    cAbar9(i) = cAbar;
    cabar9(i) = cabar;
    cv9(i) = cv;
end

figure()
plot(cstarRange, PI9)
hold on
plot(cstarRange, PAbar9)
plot(cstarRange, Pabar9)
plot(cstarRange, Pv9)
title('Partial pressures vs cstar');
ylabel('Partial pressure');
xlabel('cstar');
legend('PI','PAbar', 'Pabar', 'Pv');
hold off

figure()
plot(cstarRange, cAbar9)
hold on
plot(cstarRange, cabar9)
plot(cstarRange, cv9)
title('Concentrations vs cstar');
ylabel('Concentration');
xlabel('cstar');
legend('cAbar', 'cabar', 'cv');
hold off
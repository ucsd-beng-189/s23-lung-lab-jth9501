% Task 6

%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;

PAbar6 = [];
Pabar6 = [];
Pv6 = [];

cAbar6 = [];
cabar6 = [];
cv6 = [];
Pi = RT*cI;
PiRange = 0.004:0.001:0.04
for i = 1:length(PiRange)
    Pi = PiRange(i);
    setup_lung
    cvsolve
    outchecklung

    PAbar6(i) = PAbar;
    Pabar6(i) = Pabar;
    Pv6(i) = Pv;

    cAbar6(i) = cAbar;
    cabar6(i) = cabar;
    cv6(i) = cv;
end

figure()
plot(PiRange, PAbar6)
hold on
plot(PiRange, Pabar6)
plot(PiRange, Pv6)
title('Partial pressures vs Pi');
ylabel('Partial pressure');
xlabel('Pi');
legend('PAbar', 'Pabar', 'Pv');
hold off

figure()
plot(PiRange, cAbar6)
hold on
plot(PiRange, cabar6)
plot(PiRange, cv6)
title('Concentrations vs Pi');
ylabel('Concentration');
xlabel('Pi');
legend('cAbar', 'cabar', 'cv');
hold off
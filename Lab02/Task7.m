% Task 7

%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;

cI7 = 0.008:0.0001:0.01;
for i = 1:length(cI7)
    cI = cI7(i);
    setup_lung_soln
    cvsolve_soln
    outchecklung_soln

    PAbar7(i) = PAbar;
    Pabar7(i) = Pabar;
    Pv7(i) = Pv;

    cAbar7(i) = cAbar;
    cabar7(i) = cabar;
    cv7(i) = cv;
end

Pi7 = RT*cI7;
plot(Pi7, PAbar7)
hold on
plot(Pi7, Pabar7)
plot(Pi7, Pv7)
title('Partial pressures vs Pi');
ylabel('Partial pressure');
xlabel('Pi');
legend('PAbar', 'Pabar', 'Pv');
hold off

figure()
plot(Pi7, cAbar7)
hold on
plot(Pi7, cabar7)
plot(Pi7, cv7)
title('Concentrations vs Pi');
ylabel('Concentration');
xlabel('Pi');
legend('cAbar', 'cabar', 'cv');
hold off

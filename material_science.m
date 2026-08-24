function Ec = rule_of_mixtures_upper_bound(Ef,Em,ff)
Ec = ff * Ef + (1-ff) * Em;
end

Ef = 70e9;      % Fiber modulus
Em = 3e9;       % Matrix modulus

ff = 0:0.1:1;   % Fiber volume fraction

Ec = rule_of_mixtures_upper_bound(Ef, Em, ff);

plot(ff, Ec/1e9, 'o-')
xlabel('Fiber Volume Fraction')
ylabel('Composite Elastic Modulus (GPa)')
title('Rule of Mixtures')
grid on

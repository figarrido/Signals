rect = @(t) abs(t) < (1/2);
trian = @(t) (1 - abs(t)) .* (abs(t) < 1);
gauss = @(t) exp(-pi * t.^2);
esc = @(t) (t > 0);
ramp = @(t) t .* (t > 0);
sinc = @(t) sin(pi .* t) ./ (pi .* (t + (t == 0))) + (t == 0);

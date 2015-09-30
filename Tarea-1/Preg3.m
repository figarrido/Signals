function [z, c] = Preg3(x, y, z)
    c = zeros(1, length(x) + length(y) - 1);
    for i = 1:length(x)
        c(i:i + length(y) - 1) = c(i:i + length(y) - 1) + x(i).*y;
    end
    c = c * 10 / length(z); z = linspace(z(1), z(length(z)), length(c));
end

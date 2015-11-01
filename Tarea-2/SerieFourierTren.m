function out = SerieFourierTren(k, T)
    out = zeros(1, 2 * k + 1);
    for n=-k:k
        out(n + k + 1) = (1 / T) * integral(@(t) tren_rect(t, 1, T) .* exp(-1i * n * (2 * pi / T) * t), -T / 2, T / 2);
    end
end
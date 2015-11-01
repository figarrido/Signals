% k = -5:5;
% camello = zeros(1, length(k));
% 
% for m=1:length(k)
%     camello(m) = 1/T_0 * integral(@(t) tren_rect(t, 1, 2) .* exp(-sqrt(-1) * pi * k(m) * t), -1, 1);
% end
% 
% % stem(k, real(camello))
% x = -5:0.01:5;
% n = 1;
% real(camello(n) * exp(i * n * pi * x))
p = 50;
T = 2;
c = SerieFourierTren(p, T);
frec = -p:p;
x = -5:0.01:5;
sf = zeros(1, length(x));

for n=1:length(c)
    sf = sf + c(n) * exp(1i * frec(n) * (2 * pi / T) * x);
end

plot(x, sf)
grid on
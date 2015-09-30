function [out, Fs] = Preg5(filename, alpha)
    M = 201; tk = 0:201;
    sinck = sinc(2 * alpha * (tk - M / 2));
    [y, Fs] = audioread(filename);
    [x, out] = Preg3(y, sinck, 1);
end

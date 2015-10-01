function sol = Preg7(a1, a2, b0, f, v0) % g[n] + a1 * g[n - 1] + a2 * g[n - 2] = b0 * f[n], con f como una función
                                        % v0 vector [g[-1]; g[-2]]
    A = [0 1; -a2 -a1];
    b = [0; b0];
    c = [-a2 -a1];
      
    function k = aux(n)
        k = zeros(2, 1);
        k = k + Phi(A, n) * v0;
        for j=1:(n - 1)
            k = k + Phi(A, n - 1 - j) * b * f(j);
        end
    end
    sol = @(n) c * aux(n);
    
end
function m = Phi(A, n) % Calculo de la matriz de transición
    m = A^n;
end

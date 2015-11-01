function tren = tren_rect(t, tau, T)
    k = floor((max(t) - min(t))/T);
    rect = @(t, tau) abs(t) < (tau / 2);
    tren = zeros(1, length(t));
    for i=0:T:k
        if i==0
            tren= (tren+rect(t+i,tau)+rect(t-i,tau))/2; 
        else
            tren= tren+rect(t+i,tau)+rect(t-i,tau);
        end
    end
end
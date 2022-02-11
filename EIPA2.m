[E,D]= eigs(G,9,'SM'); %GETS 9 EIGEN VECS AND VALUES
plot(diag(D), '*');

figure (3)
for k = 1:9
    L = E(:,k);
    for i = 1:nx
        for j = 1:ny
            n = j + (i-1)*ny;
            B(i,j) = L(n);
        end
        subplot(3,3,k), surf(B)
    end
end



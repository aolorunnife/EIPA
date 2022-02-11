nx = 50;
ny = 50;
G = sparse(nx*ny,nx*ny);
B = zeros(nx,ny);

for i = 1:nx
    for j = 1:ny
        n=j+(i-1)*ny;

        if i == 1 || i== nx || j == 1 || j == ny
            G(n,n) = 1;


        else

            nxm = j + (i-1-1)*ny;
            nxp = j + (i-1+1)*ny;
            nym = j-1 + (i-1)*ny;
            nyp = j+1 + (i-1)*ny;

            G(n,n) = -4;
            G(n,nxm) = 1;
            G(n,nxp) = 1;
            G(n,nym) = 1;
            G(n,nyp) = 1;
        end
    end

end




%set diagonal
%diag = G(m,:);


spy(G)


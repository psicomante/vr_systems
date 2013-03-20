el=-45:5.625:230.625;
az=[-80,-65,-55,-45:5:45,55,65,80];


[theta,phi]=meshgrid(az.*pi./180,el.*pi./180);
rho=ones(size(theta));

[X,Y,Z]=sph2cart(theta,phi,rho);

plot3(X,Y,Z,'kx');
hold on
plot3([0,1],[0,0],[0,0])
plot3([0,0],[0,1],[0,0],'r')
%figure
%mesh(X,Y,Z)
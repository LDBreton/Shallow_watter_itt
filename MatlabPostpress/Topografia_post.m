%Add ffmatlib to the search path
addpath('../ffmatlib');
%Load the mesh
[p,b,t,nv,nbe,nt,labels]=ffreadmesh('../data_output/malla.msh');
%Load the finite element space connectivity
vh=ffreaddata('../data_output/nooa_fem_vh.txt');
%Load scalar data

%u=ffreaddata('../data_output/Topografia_noregular.txt');
u=ffreaddata('../data_output/Topografia.txt');


I = imread('../Puerto_vallarta_satellite.jpeg'); 


 hold on
 h = image([min(p(1,:)) max(p(1,:))],[max(p(2,:))+0.105 min(p(2,:))],I);
 alpha(0.7) 
 ffpdeplot(p,b,t,'VhSeq',vh,'XYData',u,'ZStyle','continuous', ...
           'Mesh','off','ColorMap','jet');
 lighting flat;
 view([-42,44]);
 camlight('headlight'); 
 
 
 
 %ffpdeplot(p,b,t,'Mesh','on','Boundary','on');
 xlim([min(p(1,:)) max(p(1,:))]);
 ylim([min(p(2,:)) max(p(2,:))]);


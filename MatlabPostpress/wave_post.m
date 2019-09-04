%Add ffmatlib to the search path
addpath('../ffmatlib');
%Load the mesh
[p,b,t,nv,nbe,nt,labels]=ffreadmesh('../data_output/shallow_makk.msh');
%Load the finite element space connectivity
vh=ffreaddata('../data_output/shallow_fem_vh.txt');
%Load scalar data

%u=ffreaddata('../data_output/Topografia_noregular.txt');
u=ffreaddata('../data_output/Tsunami_wave_100.txt');
w=ffreaddata('../data_output/shallow_topo.txt');




 hold on
 alpha(0.7) 
 ffpdeplot(p,b,t,'VhSeq',vh,'XYData',u,'ZStyle','continuous', ...
           'Mesh','off','ColorMap','jet');
  ffpdeplot(p,b,t,'VhSeq',vh,'XYData',w,'ZStyle','continuous', ...
           'Mesh','off','ColorMap','jet')      
 lighting flat;
 view([-42,44]);
 camlight('headlight'); 



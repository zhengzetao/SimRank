cd E:\net264
Ws_fc_264=cell(44,1);
for i=1:44;
   if i<10;
   load(['PearsonCorr_MTC_sub000' num2str(i) '.mat.mat']);
   fc_z=gretna_fishertrans(fc_r);    
   fc_z(fc_z<0)=0;   
   Ws_fc_264{i,1}=fc_z;
   Ws_p_264{i,1}=fc_p;
   else
   load(['PearsonCorr_MTC_sub00' num2str(i) '.mat.mat']);
   fc_z=gretna_fishertrans(fc_r);
   fc_z(fc_z<0)=0;   
   Ws_fc_264{i,1}=fc_z;
   Ws_p_264{i,1}=fc_p;
   end
end

for i=1:44;
uu=0.05/264;
idx=find( Ws_p_264{i,1}>uu);
Ws_fc_264{i,1}(idx)=0;
check(i,:)=sum(Ws_fc_264{i,1});
end;
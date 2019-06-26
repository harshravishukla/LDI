He=abs(CSDHeZ2 - CSDHeZ1);
He= He./abs(CSDHeZ1);
Full=abs(CSDFullZ1 - CSDHeZ1);
Full=Full./abs(CSDHeZ1);
Medium1=abs(CSDMediumZ1 - CSDHeZ1);
Medium1=Medium1./abs(CSDHeZ1);
Small1=abs(CSDSmallZ1 - CSDHeZ1);
Small1=Small1./abs(CSDHeZ1);
LDI(1,:)=sum(He);
LDI(2,:)=sum(Small1);
LDI(3,:)=sum(Medium1);
LDI(4,:)=sum(Full);



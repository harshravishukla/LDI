for i=1:20

x1 = Full_Z1(:,i);
x2 = Full_Z2(:,i);
x3 = Full_Z3(:,i);
x4 = Full_Z4(:,i);
x5 = Full_Z5(:,i);
x6 = Full_Z6(:,i);

dt = 1/4096;
df= 1/dt;
L = size(x1,1);
NFFT = 2^(nextpow2(L)-1);
f = (df/L)*[0:(L/2 -1)];

FRF1 = fft(x1,L);
FRF2 = fft(x2,L);
FRF3 = fft(x3,L);
FRF4 = fft(x4,L);
FRF5 = fft(x5,L);
FRF6 = fft(x6,L);

%[Pxx1,f1] = csd(x1,x2,NFFT,4096);

% ..... Cross Spectral Densities of first accelerometer..........
%%window=hanning(4096);
%window=hanning(4096);
noverlap=0;
window=hamming(1024);



% ..... Cross Spectral Densities of first accelerometer..........
%[Pxx1,L1] = cpsd(x1,x1,[],[],[],4096);
%[Pxx1,L1] = cpsd(x1,x1,window,noverlap,NFFT,4096);
[Pxx1,L1] = cpsd(x1,x1,window,noverlap,[],4096);
[m,n] = size (L1);
CSDFullZ_1_1(:,i) =log(sqrt((real(Pxx1(1:n))).^2+(imag(Pxx1(1,1:n))).^2));
 
%[Pxx2,L1] = cpsd(x1,x2,window,noverlap,NFFT,4096);
%[Pxx2,L1] = cpsd(x1,x2,[],[],[],4096);
[Pxx2,L1] = cpsd(x1,x2,window,noverlap,[],4096);
CSDFullZ_1_2(:,i) =log(sqrt((real(Pxx2(1:n))).^2+(imag(Pxx2(1,1:n))).^2)); 

%[Pxx3,L1] = cpsd(x1,x3,window,noverlap,NFFT,4096);
%[Pxx3,L1] = cpsd(x1,x3,[],[],[],4096);
[Pxx3,L1] = cpsd(x1,x3,window,noverlap,[],4096);
CSDFullZ_1_3(:,i) =log(sqrt((real(Pxx3(1:n))).^2+(imag(Pxx3(1,1:n))).^2));

%[Pxx4,L1] = cpsd(x1,x4,window,noverlap,NFFT,4096);
%[Pxx3,L1] = cpsd(x1,x3,[],[],[],4096);
[Pxx4,L1] = cpsd(x1,x4,window,noverlap,[],4096);
CSDFullZ_1_4(:,i) =log(sqrt((real(Pxx4(1:n))).^2+(imag(Pxx4(1,1:n))).^2));

%[Pxx4,L1] = cpsd(x1,x4,window,noverlap,NFFT,4096);
%[Pxx3,L1] = cpsd(x1,x3,[],[],[],4096);
[Pxx5,L1] = cpsd(x1,x5,window,noverlap,[],4096);
CSDFullZ_1_5(:,i) =log(sqrt((real(Pxx5(1:n))).^2+(imag(Pxx5(1,1:n))).^2));

%[Pxx4,L1] = cpsd(x1,x4,window,noverlap,NFFT,4096);
%[Pxx3,L1] = cpsd(x1,x3,[],[],[],4096);
[Pxx6,L1] = cpsd(x1,x6,window,noverlap,[],4096);
CSDFullZ_1_6(:,i) =log(sqrt((real(Pxx6(1:n))).^2+(imag(Pxx6(1,1:n))).^2));

%[Pxx5,L1] = cpsd(x2,x2,window,noverlap,NFFT,4096);
%[Pxx4,L1] = cpsd(x2,x2,[],[],[],4096);
[Pxx7,L1] = cpsd(x2,x2,window,noverlap,[],4096);
CSDFullZ_2_2(:,i) =log(sqrt((real(Pxx7(1:n))).^2+(imag(Pxx7(1,1:n))).^2));

%[Pxx6,L1] = cpsd(x2,x3,window,noverlap,NFFT,4096);
%[Pxx5,L1] = cpsd(x2,x3,[],[],[],4096);
[Pxx8,L1] = cpsd(x2,x3,window,noverlap,[],4096);
CSDFullZ_2_3(:,i) =log(sqrt((real(Pxx8(1:n))).^2+(imag(Pxx8(1,1:n))).^2));

%[Pxx7,L1] = cpsd(x2,x4,window,noverlap,NFFT,4096);
%[Pxx5,L1] = cpsd(x2,x3,[],[],[],4096);
[Pxx9,L1] = cpsd(x2,x4,window,noverlap,[],4096);
CSDFullZ_2_4(:,i) =log(sqrt((real(Pxx9(1:n))).^2+(imag(Pxx9(1,1:n))).^2));

%[Pxx7,L1] = cpsd(x2,x4,window,noverlap,NFFT,4096);
%[Pxx5,L1] = cpsd(x2,x3,[],[],[],4096);
[Pxx10,L1] = cpsd(x2,x5,window,noverlap,[],4096);
CSDFullZ_2_5(:,i) =log(sqrt((real(Pxx10(1:n))).^2+(imag(Pxx10(1,1:n))).^2));

%[Pxx7,L1] = cpsd(x2,x4,window,noverlap,NFFT,4096);
%[Pxx5,L1] = cpsd(x2,x3,[],[],[],4096);
[Pxx11,L1] = cpsd(x2,x6,window,noverlap,[],4096);
CSDFullZ_2_6(:,i) =log(sqrt((real(Pxx11(1:n))).^2+(imag(Pxx11(1,1:n))).^2));

%[Pxx8,L1] = cpsd(x3,x3,window,noverlap,NFFT,4096);
%[Pxx6,L1] = cpsd(x3,x3,[],[],[],4096);
[Pxx12,L1] = cpsd(x3,x3,window,noverlap,[],4096);
CSDFullZ_3_3(:,i) =log(sqrt((real(Pxx12(1:n))).^2+(imag(Pxx12(1,1:n))).^2));

%[Pxx9,L1] = cpsd(x3,x4,window,noverlap,NFFT,4096);
%[Pxx5,L1] = cpsd(x2,x3,[],[],[],4096);
[Pxx13,L1] = cpsd(x3,x4,window,noverlap,[],4096);
CSDFullZ_3_4(:,i) =log(sqrt((real(Pxx13(1:n))).^2+(imag(Pxx13(1,1:n))).^2));

%[Pxx9,L1] = cpsd(x3,x4,window,noverlap,NFFT,4096);
%[Pxx5,L1] = cpsd(x2,x3,[],[],[],4096);
[Pxx14,L1] = cpsd(x3,x5,window,noverlap,[],4096);
CSDFullZ_3_5(:,i) =log(sqrt((real(Pxx14(1:n))).^2+(imag(Pxx14(1,1:n))).^2));

%[Pxx9,L1] = cpsd(x3,x4,window,noverlap,NFFT,4096);
%[Pxx5,L1] = cpsd(x2,x3,[],[],[],4096);
[Pxx15,L1] = cpsd(x3,x6,window,noverlap,[],4096);
CSDFullZ_3_6(:,i) =log(sqrt((real(Pxx15(1:n))).^2+(imag(Pxx15(1,1:n))).^2));

%[Pxx10,L1] = cpsd(x4,x4,window,noverlap,NFFT,4096);
%[Pxx5,L1] = cpsd(x2,x3,[],[],[],4096);
[Pxx16,L1] = cpsd(x4,x4,window,noverlap,[],4096);
CSDFullZ_4_4(:,i) =log(sqrt((real(Pxx16(1:n))).^2+(imag(Pxx16(1,1:n))).^2));

%[Pxx10,L1] = cpsd(x4,x4,window,noverlap,NFFT,4096);
%[Pxx5,L1] = cpsd(x2,x3,[],[],[],4096);
[Pxx17,L1] = cpsd(x4,x5,window,noverlap,[],4096);
CSDFullZ_4_5(:,i) =log(sqrt((real(Pxx17(1:n))).^2+(imag(Pxx17(1,1:n))).^2));

%[Pxx10,L1] = cpsd(x4,x4,window,noverlap,NFFT,4096);
%[Pxx5,L1] = cpsd(x2,x3,[],[],[],4096);
[Pxx18,L1] = cpsd(x4,x6,window,noverlap,[],4096);
CSDFullZ_4_6(:,i) =log(sqrt((real(Pxx18(1:n))).^2+(imag(Pxx18(1,1:n))).^2));

%[Pxx10,L1] = cpsd(x4,x4,window,noverlap,NFFT,4096);
%[Pxx5,L1] = cpsd(x2,x3,[],[],[],4096);
[Pxx19,L1] = cpsd(x5,x5,window,noverlap,[],4096);
CSDFullZ_5_5(:,i) =log(sqrt((real(Pxx19(1:n))).^2+(imag(Pxx19(1,1:n))).^2));

%[Pxx10,L1] = cpsd(x4,x4,window,noverlap,NFFT,4096);
%[Pxx5,L1] = cpsd(x2,x3,[],[],[],4096);
[Pxx20,L1] = cpsd(x5,x6,window,noverlap,[],4096);
CSDFullZ_5_6(:,i) =log(sqrt((real(Pxx20(1:n))).^2+(imag(Pxx20(1,1:n))).^2));

%[Pxx10,L1] = cpsd(x4,x4,window,noverlap,NFFT,4096);
%[Pxx5,L1] = cpsd(x2,x3,[],[],[],4096);
[Pxx21,L1] = cpsd(x6,x6,window,noverlap,[],4096);
CSDFullZ_6_6(:,i) =log(sqrt((real(Pxx21(1:n))).^2+(imag(Pxx21(1,1:n))).^2));

end



for i=1:n
    sum1 = 0 ;

    for j= 1:20
    sum1 = sum1 + CSDFullZ_1_1(i,j);
    end

    CSDFullZ_1_1(i,21) = sum1/20;
    
end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_1_2(i,j);
    end

    CSDFullZ_1_2(i,21) = sum1/20;
    
end

for i=1:n
    sum1 = 0 ;
   
    for j= 1:20
    sum1 = sum1 + CSDFullZ_1_3(i,j);
    end

    CSDFullZ_1_3(i,21) = sum1/20;
    
end

for i=1:n
    sum1 = 0 ;

    for j= 1:20
    sum1 = sum1 + CSDFullZ_1_4(i,j);
    end

    CSDFullZ_1_4(i,21) = sum1/20;
    
end
for i=1:n
    sum1 = 0 ;
   
    for j= 1:20
    sum1 = sum1 + CSDFullZ_1_5(i,j);
    end
  
    CSDFullZ_1_5(i,21) = sum1/20;
    
end
for i=1:n
    sum1 = 0 ;
   
    for j= 1:20
    sum1 = sum1 + CSDFullZ_1_6(i,j);
    end
 
    CSDFullZ_1_6(i,21) = sum1/20;
    
end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_2_2(i,j);
    end

    CSDFullZ_2_2(i,21) = sum1/20;

end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_2_3(i,j);
    end

    CSDFullZ_2_3(i,21) = sum1/20;
    
end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_2_4(i,j);
    end

    CSDFullZ_2_4(i,21) = sum1/20;
    
end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_2_5(i,j);
    end
    
    CSDFullZ_2_5(i,21) = sum1/20;
    
end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_2_6(i,j);
    end
    
    CSDFullZ_2_6(i,21) = sum1/20;
   
end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_3_3(i,j);
    end

    CSDFullZ_3_3(i,21) = sum1/20;

end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_3_4(i,j);
    end

    CSDFullZ_3_4(i,21) = sum1/20;

end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_3_5(i,j);
    end

    CSDFullZ_3_5(i,21) = sum1/20;
end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_3_6(i,j);
    end
 
    CSDFullZ_3_6(i,21) = sum1/20;

end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_4_4(i,j);
    end
  
    CSDFullZ_4_4(i,21) = sum1/20;
   
end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_4_5(i,j);
    end
  
    CSDFullZ_4_5(i,21) = sum1/20;
  
end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_4_6(i,j);
    end
    
    CSDFullZ_4_6(i,21) = sum1/20;
    
end

for i=1:n
    sum1 = 0 ;
      
    for j= 1:20
    sum1 = sum1 + CSDFullZ_5_5(i,j);
    end
        
    CSDFullZ_5_5(i,21) = sum1/20;
   
end

for i=1:n
    sum1 = 0 ;
    
    for j= 1:20
    sum1 = sum1 + CSDFullZ_5_6(i,j);
    end
        
    CSDFullZ_5_6(i,21) = sum1/20;
    
end

for i=1:n
    sum1 = 0 ;
        
    for j= 1:20
    sum1 = sum1 + CSDFullZ_6_6(i,j);
    end

    CSDFullZ_6_6(i,21) = sum1/20;
    
end

for i=1:n

    CSDFullZ1 (i,1) = CSDFullZ_1_1(i,21);
    CSDFullZ1 (i,2) = CSDFullZ_1_2(i,21);
    CSDFullZ1 (i,3) = CSDFullZ_1_3(i,21);
    CSDFullZ1 (i,4) = CSDFullZ_1_4(i,21);
    CSDFullZ1 (i,5) = CSDFullZ_1_5(i,21);
    CSDFullZ1 (i,6) = CSDFullZ_1_6(i,21);
    CSDFullZ1 (i,7) = CSDFullZ_2_2(i,21);
    CSDFullZ1 (i,8) = CSDFullZ_2_3(i,21);
    CSDFullZ1 (i,9) = CSDFullZ_2_4(i,21);
    CSDFullZ1 (i,10) = CSDFullZ_2_5(i,21);
    CSDFullZ1 (i,11) = CSDFullZ_2_6(i,21);
    CSDFullZ1 (i,12) = CSDFullZ_3_3(i,21);
    CSDFullZ1 (i,13) = CSDFullZ_3_4(i,21);
    CSDFullZ1 (i,14) = CSDFullZ_3_5(i,21);
    CSDFullZ1 (i,15) = CSDFullZ_3_6(i,21);
    CSDFullZ1 (i,16) = CSDFullZ_4_4(i,21);
    CSDFullZ1 (i,17) = CSDFullZ_4_5(i,21);
    CSDFullZ1 (i,18) = CSDFullZ_4_6(i,21);
    CSDFullZ1 (i,19) = CSDFullZ_5_5(i,21);
    CSDFullZ1 (i,20) = CSDFullZ_5_6(i,21);
    CSDFullZ1 (i,21) = CSDFullZ_6_6(i,21);
    
 
    
end
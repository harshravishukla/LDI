% Please load the acceleration signal into workspace whose power spectral
% density needs to be calculated. Modify the names of each variable as
% needed.

x1 = NS1(:,15);
x2 = S81(:,2);
x3 = S151(:,10);
x4 = S15C1(:,7);
x5 = NS2(:,6);
x6 = S82(:,12);
x7 = S152(:,13);
x8 = S15C2(:,3);
x9 = NS3(:,3);
x10 = S83(:,9);
x11 = S153(:,11);
x12 = S15C3(:,10);
x13 = NS4(:,15);
x14 = S84(:,4);
x15 = S154(:,10);
x16 = S15C4(:,12);
x17 = NS5(:,9);
x18 = S85(:,4);
x19 = S155(:,6);
x20 = S15C5(:,10);
x21 = NS6(:,17);
x22 = S86(:,3);
x23 = S156(:,6);
x24 = S15C6(:,18);


%Please select the appropriate window size

noverlap=0;
window=hamming(1024);

[Pxx1,L1] = pwelch(x1,window,noverlap,0:400,4096);
[Pxx2,L2] = pwelch(x2,window,noverlap,0:400,4096);
[Pxx3,L3] = pwelch(x3,window,noverlap,0:400,4096);
[Pxx4,L4] = pwelch(x4,window,noverlap,0:400,4096);
[Pxx5,L5] = pwelch(x5,window,noverlap,0:400,4096);
[Pxx6,L6] = pwelch(x6,window,noverlap,0:400,4096);
[Pxx7,L7] = pwelch(x7,window,noverlap,0:400,4096);
[Pxx8,L8] = pwelch(x8,window,noverlap,0:400,4096);
[Pxx9,L9] = pwelch(x9,window,noverlap,0:400,4096);
[Pxx10,L10] = pwelch(x10,window,noverlap,0:400,4096);
[Pxx11,L11] = pwelch(x11,window,noverlap,0:400,4096);
[Pxx12,L12] = pwelch(x12,window,noverlap,0:400,4096);
[Pxx13,L13] = pwelch(x13,window,noverlap,0:400,4096);
[Pxx14,L14] = pwelch(x14,window,noverlap,0:400,4096);
[Pxx15,L15] = pwelch(x15,window,noverlap,0:400,4096);
[Pxx16,L16] = pwelch(x16,window,noverlap,0:400,4096);
[Pxx17,L17] = pwelch(x17,window,noverlap,0:400,4096);
[Pxx18,L18] = pwelch(x18,window,noverlap,0:400,4096);
[Pxx19,L19] = pwelch(x19,window,noverlap,0:400,4096);
[Pxx20,L20] = pwelch(x20,window,noverlap,0:400,4096);
[Pxx21,L21] = pwelch(x21,window,noverlap,0:400,4096);
[Pxx22,L22] = pwelch(x22,window,noverlap,0:400,4096);
[Pxx23,L23] = pwelch(x23,window,noverlap,0:400,4096);
[Pxx24,L24] = pwelch(x24,window,noverlap,0:400,4096);


%Plot the PSD over frequency
figure(1)
subplot(3,2,1)
set(gca, 'YScale', 'log')
line(L1,Pxx1);
line(L1,Pxx2,'color','red');
line(L1,Pxx3,'color','green');
line(L1,Pxx4,'color','black');
xlabel('Frequency (Hz)')
ylabel('PSD')
title('PSD of Accelerometer 1')
grid on 

subplot(3,2,2)
set(gca, 'YScale', 'log')
line(L1,Pxx5);
line(L1,Pxx6,'color','red');
line(L1,Pxx7,'color','green');
line(L1,Pxx8,'color','black');
xlabel('Frequency (Hz)')
ylabel('PSD')
title('PSD of Accelerometer 2')
grid on 

subplot(3,2,3)
set(gca, 'YScale', 'log')
line(L1,Pxx9);
line(L1,Pxx10,'color','red');
line(L1,Pxx11,'color','green');
line(L1,Pxx12,'color','black');
xlabel('Frequency (Hz)')
ylabel('PSD')
title('PSD of Accelerometer 3')
grid on 

subplot(3,2,4)
set(gca, 'YScale', 'log')
line(L1,Pxx13);
line(L1,Pxx14,'color','red');
line(L1,Pxx15,'color','green');
line(L1,Pxx16,'color','black');
xlabel('Frequency (Hz)')
ylabel('PSD')
title('PSD of Accelerometer 4')
grid on 

subplot(3,2,5)
set(gca, 'YScale', 'log')
line(L1,Pxx17);
line(L1,Pxx18,'color','red');
line(L1,Pxx19,'color','green');
line(L1,Pxx20,'color','black');
xlabel('Frequency (Hz)')
ylabel('PSD')
title('PSD of Accelerometer 5')
grid on 

subplot(3,2,6)
set(gca, 'YScale', 'log')
line(L1,Pxx21);
line(L1,Pxx22,'color','red');
line(L1,Pxx23,'color','green');
line(L1,Pxx24,'color','black');
xlabel('Frequency (Hz)')
ylabel('PSD')
title('PSD of Accelerometer 6')
grid on 
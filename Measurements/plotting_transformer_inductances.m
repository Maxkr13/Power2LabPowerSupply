%Plotting inductance measurements of transformer
%Files are stripped from text.

%Leakage inductance
fid=fopen('LL_IND.txt','r');
tt = textscan(fid,'%f %f %f');
fclose(fid);
LL_data = cell2mat(tt);
flow = 0.1;
fhigh = 2;
figure;
semilogx(LL_data(:,1)*10^(-6),LL_data(:,2)*10^6)
grid on;
xlim([flow fhigh])
xlabel('Frequency [MHz]');
ylabel('Leakage inductance [?H]');

%Magnetizing
fid=fopen('LM_IND.txt','r');
tt = textscan(fid,'%f %f %f');
fclose(fid);
LM_data = cell2mat(tt);
flow = 0.1;
fhigh = 2;
figure;
semilogx(LM_data(:,1)*10^(-6),LM_data(:,2)*10^6)
grid on;
xlim([flow fhigh])
xlabel('Frequency [MHz]');
ylabel('Magnetizing inductance [?H]');

%Magnetizing, zoomed
flow = 0.1;
fhigh = 1;
llow = 300;
lhigh = 500;
figure;
semilogx(LM_data(:,1)*10^(-6),LM_data(:,2)*10^6)
grid on;
xlim([flow fhigh])
ylim([llow lhigh])
xlabel('Frequency [MHz]');
ylabel('Magnetizing inductance [?H]');



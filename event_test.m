clc;
clear;
config_io;
add=['CFF8'];
address = hex2dec([add]);
time=20;
fprintf('start... \n');
delay(1);
event(address,1);
for i=1:time
event(address,2);
delay(0.5-0.002);
end
event(address,3);
fprintf('end... \n');
theta_pos180 = pi;
theta_neg90 = -pi/2;


%Rotation matrices
Rx_pos180 = [1, 0, 0;
          0, cos(theta_pos180), -sin(theta_pos180);
          0, sin(theta_pos180), cos(theta_pos180)];

Ry_pos180 = [cos(theta_pos180), 0, sin(theta_pos180);
          0, 1, 0;
          -sin(theta_pos180), 0, cos(theta_pos180)];

Rz_neg90 = [cos(theta_neg90), -sin(theta_neg90), 0;
          sin(theta_neg90), cos(theta_neg90), 0;
          0, 0, 1];

Rz_pos180 = [cos(theta_pos180), -sin(theta_pos180), 0;
          sin(theta_pos180), cos(theta_pos180), 0;
          0, 0, 1];

%Combined rotation matrices
rot03 = Rx_pos180 * Rz_neg90;
rot23 = Rx_pos180 * Rz_neg90;
rot23b = Rx_pos180 ;
rotblock2cam = Rz_pos180;
rotblock2base = Rz_neg90;

tran02 = [-0.5;1.5;1.1];
tran03 = tran02 + [0;0;1.9];
tran23 = [0;0;1.9];
tran23b = tran23;
tranblock2cam = [-0.5;-0.3;1.9];
tranblock2base = [0;-1.8;-1.1];


H03 = [rot03,tran03;
    0,0,0,1];
H23 = [rot23, tran23;
    0, 0, 0, 1];
H23b = [rot23b,tran23b;
    0,0,0,1];
Hblock2cam = [rotblock2cam,tranblock2cam;
    0,0,0,1];
Hblock2base = [rotblock2base,tranblock2base;
    0,0,0,1];

disp('H03:');
disp(H03);
disp('H23:');
disp(H23);
disp('H23b:');
disp(H23b);
disp('Hblock2cam:');
disp(Hblock2cam);
disp('Hblock2base:');
disp(Hblock2base);

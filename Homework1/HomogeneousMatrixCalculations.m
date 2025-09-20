%Rotational angles in radians 
theta_pos = pi/2; %only 2 since there are only +- 90 degrees rotations
theta_neg = -pi/2;

%Rotation Matrices for positive angles 
Rx_pos = [1, 0, 0;
          0, cos(theta_pos), -sin(theta_pos);
          0, sin(theta_pos), cos(theta_pos)];

Ry_pos = [cos(theta_pos), 0, sin(theta_pos);
          0, 1, 0;
          -sin(theta_pos), 0, cos(theta_pos)];

Rz_pos = [cos(theta_pos), -sin(theta_pos), 0;
          sin(theta_pos), cos(theta_pos), 0;
          0, 0, 1];

% Rotation matrices for negative angles
Rx_neg = [1, 0, 0;
          0, cos(theta_neg), -sin(theta_neg);
          0, sin(theta_neg), cos(theta_neg)];

Ry_neg = [cos(theta_neg), 0, sin(theta_neg);
          0, 1, 0;
          -sin(theta_neg), 0, cos(theta_neg)];

Rz_neg = [cos(theta_neg), -sin(theta_neg), 0;
          sin(theta_neg), cos(theta_neg), 0;
          0, 0, 1];

%Combined rotational matrix 
Rot01 = Rx_pos * Rz_neg;
Rot02 = Rz_neg * Rx_pos;
Rot12 = Rx_pos * Rz_pos;

%Translation vectors
tran01 = [0;0;1];
tran02 = [0;1;0];
tran12 = [1;0;-1];

H01 = [Rot01,tran01;
    0,0,0,1];
H02 = [Rot02,tran02;
    0,0,0,1];
H12 = [Rot12, tran12;
       0, 0, 0, 1];
H02Calc = H01 * H12;

disp('H02 Calculated:');
disp(H02Calc);
disp('H02 Value:');
disp(H02);


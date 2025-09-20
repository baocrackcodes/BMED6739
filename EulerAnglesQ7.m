syms alpha beta gamma

% Define the rotation matrices for each axis
Rz_alpha = [cos(alpha), -sin(alpha), 0;
            sin(alpha), cos(alpha), 0;
            0, 0, 1];

Rx_beta = [1, 0, 0;
           0, cos(beta), -sin(beta);
           0, sin(beta), cos(beta)];

Rz_gamma = [cos(gamma), -sin(gamma), 0;
            sin(gamma), cos(gamma), 0;
            0, 0, 1];

% Combine the rotation matrices
R = Rz_gamma * Rx_beta * Rz_alpha;

% Display the resulting rotation matrix
disp('Rotation Matrix for ZXZ Euler Angles:');
disp(R);
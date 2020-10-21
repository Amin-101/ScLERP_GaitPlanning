function R = quat2rot(Q)

q_0 = Q(1);
q_1 = Q(2);
q_2 = Q(3);
q_3 = Q(4);
R(1,1) = q_0*q_0 + q_1*q_1 - q_2*q_2 - q_3*q_3;
R(1,2) = 2*(q_1*q_2 - q_0*q_3);
R(1,3) = 2*(q_0*q_2 + q_1*q_3);
R(2,1) = 2*(q_0*q_3 + q_1*q_2);
R(2,2) = q_0*q_0 - q_1*q_1 + q_2*q_2 - q_3*q_3;
R(2,3) = 2*(q_2*q_3 - q_0*q_1);
R(3,1) = 2*(q_1*q_3 - q_0*q_2);
R(3,2) = 2*(q_0*q_1 + q_2*q_3);
R(3,3) = q_0*q_0 - q_1*q_1 - q_2*q_2 + q_3*q_3;

end
%% Exercice 2

clear;

%% Question a
m_X =0; % Mean of X
s_X =1; % Standard deviation of X
x = -3:0.01:3; % Values of x to be evaluated
f_x = pdf ('Normal' , x , m_X , s_X ) ; % PDF of X
F_x = cdf ('Normal' , x , m_X , s_X ) ; % CDF of X
subplot(121)
plot (x , f_x ) % Plot the PDF of X
xlabel('x')
ylabel('f_x')
title('PDF of X')
subplot(122)
plot (x , F_x ) % Plot the CDF of X
xlabel('x')
ylabel('F_x')
title('CDF of X')

%% Question b
m_Y =1; % Mean of Y
s_Y =sqrt(0.25); % Standard deviation of Y
s_lnY = sqrt ( log (1+( s_Y / m_Y ) ^2) ); % Std log (Y)
m_lnY = log ( m_Y ) -0.5* s_lnY ^2; % Mean log (Y)
y = 0:0.01:3; % Values of y to be evaluated
f_y = pdf ('logn ', y , m_lnY , s_lnY ); % PDF of Y
F_y = cdf ('logn ', y , m_lnY , s_lnY ); % CDF of Y
subplot(121)
plot (y , f_y ) % Plot the PDF of Y
xlabel('y')
ylabel('f_y')
title('PDF of Y')
subplot(122)
plot (y , F_y ) % Plot the CDF of Y
xlabel('y')
ylabel('F_y')
title('CDF of Y')

%% Question c
m_Z =0.66; % Mean of Z
v_Z =0.03; % Variance of Z
alpha_Z = m_Z*(m_Z*(1-m_Z)/v_Z-1); % Parameter alpha
beta_Z = (1-m_Z)*(m_Z*(1-m_Z)/v_Z-1); % Parameter beta
z = 0:0.01:1; % Values of Z to be evaluated
f_z = pdf ('Beta ', z , alpha_Z , beta_Z ); % PDF of Z
F_z = cdf ('Beta ', z , alpha_Z , beta_Z ); % PDF of Z
subplot(121)
plot (z , f_z ) % Plot the PDF of Z
xlabel('z')
ylabel('f_z')
title('PDF of Z')
subplot(122)
plot (z , F_z ) % Plot the CDF of Z
xlabel('z')
ylabel('F_z')
title('CDF of Z')

%% Question d
f_yz = transpose(f_y)*f_z ; % Because Y and Z are statistically independant
subplot(111)
contour (z , y , f_yz ) % 2D contour plot
xlabel('z')
ylabel('y')
title('Joint PDF f(y,z)')

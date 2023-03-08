% Define the number of points to use when drawing the structures
numPoints = 1000;

% Define the center of the structure
center = [0, 0, 0];


%EARTH
%Earth's radius
r = 6371;

%generate the x and y cordinates for the circle
[x,y,z] = sphere(numPoints);
x = center(1) + x*r;
y = center(1) + y*r;
z = center(1) + z*r;

surf(x,y,z);
shading ('interp');                 % Interpolation   
axis equal
hold on;


%MOON'S ORBIT  
% Define the lengths of the major and minor axes
a = 384748;
b = 363300;

% Define the angle of rotation for the ellipse
theta = pi/4;

% Generate the x and y coordinates for the ellipse
t = linspace(0, 2*pi, numPoints);
x = center(1) + a*cos(t)*cos(theta) - b*sin(t)*sin(theta);
y = center(2) + a*cos(t)*sin(theta) + b*sin(t)*cos(theta);

% Plot the ellipse
plot(x, y, 'b--', LineWidth=0.1);
hold on;
axis equal;
grid on;
shading ('interp'); 

%MOON ITSELF
%Moon's radius
r = 1737;

%CENTER
center = [x(1) y(1) 0];

%generate the x and y cordinates for the circle
[m, n, o] = sphere(numPoints);
m = center(1) + m*r;
n = center(2) + n*r;
o = center(3) + o*r;

surf(m, n, o, "FaceColor","interp");    % Interpolation   
axis equal
colormap = [0.7 0.7 1];          
hold off;


%ANIMATION
%while true 
%MOON ITSELF
%Moon's radius
r = 1737;

%CENTER
center = [x(1) y(1) 0];

%generate the x and y cordinates for the circle
[m, n, o] = sphere(numPoints);
m = center(1) + m*r;
n = center(2) + n*r;
o = center(3) + o*r;

surf(m, n, o, "FaceColor","interp");    % Interpolation   
axis equal
colormap = [0.7 0.7 1];       
hold off;


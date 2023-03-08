% Define the number of points to use when drawing the structures
numPoints = 1000;

% Define the center of the structure
center = [0, 0, 0];


%EARTH
%Earth's radius
r = 6371;

%generate the x and y cordinates for the circle
[x,y,z] = sphere(numPoints);
x = x*r;
y = y*r;
z = z*r;

surf(x,y,z);
shading ('interp');                 % Interpolation   
axis equal
hold on;


%MOON'S ORBIT 
R = 384748; % major radius
r = 400; % minor radius
% Define the lengths of the major and minor axes
a = 384748;
b = 363300;

theta   = linspace(0, 2*pi, numPoints);    % angle for major radius
phi     = linspace(0, 2*pi, numPoints);    % angle for minor radius

[THETA,PHI] = meshgrid(theta,phi);

x = (center(1) + a*cos(PHI)*cos(PHI) - b*sin(PHI)*sin(PHI)).*cos(THETA);
y = (center(2) + a*cos(PHI)*sin(PHI) + b*sin(PHI)*cos(PHI)).*sin(THETA);

%x = (R + r*cos(PHI)).*cos(THETA);
%y = (R + r*cos(PHI)).*sin(THETA);
z = r*sin(PHI);

surf(x,y,z)
shading ('interp'); 
hold off;

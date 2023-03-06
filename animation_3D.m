function [] = animation_3D(VELOCITY)

    %ustawienia
    V = VELOCITY;                           % szybkośc rozchodzenia się fali
    TIME_TO_PAUSE = 1/V;
    CHANGE = 1;
    NUMBER_OF_POINTS = 200;
    x = linspace(-5,5,NUMBER_OF_POINTS);    %os x ograniczona do [-5,5]
    y = linspace(-5,5,NUMBER_OF_POINTS);    %os y ograniczona do [-5,5]
        
    %implementacja
    DATA = x+transpose(y);                  %crates our matrix of arguments
        
    %ustawienia wykresu
    figure("Name","animacja");
        
    color_above = [0.7 0.7 1];              % kolor dla punktów y > 0 (jasnoniebieski)
    color_below = [0 0 0.5];                % kolor dla punktów y < 0 (ciemnoniebieski)
    colormap([color_below; color_above]);    
               
    z_range = [-5 5];                       %ograniczenia na oś z
    x_range = [min(x), max(x)];
    y_range = [min(y), max(y)];
    axis([x_range y_range z_range]);   
        
    %animacja    
    while true
        %update the data
        DATA = DATA + CHANGE;
        z = sin(DATA) + sin(V);             %z = sin(x + y)
    
        %update the surface
        surf(x,y,z, EdgeColor="none");      %animacja ruchu fali    % brak koloru krawedzi macierzy
        axis([x_range y_range z_range]);  
        shading ('interp');                 % Interpolation                                         
                                            %Interpolation is a technique for adding new data points within a range of a set of known data points. 
                                            %You can use interpolation to fill-in missing data, smooth existing data, make predictions, and more.                
        %for animation effect
        pause(TIME_TO_PAUSE);
    end
end
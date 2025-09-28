function extlat = periodicLat(lat)
% Extend grid 

extendRows = [lat(end, :); lat; lat(1, :)];
extlat = [extendRows(:, end), extendRows, extendRows(:, 1)];

end

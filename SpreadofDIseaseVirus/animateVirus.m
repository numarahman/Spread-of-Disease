function M = animateVirus(grids)


global SUSCEPTIBLE INFECTIOUS IMMUNE;

% Define the colormap for all grid values (0-7)
map = [0    1    0;       % 0: SUSCEPTIBLE = green
       0    0    1;       % 1: INFECTIOUS (day 1)=full blue
       0.5  0.5  1;       % 2: INFECTIOUS (day 2) = pale blue
       1    0    0;       % 3: IMMUNE (day 1) = full red
       0.8  0.2  0.2;     % 4: IMMUNE (day 2) = slightly darker red
       0.6  0.3  0.3;     % 5: IMMUNE (day 3) = even darker red
       0.4  0.4  0.4;     % 6: IMMUNE (day 4) = dark grayish red
       0.2  0.2  0.2];    % 7: IMMUNE (day 5) = very dark red
colormap(map);

% grid values are valid (0 to 7)
assert(all(grids(:) >= 0 & grids(:) <= 7), ...
    'Grid contains invalid states outside range 0-7.');

numSteps = size(grids, 3);

for k = 1:numSteps
    g = grids(:, :, k);
    figure('Visible', 'off');
    image(g + 1); 
    colormap(map);
    axis square;
    axis off;

   
    title(['Spread of Disease (Days ', num2str(k - 1), ')'], 'fontsize', 16);
    
      %legend
       
    hold on;
    scatter(-1, -1, 50, [0, 1, 0], 's', 'filled', 'DisplayName', 'Susceptible'); % Green
    scatter(-1, -1, 50, [0, 0, 1], 's', 'filled', 'DisplayName', 'Infectious (Day 1)'); % Full Blue
    scatter(-1, -1, 50, [0.5, 0.5, 1], 's', 'filled', 'DisplayName', 'Infectious (Day 2)'); % Pale Blue
    scatter(-1, -1, 50, [1, 0, 0], 's', 'filled', 'DisplayName', 'Immune (Day 3)'); % Full Red
    scatter(-1, -1, 50, [0.8, 0.2, 0.2], 's', 'filled', 'DisplayName', 'Immune (Day 4)'); % Slightly Darker Red
    scatter(-1, -1, 50, [0.6, 0.3, 0.3], 's', 'filled', 'DisplayName', 'Immune (Day 5)'); % Even Darker Red
    scatter(-1, -1, 50, [0.4, 0.4, 0.4], 's', 'filled', 'DisplayName', 'Immune (Day 6)'); % Dark Grayish Red
    scatter(-1, -1, 50, [0.2, 0.2, 0.2], 's', 'filled', 'DisplayName', 'Immune (Day 7)'); % Very Dark Red
    legend('Location', 'bestoutside');
    hold off;



    
    M(k) = getframe(gcf); % gets frame 
    close;
end

end

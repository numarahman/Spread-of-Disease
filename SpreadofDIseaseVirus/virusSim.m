function grids = virusSim(n, probSusceptible, probInfectious, num_timesteps)


%%% Initialize grid
population = initPopulation(n, probSusceptible, probInfectious);

%%% the simulation
grids = zeros(n, n, num_timesteps + 1);
grids(:, :, 1) = population;
for t = 2:(num_timesteps + 1)
   
    populationExtended = periodicLat(population);
  
    population = applySpreadVirus(populationExtended);
 
    grids(:, :, t) = population;
end

end

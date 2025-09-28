function population = initPopulation(n, probSusceptible, probInfectious)

% Initializes the grid with susceptible, infectious, and immune individuals.

global SUSCEPTIBLE INFECTIOUS IMMUNE;

SUSCEPTIBLE = 0;
INFECTIOUS = [1, 2];
IMMUNE = 3:7;

population = zeros(n);

% Randomly initialize susceptible individuals
susceptibleMask = rand(n) < probSusceptible;
population(susceptibleMask) = SUSCEPTIBLE;

% Randomly initialize infectious individuals 
infectiousMask = (rand(n) < probInfectious) & ~susceptibleMask;
infectiousDays = randi([1, 2], n);
population(infectiousMask) = infectiousDays(infectiousMask);

% Remaining cells are immune
immuneMask = ~susceptibleMask & ~infectiousMask;
immuneDays = randi([3, 7], n);
population(immuneMask) = immuneDays(immuneMask);

end

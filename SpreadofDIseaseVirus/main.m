clear all; close all;

% constants 
n = 48;  % Grid size
probSusceptible = 0.1; % Nashville library of medicine 
probInfectious = 0.001; % 60 percent 
day = 50;

% Runs simulation!!
grids = virusSim(n, probSusceptible, probInfectious, day);

% % Generate the animation frames
M = animateVirus(grids);

movie(figure, M, 1, 3);

% Saves the animation as a video
saveMovie(M, 'virusspreadlowinfect.mp4', 5)
%saveMovie(M, 'VirusSpread_1stSim_prob.2_.7.mp4', 5);
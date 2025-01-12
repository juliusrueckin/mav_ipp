function grid_map = update_map(submap, grid_map, submap_coordinates)
% Updates grid map at a UAV position using probabilistic measurements
% received from a height-dependent sensor model.
%
% Inputs:
% submap: received measurement (grid)
% grid_map: current grid map (mean + covariance)
% submap_coordinates: current FoV in grid map
% ---
% Outputs:
% grid_map
% ---
% Marija Popovic 2018
%

%% Update probabilities within the camera footprint.
grid_map(submap_coordinates.yd:submap_coordinates.yu, ...
    submap_coordinates.xl:submap_coordinates.xr,:) = ...
    grid_map(submap_coordinates.yd:submap_coordinates.yu, ...
    submap_coordinates.xl:submap_coordinates.xr,:) + submap;

end


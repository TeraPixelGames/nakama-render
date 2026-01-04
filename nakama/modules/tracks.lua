local M = {}

-- Serpentine/S-curve track assembled from the existing track pieces.
local serpentine = {
	id = "serpentine",
	laps = 2,
	assets = {
		track_piece = "track_piece",
		wall = "track_wall",
	},
	tiles = {}, -- unused for road mesh approach
	walls = {}, -- no discrete walls; collision handled via mesh
	bounds = {
		{type = "box", size = {260, 6, 2}, pos = {0, 0, 150}, axis = "z"},
		{type = "box", size = {260, 6, 2}, pos = {0, 0, -150}, axis = "z"},
		{type = "box", size = {2, 6, 260}, pos = {150, 0, 0}, axis = "x"},
		{type = "box", size = {2, 6, 260}, pos = {-150, 0, 0}, axis = "x"},
	},
	ground = {
		size = {260, 0.2, 260},
		color = {0.2, 0.21, 0.24},
	},
	spawn_points = {
		{-10, 0.5, -180, 0},
		{-6, 0.5, -180, 0},
		{-2, 0.5, -180, 0},
		{2, 0.5, -180, 0},
		{6, 0.5, -180, 0},
		{10, 0.5, -180, 0},
	},
	waypoints = {
		{-120, 0.5, -160},
		{-120, 0.5, 20},
		{-20, 0.5, 120},
		{180, 0.5, 20},
		{180, 0.5, -160},
		{60, 0.5, -200},
	},
	env = {
		light_dir = {0.939693, -0.34202, 0.0},
		light_energy = 2.5,
		sky = "sunny",
	},
}

M.tracks = {
	serpentine = serpentine,
}

function M.get(id)
	return M.tracks[id] or serpentine
end

return M

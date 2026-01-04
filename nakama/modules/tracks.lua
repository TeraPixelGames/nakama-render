local M = {}

-- Serpentine/S-curve track assembled from the existing track pieces.
local serpentine = {
	id = "serpentine",
	laps = 2,
	assets = {
		track_piece = "track_piece",
		wall = "track_wall",
	},
	tiles = {
		{asset = "track_piece", pos = {-80, 0, -60}, rot = {0, 0, 0}, scale = {1, 1, 1}},
		{asset = "track_piece", pos = {-80, 0, 20}, rot = {0, 0, 0}, scale = {1, 1, 1}},
		{asset = "track_piece", pos = {-40, 0, 80}, rot = {0, 90, 0}, scale = {1, 1, 1}},
		{asset = "track_piece", pos = {40, 0, 80}, rot = {0, 90, 0}, scale = {1, 1, 1}},
		{asset = "track_piece", pos = {80, 0, 20}, rot = {0, 180, 0}, scale = {1, 1, 1}},
		{asset = "track_piece", pos = {80, 0, -60}, rot = {0, 180, 0}, scale = {1, 1, 1}},
		{asset = "track_piece", pos = {40, 0, -120}, rot = {0, -90, 0}, scale = {1, 1, 1}},
		{asset = "track_piece", pos = {-40, 0, -120}, rot = {0, -90, 0}, scale = {1, 1, 1}},
	},
	walls = {
		{asset = "track_wall", pos = {-80, 0.5, -80}, rot = {0, 0, 0}},
		{asset = "track_wall", pos = {-80, 0.5, 40}, rot = {0, 0, 0}},
		{asset = "track_wall", pos = {80, 0.5, 40}, rot = {0, 180, 0}},
		{asset = "track_wall", pos = {80, 0.5, -80}, rot = {0, 180, 0}},
		{asset = "track_wall", pos = {40, 0.5, -140}, rot = {0, -90, 0}},
		{asset = "track_wall", pos = {-40, 0.5, -140}, rot = {0, -90, 0}},
		{asset = "track_wall", pos = {-40, 0.5, 100}, rot = {0, 45, 0}},
		{asset = "track_wall", pos = {40, 0.5, 100}, rot = {0, 135, 0}},
		{asset = "track_wall", pos = {100, 0.5, 20}, rot = {0, 90, 0}},
		{asset = "track_wall", pos = {-100, 0.5, 20}, rot = {0, -90, 0}},
		{asset = "track_wall", pos = {40, 0.5, -100}, rot = {0, -135, 0}},
		{asset = "track_wall", pos = {-40, 0.5, -100}, rot = {0, -45, 0}},
	},
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
		{-10, 0.5, -120, 0},
		{-6, 0.5, -120, 0},
		{-2, 0.5, -120, 0},
		{2, 0.5, -120, 0},
		{6, 0.5, -120, 0},
		{10, 0.5, -120, 0},
	},
	waypoints = {
		{-80, 0.5, -100},
		{-80, 0.5, 60},
		{-20, 0.5, 100},
		{80, 0.5, 60},
		{80, 0.5, -80},
		{0, 0.5, -120},
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

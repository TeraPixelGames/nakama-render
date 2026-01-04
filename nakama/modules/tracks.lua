local M = {}

-- Static library of server-authored tracks. Only primitive values (numbers, strings, tables).
local oval = {
	id = "oval",
	laps = 2,
	assets = {
		track_piece = "track_piece",
		wall = "track_wall",
	},
	tiles = {
		{asset = "track_piece", pos = {0, 0, 60}, rot = {0, 0, 0}, scale = {1, 1, 1}},
		{asset = "track_piece", pos = {0, 0, -60}, rot = {0, 180, 0}, scale = {1, 1, 1}},
		{asset = "track_piece", pos = {60, 0, 0}, rot = {0, 90, 0}, scale = {1, 1, 1}},
		{asset = "track_piece", pos = {-60, 0, 0}, rot = {0, -90, 0}, scale = {1, 1, 1}},
	},
	walls = {
		{asset = "track_wall", pos = {0, 0.5, 70}, rot = {0, 0, 0}},
		{asset = "track_wall", pos = {0, 0.5, -70}, rot = {0, 180, 0}},
		{asset = "track_wall", pos = {70, 0.5, 0}, rot = {0, 90, 0}},
		{asset = "track_wall", pos = {-70, 0.5, 0}, rot = {0, -90, 0}},
		-- Corners
		{asset = "track_wall", pos = {70, 0.5, 70}, rot = {0, 45, 0}},
		{asset = "track_wall", pos = {70, 0.5, -70}, rot = {0, 135, 0}},
		{asset = "track_wall", pos = {-70, 0.5, 70}, rot = {0, -45, 0}},
		{asset = "track_wall", pos = {-70, 0.5, -70}, rot = {0, -135, 0}},
	},
	-- Safety bounds to keep racers inside the play area.
	bounds = {
		{type = "box", size = {200, 6, 2}, pos = {0, 0, 110}, axis = "z"},
		{type = "box", size = {200, 6, 2}, pos = {0, 0, -110}, axis = "z"},
		{type = "box", size = {2, 6, 200}, pos = {110, 0, 0}, axis = "x"},
		{type = "box", size = {2, 6, 200}, pos = {-110, 0, 0}, axis = "x"},
	},
	ground = {
		size = {220, 0.2, 220},
		color = {0.2, 0.21, 0.24},
	},
	spawn_points = {
		{-6, 0.5, 60, 0},
		{-2, 0.5, 60, 0},
		{2, 0.5, 60, 0},
		{6, 0.5, 60, 0},
		{-6, 0.5, 64, 0},
		{-2, 0.5, 64, 0},
		{2, 0.5, 64, 0},
		{6, 0.5, 64, 0},
	},
	waypoints = {
		{0, 0.5, 60},
		{75, 0.5, 0},
		{0, 0.5, -60},
		{-75, 0.5, 0},
	},
	env = {
		light_dir = {0.939693, -0.34202, 0.0},
		light_energy = 2.5,
		sky = "sunny",
	},
}

M.tracks = {
	oval = oval,
}

function M.get(id)
	return M.tracks[id] or oval
end

return M

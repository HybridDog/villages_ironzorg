local load_time_start = os.clock()


-- mts schematics at https://forum.minetest.net/viewtopic.php?p=193593#p193593

assert(minetest.get_modpath, "[villages_ironzorg] This mod is not longer supposed to support old versions.")

local minetest = minetest

local BUILDINGS = dofile(minetest.get_modpath("villages_ironzorg").."/buildings.lua")

local MAX_RATIO = 1000

-- Utils functions
local print_vector = function(pos)
	print("(" .. pos.x .. ", " .. pos.y .. ", " .. pos.z .. ")")
end

local vector_le = function(pos1, pos2)
	return (pos1.x <= pos2.x) and (pos1.y <= pos2.y) and (pos1.z <= pos2.z)
end

local vector_add = vector.add

local table_contains = function(t, v)
	for _, i in ipairs(t) do
		if (i == v) then
			return true
		end
	end

	return false
end

-- Mods main functions
local building_fits = function(building, min_pos, max_pos)
	local max_rad_y = max_pos.y - min_pos.y - building.size.y - 1
	local ry = 0
	local block

	while ry < max_rad_y do
		block = false
		for i = 0, building.size.y do
			for j = 0, building.size.x do
				for k = 0, building.size.z do
					local node = minetest.get_node({
						x = min_pos.x + j,
						y = min_pos.y + i + ry,
						z = min_pos.z + k,
					})
					if (node.name ~= "air") then
						if ry == max_rad_y - 1 then
							return nil
						else
							block = true
						end
					end
				end
			end
		end

		if block == true then
			ry = ry + 1
		else
			break
		end
	end

	return block == true and nil or {
		x = 0 + min_pos.x,
		y = ry + min_pos.y,
		z = 0 + min_pos.z,
	}
end

local replacements = {
	tree = "default:tree",
	wood = "default:wood",
	mossycobble = "default:mossycobble",
	cobble = "default:cobble",
	glass = "default:glass",
}
local function place_building(building, building_pos)
	for i = 0, building.size.z - 1 do
		local pos = {z = building_pos.z + i}
		for j = 0, building.size.y - 1 do
			pos.y = building_pos.y + j
			for k = 0, building.size.x - 1 do
				pos.x = building_pos.x + k
				local node = building.structure[j + 1][i + 1][k + 1]

				if node then
					node = replacements[node] or node
					minetest.set_node(pos, {name = node})
				end
			end
		end
	end
end

local count_blocks = function(blocks, pos1, pos2)
	local n = 0

	for i = pos1.x, pos2.x do
		for j = pos1.y, pos2.y do
			for k = pos1.z, pos2.z do
				local node = minetest.get_node_or_nil({
					x = i,
					y = j,
					z = k,
				})

				if node
				and table_contains(blocks, node.name) then
					n = n + 1
				end
			end
		end
	end

	return n
end

local has_building_ground = function(building, pos1)
	for i = 0, building.size.x - 1 do
		for j = 0, building.size.z - 1 do
			local node = minetest.get_node_or_nil({
				x = pos1.x + i,
				y = pos1.y,
				z = pos1.z + j,
			})

			if node
			and not table_contains(building.building_surfaces, node.name)
			and building.structure[1][j + 1][i + 1] then
				return false
			end
		end
	end

	return true
end

minetest.register_on_generated(function(minp, maxp)
	local diff_pos = vector.subtract(maxp, minp)

	for _, building in ipairs(BUILDINGS) do
		if vector_le(building.size, diff_pos) then
			local building_pos = building_fits(building, minp, maxp)

			if building_pos
			and math.random(1, MAX_RATIO) < building.odds then
				local v1 = vector_add(building_pos, {
					x = 0,
					y = -1,
					z = 0,
				})

				if has_building_ground(building, v1) then
					print("Placing building " .. building.name .. ": ")
					print_vector(building_pos)
					place_building(building, building_pos)
					-- One building per chunk
					return
				end
			end
		end
	end
end)

minetest.register_chatcommand("spawn_building",{
	description = "",
	params = "",
	privs = {server=true},
	func = function(name, param)
		param = BUILDINGS[tonumber(param)]
		if not param then
			return
		end
		place_building(param, vector.round(minetest.get_player_by_name(name):getpos()))
	end
})


local time = math.floor(tonumber(os.clock()-load_time_start)*100+0.5)/100
local msg = "[villages_ironzorg] loaded after ca. "..time
if time > 0.05 then
	print(msg)
else
	minetest.log("info", msg)
end

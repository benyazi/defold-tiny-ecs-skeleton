local system = Tiny.processingSystem()

system.filter = Tiny.requireAll('isPlayer','objId')

function system:process(e, dt)
	local pos = go.get(e.objId, "position")
	-- local cursor_world = camera.screen_to_world(go.get_id("camera"), MousePosition)
	local cursor_world = MousePosition
	local rad = math.atan2(pos.y - cursor_world.y, pos.x - cursor_world.x)
	pos.x = pos.x - math.cos(rad) * e.speed * dt
	pos.y = pos.y - math.sin(rad) * e.speed * dt
	go.set(e.objId, "position", pos)
	-- print('MousePosition ' .. MousePosition.x .. ' x ' .. MousePosition.y)

	-- local player_world = go.get_world_position()
	-- local angle = math.atan2(player_world.x - cursor_world.x, cursor_world.y - player_world.y)
	-- local rotation = vmath.quat_rotation_z(angle)
	-- go.set_rotation(rotation)
end

return system
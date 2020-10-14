local TestEntity = {}
TestEntity.__index = TestEntity
TestEntity.type = 'TestEntity'

function TestEntity.new(objId, speed)
	self = {}
	self.objId = objId
	self.speed = speed
	self.isPlayer = true
	return self
end

return TestEntity
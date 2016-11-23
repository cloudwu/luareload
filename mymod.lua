local mod = {}

local a = 1

local function foobar()
	return a
end

print("foobar:", foobar)

function mod.foo()
	return foobar
end

function mod.foo2()
	return foobar
end

function mod.foobar(x)
	a = x
end


return mod
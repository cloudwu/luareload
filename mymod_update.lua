local debug = require "debug"

local mod = {}

local a

local function foobar()
	print "UPDATE"
	return a
end

print("update foobar:", foobar)

function mod.foo()
	return foobar()
end

function mod.foo2()
	return foobar
end

function mod.foobar(x)
	a = x
end

mod.getinfo = debug.getinfo

return mod
local hardreload = require "hardreload"
require = hardreload.require

function hardreload.print(...)
	print(" DEBUG", ...)
end

local a = require "hardmod"
local foo = a.foo

a.foo()

print(hardreload.reload("hardmod" , "hardmod_update"))

foo()



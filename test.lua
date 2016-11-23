local reload = require "reload"
reload.postfix = "_update"	-- for test

local mymod = require "mymod"

function reload.print(...)
	print("  DEBUG:", ...)
end

mymod.foobar(42)

local foo = mymod.foo2()

function test()
	print("BEFORE update foo", foo)
	reload.reload { "mymod" }
	print("AFTER update foo", foo)
end

test()
foo()

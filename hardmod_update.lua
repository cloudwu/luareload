local hardmod = {}

local a = 0

function hardmod.foo()
	print("UPDATE")
	a = a + 1
	return a
end

return hardmod


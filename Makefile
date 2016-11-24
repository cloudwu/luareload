LUA_INC ?= -I/d/project/lua/src
LUA_LIB ?= -L/usr/local/bin -llua53

clonefunc.dll : clonefunc.c
	gcc -g -o $@ --shared $^ $(LUA_INC) $(LUA_LIB)

clean:
	rm clonefunc.dll

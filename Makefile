# This is the default target, which will be built when 
# # you invoke make
# .PHONY: all
all: exec/hello
#
# # This rule tells make how to build hello from hello.cpp
exec/hello: sources/hello.c
	mkdir -p exec
	gcc -o exec/hello sources/hello.c

#   # This rule tells make to delete hello and hello.o
#.PHONY: clean 
clean:
	rm -rf exec

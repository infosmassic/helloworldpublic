# This is the default target, which will be built when 
# # you invoke make
# .PHONY: all
all: hello
#
# # This rule tells make how to build hello from hello.cpp
hello: hello.c
	gcc -o hello hello.c
#
#  # This rule tells make to copy hello to the binaries subdirectory,
# creating it if necessary
# .PHONY: install
install:
	mkdir -p exec
	mv hello exec

#   # This rule tells make to delete hello and hello.o
#.PHONY: clean 
clean:
	rm -rf exec

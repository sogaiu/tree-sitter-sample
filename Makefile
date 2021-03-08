all:
	cd tree-sitter && make && cd ..
	cc \
	  -I tree-sitter/lib/include \
	  test-json-parser.c \
	  tree-sitter-json/src/parser.c \
	  tree-sitter/libtree-sitter.a \
	  -o test-json-parser

clean:
	rm test-json-parser
	cd tree-sitter && make clean && cd ..

.PHONY: all clean

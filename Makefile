CXX = clang++
##CXXFLAGS = `llvm-config --cxxflags --ldflags --includedir --system-libs --libs all`
CXXFLAGS = `llvm-config --cxxflags --ldflags --system-libs --libs all`
#FLAGS = -I/usr/local/Cellar/llvm/8.0.1/include/llvm -std=c++11   -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS
LDFLAGS = -L/usr/local/opt/llvm/lib
INCDIR = usr/local/opt/llvm/include
.PHONY: mc

mc: src/mc.cpp
	$(CXX) $(CXXFLAGS) -I/usr/local/opt/llvm/include $(LDFLAGS) src/mc.cpp -o mc

clean:
	rm mc output.o

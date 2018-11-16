LIBMESH_PREFIX=$(HOME)/Applications/libmesh-1.3.0.g
LIBMESH_LIBS=$(shell $(LIBMESH_PREFIX)/bin/libmesh-config --libs)
LIBMESH_INCLUDE=$(shell $(LIBMESH_PREFIX)/bin/libmesh-config --include)
LIBMESH_CXXFLAGS=$(shell $(LIBMESH_PREFIX)/bin/libmesh-config --cxxflags)

laplace: laplace.C
	mpicxx $(LIBMESH_CXXFLAGS) $(LIBMESH_INCLUDE) -c laplace.C -o laplace.o
	mpicxx laplace.o $(LIBMESH_LIBS) -o laplace

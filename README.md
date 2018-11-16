# Libmesh Laplace

This repository contains a modified version of the libMesh introduction/ex4
program. I am working on another program that uses libMesh and I worked through
this example to understand how libMesh handles parallel mesh repartitioning. In
particular, the `System` functionality will automatically redistribute parallel
vectors after the mesh is redistributed, which is nice.

# Compilation

This program uses the `libmesh-config` script built by more recent versions of
libmesh to set up compilation flags. Modify the top line of the Makefile to set
the path to an installed copy of libMesh; then run `make laplace` and things
should work.

# What does this program do?

This program demonstrates what happens when one repartitions the mesh in
parallel by alternating between using the space-filling curve partitioner and
the METIS partitioner. It saves visualization data after each partitioning so
that one can visualize how things move around.

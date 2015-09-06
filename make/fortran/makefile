# This is the makefile for inverse.

F90 = gfortran

LIBDIR = \
	-L/usr/lib \

LIBS = \
	$(LIBDIR) \
	-llapack \
	-lblas

OBJS = \
	lu_decompose.o \
	invert.o \
	input.o \
	inverse.o \

%.o:%.f90
	$(F90) -c $*.f90

inverse: $(OBJS)
	$(F90) -o inverse $(OBJS) $(LIBS)

# dependencies

invert.o: invert.f90 lu_decompose.o
inverse.o: inverse.f90 input.o invert.o
input.o: input.f90
lu_decompose.o: lu_decompose.f90

clean:
	rm -f *.o *.mod

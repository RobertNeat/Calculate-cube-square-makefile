.PHONY: clean delete
.SUFFIXES: .c .o .a

vpath %.c src
vpath %.h include

Calculate_cube: Calculate_cube.o libfield.a libvolume.so
	$(CC) $(CFLAGS) -o $@ $^ -I./include
	echo "To run program type: ./Calculate_cube"
	echo "If program fails to run check README"

libfield.a: squareField.o cubeField.o
	$(AR) -rs $@ $^

libvolume.so: squareVolume.o cubeVolume.o
	$(CC) $(CFLAGS) -shared -o $@ $^ -I./include 
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:.

.c.o:
	$(CC) $(CLAGS) -c $^ -I./include

clean:
	rm -f *.o

delete:
	rm -f *.o *.so *.a Calculate_cube
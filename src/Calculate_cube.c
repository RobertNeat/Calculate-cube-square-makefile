/* Calculate_cube.c */
#include "../include/libfield.h"
#include "../include/libvolume.h"
#include <stdio.h>

main(){
    float a=4;
    printf("Square field: %.2f\n",squareField(a));
    printf("Square volume: %.2f\n",squareVolume(a));
    printf("Cube field: %.2f\n",cubeField(a));
    printf("Cube volume: %.2f\n",cubeVolume(a));
}

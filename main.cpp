#include <cstdlib>
#include <FreeImage.h>
#include <stdio.h>
#include <iostream>
#include <omp.h>
#include <vector>
#include <time.h>
#include <sys/time.h>
#include <cmath>
using namespace std;

#define BPP 32 //Bits per pixel 

/**
 * Multiplica dos numeros complejos 
 * @param Z1
 * @param Z2
 * @param result
 */
void multComplex(float *Z1, float *Z2, float *result) {
    result[0] = Z1[0] * Z2[0] - Z1[1] * Z2[1];
    result[1] = Z1[0] * Z2[1] + Z1[1] * Z2[0];
}

/**
 * Divide dos numeros complejos
 * @param Z1
 * @param Z2
 * @param result
 */
void divComplex(float *Z1, float *Z2, float *result) {
    float div = Z2[0] * Z2[0] + Z2[1] * Z2[1];
    float resultMULT[2];
    Z2[1] = Z2[1] * -1;
    multComplex(Z1, Z2, resultMULT);
    result[0] = resultMULT[0] / div;
    result[1] = resultMULT[1] / div;
}

/**
 * Realiza el mapeo de Z a W
 * @param ZX
 * @param result
 */
void mapper(float *ZX, float *result) {

    float Z[2] = {ZX[0], ZX[1]};
    float C[2] = {0.003, 0};
    float resultMULT[2];
    multComplex(C, Z, resultMULT);
    resultMULT[0] += 1;
    resultMULT[1] += 1;
    float A[2] = {2.1, 2.1};
    float resultMULT2[2];
    multComplex(A, Z, resultMULT2);
    divComplex(resultMULT2, resultMULT, result);

}

/**
 * Realiza el mapeo inverso de W a Z
 * @param ZX
 * @param result
 */
void inverseMapper(int *ZX, float *result) {

    float W[2] = {ZX[0], ZX[1]};
    float C[2] = {0.003, 0};
    float resultMULT[2];
    multComplex(C, W, resultMULT);
    resultMULT[0] += -2.1;
    resultMULT[1] += -2.1;
    float D[2] = {-1, -1};
    float resultMULT2[2];
    multComplex(D, W, resultMULT2);
    divComplex(resultMULT2, resultMULT, result);

}

void convertImage(int ***salida, int ***entrada, int width, int height, int depth) {

    int i, j, k;
    
    for (i = 0; i < width; i++) {
        for (j = 0; j < height; j++) {

            int Z[2] = {i, height - j};
            float resultMap[2];
            inverseMapper(Z, resultMap);

            int newi = resultMap[0];
            int newj = resultMap[1];

            newj = newj >= 0 ? newj : 0;
            newi = newi >= 0 ? newi : 0;

            newj = newj < height ? newj : 0;
            newi = newi < width ? newi : 0;

            newj = newi == 0 ? 0 : newj;
            newi = newj == 0 ? 0 : newi;

            for (k = 0; k < depth; k++) {
                int x = entrada[newi][height - 1 - newj][k];
                salida[i][j][k] = x;
            }
        }
    }
}

int main(int argc, char** argv) {


    FreeImage_Initialise();
    atexit(FreeImage_DeInitialise);


    FREE_IMAGE_FORMAT formato = FreeImage_GetFileType("foto2.jpg", 0);
    FIBITMAP* bitmap = FreeImage_Load(formato, "foto2.jpg");

    FIBITMAP* temp = FreeImage_ConvertTo32Bits(bitmap);
    int width = FreeImage_GetWidth(temp);
    int height = FreeImage_GetHeight(temp);

    FreeImage_Unload(bitmap);
    bitmap = temp;


    //Inicializar la matriz de entrada
    int Dim1 = width;
    int Dim2 = height;
    int Dim3 = 3;



    int ***entrada = new int**[Dim1];
    for (int i(0); i < Dim1; i++)
        entrada[i] = new int*[Dim2];

    for (int i(0); i < Dim1; i++)
        for (int j(0); j < Dim2; j++)
            entrada[i][j] = new int[Dim3];


    int ***salida = new int**[Dim1];
    for (int i(0); i < Dim1; i++)
        salida[i] = new int*[Dim2];

    for (int i(0); i < Dim1; i++)
        for (int j(0); j < Dim2; j++)
            salida[i][j] = new int[Dim3];



    // Bitmap a la matrix llenando la entrada
    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {
            RGBQUAD color;
            FreeImage_GetPixelColor(bitmap, i, j, &color);
            entrada[i][j][0] = color.rgbBlue;
            entrada[i][j][1] = color.rgbGreen;
            entrada[i][j][2] = color.rgbRed;
        }
    }

    entrada[0][height - 1][0] = 0;
    entrada[0][height - 1][1] = 0;
    entrada[0][height - 1][2] = 0;


    FIBITMAP* new_bitmap = FreeImage_Allocate(width, height, BPP);


    double start_time, run_time;
    start_time = omp_get_wtime();

    // generar la matrix de salida
    convertImage(salida, entrada, width, height, 3);
    run_time = omp_get_wtime() - start_time;
    printf("%lf\n", run_time);



    //convertir matrix a bitmap
    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {
            RGBQUAD color;
            color.rgbBlue = salida[i][j][0];
            color.rgbGreen = salida[i][j][1];
            color.rgbRed = salida[i][j][2];
            FreeImage_SetPixelColor(new_bitmap, i, j, &color);
        }
    }



    float Zwidth[2] = {(float) width, 0};
    float Zheight[2] = {0, (float) height};
    float resultwidth[2];
    float resultheight[2];


    mapper(Zwidth, resultwidth);
    mapper(Zheight, resultheight);


    //Recortar la imagen
    int newwidth = resultwidth[0];
    int newheight = resultheight[1];
    FIBITMAP * salidaFinal = FreeImage_Allocate(newwidth, newheight, BPP);
    for (int i = 0; i < newwidth; i++) {
        for (int j = 0; j < newheight; j++) {
            RGBQUAD color;
            FreeImage_GetPixelColor(new_bitmap, i, height - j, &color);
            FreeImage_SetPixelColor(salidaFinal, i, newheight - j, &color);
        }
    }

    FreeImage_Save(FIF_BMP, salidaFinal, "output.bmp");
    FreeImage_Unload(bitmap);

    return 0;
}


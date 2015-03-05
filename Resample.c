#include <jni.h>
#include <stdio.h>
#include "Resample.h"


JNIEXPORT void JNICALL Java_jnidemojava_Resample_nativeEcho
(JNIEnv *env, jobject obj) {
    int my_integer_array[10] = {2, 4, 8, 16, 32, 64, 128, 256, 512, 1024};
    int i;
    for (i = 0; i < 10; i++) {
        printf("The data contained in my_integer_array[%i] is: %i\n", i, my_integer_array[i]);
    }

}


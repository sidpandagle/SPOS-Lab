#include <jni.h>
#include <stdio.h>
#include "helloJNI.h"
 
// Implementation of native method sayHello() of HelloJNI class
JNIEXPORT jint JNICALL Java_helloJNI_cal(JNIEnv * en, jobject this, jint n, jint m)

  {     jint res;
       res=n+m;
		
		return res;
  }
JNIEXPORT jint JNICALL Java_helloJNI_sub(JNIEnv * en, jobject this, jint n, jint m)

  {     jint res1;
       res1=n-m;
		
		return res1;
  }
JNIEXPORT jint JNICALL Java_helloJNI_mul(JNIEnv * en, jobject this, jint n, jint m)

  {     jint res2;
       res2=n*m;
		
		return res2;
  }
JNIEXPORT jint JNICALL Java_helloJNI_div(JNIEnv * en, jobject this, jint n, jint m)

  {     jint res3;
       res3=n/m;
		
		return res3;
  }
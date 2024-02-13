; ModuleID = '/workdir/multiplication/SR.xw5q8r9h.1.ll'
source_filename = "SR.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"%s usage : [x], [ind]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.8f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ref_multi_ni(double, i32) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i32 %1, i32* %4, align 4
  store double 0.000000e+00, double* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %15, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %7
  %12 = load double, double* %3, align 8
  %13 = load double, double* %5, align 8
  %14 = call double @_doubleadd(double %13, double %12) #4
  store double %14, double* %5, align 8
  br label %15

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %7

; <label>:18:                                     ; preds = %7
  %19 = load double, double* %5, align 8
  ret double %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ref_multi_nr(double, i32) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %16

; <label>:9:                                      ; preds = %2
  %10 = load double, double* %4, align 8
  %11 = load double, double* %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 1
  %14 = call double @ref_multi_nr(double %11, i32 %13)
  %15 = call double @_doubleadd(double %10, double %14) #4
  store double %15, double* %3, align 8
  br label %16

; <label>:16:                                     ; preds = %9, %8
  %17 = load double, double* %3, align 8
  ret double %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ref_multi_rr(double, i32) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %37

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %10
  %14 = load double, double* %4, align 8
  store double %14, double* %3, align 8
  br label %37

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = srem i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %15
  %20 = load double, double* %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 1
  %23 = call double @ref_multi_rr(double %20, i32 %22)
  store double %23, double* %6, align 8
  %24 = load double, double* %6, align 8
  %25 = load double, double* %6, align 8
  %26 = call double @_doubleadd(double %24, double %25) #4
  store double %26, double* %3, align 8
  br label %37

; <label>:27:                                     ; preds = %15
  %28 = load double, double* %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 1
  %31 = call double @ref_multi_rr(double %28, i32 %30)
  store double %31, double* %6, align 8
  %32 = load double, double* %4, align 8
  %33 = load double, double* %6, align 8
  %34 = call double @_doubleadd(double %32, double %33) #4
  %35 = load double, double* %6, align 8
  %36 = call double @_doubleadd(double %34, double %35) #4
  store double %36, double* %3, align 8
  br label %37

; <label>:37:                                     ; preds = %27, %19, %13, %9
  %38 = load double, double* %3, align 8
  ret double %38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ref_multi_ri(double, i32) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  store i32 %1, i32* %4, align 4
  store double 0.000000e+00, double* %5, align 8
  br label %6

; <label>:6:                                      ; preds = %17, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = srem i32 %10, 2
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %9
  %14 = load double, double* %5, align 8
  %15 = load double, double* %3, align 8
  %16 = call double @_doubleadd(double %14, double %15) #4
  store double %16, double* %5, align 8
  br label %17

; <label>:17:                                     ; preds = %13, %9
  %18 = load double, double* %3, align 8
  %19 = load double, double* %3, align 8
  %20 = call double @_doubleadd(double %18, double %19) #4
  store double %20, double* %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %6

; <label>:23:                                     ; preds = %6
  %24 = load double, double* %5, align 8
  ret double %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @multi_ni(float, i32) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store float %0, float* %3, align 4
  store i32 %1, i32* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %15, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %7
  %12 = load float, float* %3, align 4
  %13 = load float, float* %5, align 4
  %14 = call float @_floatadd(float %13, float %12) #4
  store float %14, float* %5, align 4
  br label %15

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %7

; <label>:18:                                     ; preds = %7
  %19 = load float, float* %5, align 4
  ret float %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @multi_nr(float, i32) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store float %0, float* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  store float 0.000000e+00, float* %3, align 4
  br label %16

; <label>:9:                                      ; preds = %2
  %10 = load float, float* %4, align 4
  %11 = load float, float* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 1
  %14 = call float @multi_nr(float %11, i32 %13)
  %15 = call float @_floatadd(float %10, float %14) #4
  store float %15, float* %3, align 4
  br label %16

; <label>:16:                                     ; preds = %9, %8
  %17 = load float, float* %3, align 4
  ret float %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @multi_rr(float, i32) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store float %0, float* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  store float 0.000000e+00, float* %3, align 4
  br label %37

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %10
  %14 = load float, float* %4, align 4
  store float %14, float* %3, align 4
  br label %37

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = srem i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %15
  %20 = load float, float* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 1
  %23 = call float @multi_rr(float %20, i32 %22)
  store float %23, float* %6, align 4
  %24 = load float, float* %6, align 4
  %25 = load float, float* %6, align 4
  %26 = call float @_floatmul(float %24, float %25) #4
  store float %26, float* %3, align 4
  br label %37

; <label>:27:                                     ; preds = %15
  %28 = load float, float* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 1
  %31 = call float @multi_rr(float %28, i32 %30)
  store float %31, float* %6, align 4
  %32 = load float, float* %4, align 4
  %33 = load float, float* %6, align 4
  %34 = call float @_floatadd(float %32, float %33) #4
  %35 = load float, float* %6, align 4
  %36 = call float @_floatadd(float %34, float %35) #4
  store float %36, float* %3, align 4
  br label %37

; <label>:37:                                     ; preds = %27, %19, %13, %9
  %38 = load float, float* %3, align 4
  ret float %38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @multi_ri(float, i32) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store float %0, float* %3, align 4
  store i32 %1, i32* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %17, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = srem i32 %10, 2
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %9
  %14 = load float, float* %5, align 4
  %15 = load float, float* %3, align 4
  %16 = call float @_floatadd(float %14, float %15) #4
  store float %16, float* %5, align 4
  br label %17

; <label>:17:                                     ; preds = %13, %9
  %18 = load float, float* %3, align 4
  %19 = load float, float* %3, align 4
  %20 = call float @_floatadd(float %18, float %19) #4
  store float %20, float* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %6

; <label>:23:                                     ; preds = %6
  %24 = load float, float* %5, align 4
  ret float %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* %23)
  store i32 1, i32* %3, align 4
  br label %161

; <label>:25:                                     ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call double @atof(i8* %28) #5
  store double %29, double* %6, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @atoi(i8* %32) #5
  store i32 %33, i32* %7, align 4
  store i32 401, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %64

; <label>:36:                                     ; preds = %25
  store i32 0, i32* %14, align 4
  br label %37

; <label>:37:                                     ; preds = %60, %36
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %63

; <label>:41:                                     ; preds = %37
  %42 = load double, double* %6, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call double @ref_multi_nr(double %42, i32 %43)
  %45 = fptrunc double %44 to float
  store float %45, float* %13, align 4
  %46 = load float, float* %13, align 4
  %47 = load double, double* %6, align 8
  %48 = fptrunc double %47 to float
  %49 = load i32, i32* %14, align 4
  %50 = call float @multi_nr(float %48, i32 %49)
  %51 = call float @_floatsub(float %46, float %50) #4
  %52 = load float, float* %13, align 4
  %53 = call float @_floatdiv(float %51, float %52) #4
  %54 = fpext float %53 to double
  %55 = call double @llvm.fabs.f64(double %54)
  %56 = fptrunc double %55 to float
  store float %56, float* %9, align 4
  %57 = load float, float* %9, align 4
  %58 = fpext float %57 to double
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), double %58)
  br label %60

; <label>:60:                                     ; preds = %41
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %37

; <label>:63:                                     ; preds = %37
  br label %160

; <label>:64:                                     ; preds = %25
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %95

; <label>:67:                                     ; preds = %64
  store i32 0, i32* %15, align 4
  br label %68

; <label>:68:                                     ; preds = %91, %67
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %94

; <label>:72:                                     ; preds = %68
  %73 = load double, double* %6, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call double @ref_multi_ni(double %73, i32 %74)
  %76 = fptrunc double %75 to float
  store float %76, float* %13, align 4
  %77 = load float, float* %13, align 4
  %78 = load double, double* %6, align 8
  %79 = fptrunc double %78 to float
  %80 = load i32, i32* %15, align 4
  %81 = call float @multi_ni(float %79, i32 %80)
  %82 = call float @_floatsub(float %77, float %81) #4
  %83 = load float, float* %13, align 4
  %84 = call float @_floatdiv(float %82, float %83) #4
  %85 = fpext float %84 to double
  %86 = call double @llvm.fabs.f64(double %85)
  %87 = fptrunc double %86 to float
  store float %87, float* %10, align 4
  %88 = load float, float* %10, align 4
  %89 = fpext float %88 to double
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), double %89)
  br label %91

; <label>:91:                                     ; preds = %72
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %68

; <label>:94:                                     ; preds = %68
  br label %159

; <label>:95:                                     ; preds = %64
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %126

; <label>:98:                                     ; preds = %95
  store i32 0, i32* %16, align 4
  br label %99

; <label>:99:                                     ; preds = %122, %98
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %125

; <label>:103:                                    ; preds = %99
  %104 = load double, double* %6, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call double @ref_multi_rr(double %104, i32 %105)
  %107 = fptrunc double %106 to float
  store float %107, float* %13, align 4
  %108 = load float, float* %13, align 4
  %109 = load double, double* %6, align 8
  %110 = fptrunc double %109 to float
  %111 = load i32, i32* %16, align 4
  %112 = call float @multi_rr(float %110, i32 %111)
  %113 = call float @_floatsub(float %108, float %112) #4
  %114 = load float, float* %13, align 4
  %115 = call float @_floatdiv(float %113, float %114) #4
  %116 = fpext float %115 to double
  %117 = call double @llvm.fabs.f64(double %116)
  %118 = fptrunc double %117 to float
  store float %118, float* %11, align 4
  %119 = load float, float* %11, align 4
  %120 = fpext float %119 to double
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), double %120)
  br label %122

; <label>:122:                                    ; preds = %103
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %16, align 4
  br label %99

; <label>:125:                                    ; preds = %99
  br label %158

; <label>:126:                                    ; preds = %95
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %129, label %157

; <label>:129:                                    ; preds = %126
  store i32 0, i32* %17, align 4
  br label %130

; <label>:130:                                    ; preds = %153, %129
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %156

; <label>:134:                                    ; preds = %130
  %135 = load double, double* %6, align 8
  %136 = load i32, i32* %17, align 4
  %137 = call double @ref_multi_ri(double %135, i32 %136)
  %138 = fptrunc double %137 to float
  store float %138, float* %13, align 4
  %139 = load float, float* %13, align 4
  %140 = load double, double* %6, align 8
  %141 = fptrunc double %140 to float
  %142 = load i32, i32* %17, align 4
  %143 = call float @multi_ri(float %141, i32 %142)
  %144 = call float @_floatsub(float %139, float %143) #4
  %145 = load float, float* %13, align 4
  %146 = call float @_floatdiv(float %144, float %145) #4
  %147 = fpext float %146 to double
  %148 = call double @llvm.fabs.f64(double %147)
  %149 = fptrunc double %148 to float
  store float %149, float* %12, align 4
  %150 = load float, float* %12, align 4
  %151 = fpext float %150 to double
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), double %151)
  br label %153

; <label>:153:                                    ; preds = %134
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %17, align 4
  br label %130

; <label>:156:                                    ; preds = %130
  br label %157

; <label>:157:                                    ; preds = %156, %126
  br label %158

; <label>:158:                                    ; preds = %157, %125
  br label %159

; <label>:159:                                    ; preds = %158, %94
  br label %160

; <label>:160:                                    ; preds = %159, %63
  store i32 0, i32* %3, align 4
  br label %161

; <label>:161:                                    ; preds = %160, %20
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local double @atof(i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind uwtable
declare double @_doubleadd(double, double) #4

; Function Attrs: nounwind uwtable
declare float @_floatadd(float, float) #4

; Function Attrs: nounwind uwtable
declare float @_floatmul(float, float) #4

; Function Attrs: nounwind uwtable
declare float @_floatsub(float, float) #4

; Function Attrs: nounwind uwtable
declare float @_floatdiv(float, float) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="broadwell" "target-features"="+adx,+aes,+avx,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-invpcid,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rdpid,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaveopt,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="broadwell" "target-features"="+adx,+aes,+avx,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-invpcid,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rdpid,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaveopt,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 7.0.1-12 (tags/RELEASE_701/final)"}

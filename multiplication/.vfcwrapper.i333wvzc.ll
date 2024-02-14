; ModuleID = '/usr/local/bin/../include/vfcwrapper.c'
source_filename = "/usr/local/bin/../include/vfcwrapper.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.interflop_backend_interface_t = type { void (float, float, float*, i8*)*, void (float, float, float*, i8*)*, void (float, float, float*, i8*)*, void (float, float, float*, i8*)*, void (i32, float, float, i32*, i8*)*, void (double, double, double*, i8*)*, void (double, double, double*, i8*)*, void (double, double, double*, i8*)*, void (double, double, double*, i8*)*, void (i32, double, double, i32*, i8*)*, void (%struct.interflop_function_stack*, i8*, i32, %struct.__va_list_tag*)*, void (%struct.interflop_function_stack*, i8*, i32, %struct.__va_list_tag*)*, void (i8*, i32, %struct.__va_list_tag*)*, void (i8*)* }
%struct.interflop_function_stack = type { %struct.interflop_function_info**, i64 }
%struct.interflop_function_info = type { i8*, i16, i16, i16, i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.vfc_hashmap_st = type { i64, i64, i64, i64*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque

@loaded_backends = local_unnamed_addr global i8 0, align 1
@already_initialized = local_unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [31 x i8] c"cannot open DDEBUG_GEN file %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"/proc/%d/exe\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"addr2line\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"/usr/bin/addr2line\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"-fpaCs\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"error running addr2line\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"status == 0\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"/usr/local/bin/../include/vfcwrapper.c\00", align 1
@__PRETTY_FUNCTION__.ddebug_generate_inclusion = private unnamed_addr constant [54 x i8] c"void ddebug_generate_inclusion(char *, vfc_hashmap_t)\00", align 1
@backends = common local_unnamed_addr global [16 x %struct.interflop_backend_interface_t] zeroinitializer, align 16
@contexts = common global [16 x i8*] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [13 x i8] c"VFC_BACKENDS\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"VFC_BACKENDS_FROM_FILE\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Error while opening file pointed by %s: %s\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Error while reading file pointed by %s: %s\00", align 1
@.str.15 = private unnamed_addr constant [113 x i8] c"At least one backend should be provided by defining VFC_BACKENDS or VFC_BACKENDS_FROM_FILE environment variables\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"VFC_BACKENDS_SILENT_LOAD\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"%s syntax error: too many arguments\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Cannot load backend %s: dlopen error\0A%s\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"loaded backend %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"interflop_init\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"No interflop_init function in backend %s: %s\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"No more than %d backends can be used simultaneously\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"%s syntax error: at least one backend should be provided\00", align 1
@.str.27 = private unnamed_addr constant [91 x i8] c"No backend instruments add for float.\0AInclude one backend in VFC_BACKENDS that provides it\00", align 1
@.str.28 = private unnamed_addr constant [91 x i8] c"No backend instruments sub for float.\0AInclude one backend in VFC_BACKENDS that provides it\00", align 1
@.str.29 = private unnamed_addr constant [91 x i8] c"No backend instruments mul for float.\0AInclude one backend in VFC_BACKENDS that provides it\00", align 1
@.str.30 = private unnamed_addr constant [91 x i8] c"No backend instruments div for float.\0AInclude one backend in VFC_BACKENDS that provides it\00", align 1
@.str.31 = private unnamed_addr constant [92 x i8] c"No backend instruments add for double.\0AInclude one backend in VFC_BACKENDS that provides it\00", align 1
@.str.32 = private unnamed_addr constant [92 x i8] c"No backend instruments sub for double.\0AInclude one backend in VFC_BACKENDS that provides it\00", align 1
@.str.33 = private unnamed_addr constant [92 x i8] c"No backend instruments mul for double.\0AInclude one backend in VFC_BACKENDS that provides it\00", align 1
@.str.34 = private unnamed_addr constant [92 x i8] c"No backend instruments div for double.\0AInclude one backend in VFC_BACKENDS that provides it\00", align 1
@_vfc_func_map = common local_unnamed_addr global %struct.vfc_hashmap_st* null, align 8
@.str.35 = private unnamed_addr constant [20 x i8] c"%s\09%hd\09%hd\09%hu\09%hu\0A\00", align 1
@_vfc_call_stack = internal global %struct.interflop_function_stack { %struct.interflop_function_info** null, i64 4096 }, align 8
@.str.36 = private unnamed_addr constant [40 x i8] c"Call stack is full, it max size is %zu\0A\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@vfc_backends_logger = internal constant [20 x i8] c"VFC_BACKENDS_LOGGER\00", align 16
@vfc_backends_colored_logger = internal constant [28 x i8] c"VFC_BACKENDS_COLORED_LOGGER\00", align 16
@.str.39 = private unnamed_addr constant [15 x i8] c"Error [%s]: %s\00", align 1
@.str.40 = private constant [12 x i8] c"verificarlo\00", align 1
@logger_logfile = internal unnamed_addr global %struct._IO_FILE* null, align 8
@vfc_backends_logfile = internal constant [21 x i8] c"VFC_BACKENDS_LOGFILE\00", align 16
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.41 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"%s%s%s [%s%s%s]: \00", align 1
@ansi_colors = internal unnamed_addr constant [13 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ansi_color_red, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ansi_color_green, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ansi_color_yellow, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ansi_color_blue, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ansi_color_magenta, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ansi_color_cyan, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ansi_color_bold_red, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ansi_color_bold_green, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ansi_color_bold_yellow, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ansi_color_bold_blue, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ansi_color_bold_magenta, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ansi_color_bold_cyan, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i32 0, i32 0)], align 16
@.str.44 = private unnamed_addr constant [10 x i8] c"%s [%s]: \00", align 1
@logger_enabled = internal unnamed_addr global i8 1, align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@logger_colored = internal unnamed_addr global i8 0, align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@dd_must_instrument = common local_unnamed_addr global %struct.vfc_hashmap_st* null, align 8
@dd_mustnot_instrument = common local_unnamed_addr global %struct.vfc_hashmap_st* null, align 8
@ansi_color_red = internal constant [6 x i8] c"\1B[31m\00", align 1
@ansi_color_green = internal constant [6 x i8] c"\1B[32m\00", align 1
@ansi_color_yellow = internal constant [6 x i8] c"\1B[33m\00", align 1
@ansi_color_blue = internal constant [6 x i8] c"\1B[34m\00", align 1
@ansi_color_magenta = internal constant [6 x i8] c"\1B[35m\00", align 1
@ansi_color_cyan = internal constant [6 x i8] c"\1B[36m\00", align 1
@ansi_color_bold_red = internal constant [8 x i8] c"\1B[1;31m\00", align 1
@ansi_color_bold_green = internal constant [8 x i8] c"\1B[1;32m\00", align 1
@ansi_color_bold_yellow = internal constant [8 x i8] c"\1B[1;33m\00", align 1
@ansi_color_bold_blue = internal constant [8 x i8] c"\1B[1;34m\00", align 1
@ansi_color_bold_magenta = internal constant [8 x i8] c"\1B[1;35m\00", align 1
@ansi_color_bold_cyan = internal constant [8 x i8] c"\1B[1;36m\00", align 1
@ansi_color_reset = internal constant [5 x i8] c"\1B[0m\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @vfc_init, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @vfc_atexit, i8* null }]

; Function Attrs: nounwind uwtable
define void @ddebug_generate_inclusion(i8*, %struct.vfc_hashmap_st* nocapture readonly) local_unnamed_addr #0 {
  %3 = alloca [19 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = tail call i32 (i8*, i32, ...) @open(i8* %0, i32 65, i32 384) #9
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %15, label %8

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %1, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !3
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %12

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %1, i64 0, i32 3
  %14 = bitcast i32* %5 to i8*
  br label %18

; <label>:15:                                     ; preds = %2
  tail call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %0)
  unreachable

; <label>:16:                                     ; preds = %49, %8
  %17 = call i32 @close(i32 %6) #9
  ret void

; <label>:18:                                     ; preds = %12, %49
  %19 = phi i64 [ %10, %12 ], [ %50, %49 ]
  %20 = phi i64 [ 0, %12 ], [ %51, %49 ]
  %21 = load i64*, i64** %13, align 8, !tbaa !9
  %22 = shl i64 %20, 1
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8, !tbaa !10
  %25 = icmp ult i64 %24, 2
  br i1 %25, label %49, label %26

; <label>:26:                                     ; preds = %18
  %27 = call i32 @fork() #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %30) #9
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %31) #9
  %32 = load i64*, i64** %13, align 8, !tbaa !9
  %33 = getelementptr inbounds i64, i64* %32, i64 %22
  %34 = load i64, i64* %33, align 8, !tbaa !10
  %35 = add i64 %34, -5
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %30, i64 19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %36) #9
  %38 = call i32 @getppid() #9
  %39 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %31, i64 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %38) #9
  %40 = call i32 @dup2(i32 %6, i32 1) #9
  %41 = call i32 (i8*, i8*, ...) @execlp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %31, i8* nonnull %30, i8* null) #9
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  unreachable

; <label>:42:                                     ; preds = %26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #9
  %43 = call i32 @wait(i32* nonnull %5) #9
  %44 = load i32, i32* %5, align 4, !tbaa !11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

; <label>:46:                                     ; preds = %42
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 178, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.ddebug_generate_inclusion, i64 0, i64 0)) #13
  unreachable

; <label>:47:                                     ; preds = %42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #9
  %48 = load i64, i64* %9, align 8, !tbaa !3
  br label %49

; <label>:49:                                     ; preds = %18, %47
  %50 = phi i64 [ %19, %18 ], [ %48, %47 ]
  %51 = add nuw i64 %20, 1
  %52 = icmp ult i64 %51, %50
  br i1 %52, label %18, label %16
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define void @logger_error(i8*, ...) local_unnamed_addr #3 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = load i8, i8* @logger_enabled, align 1, !tbaa !13, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

; <label>:5:                                      ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !16
  %7 = load i8, i8* @logger_colored, align 1, !tbaa !13, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ansi_color_bold_red, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ansi_color_green, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0)) #14
  br label %13

; <label>:11:                                     ; preds = %5
  %12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #14
  br label %13

; <label>:13:                                     ; preds = %11, %9, %1
  %14 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #9
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %14)
  call void @verrx(i32 1, i8* %0, %struct.__va_list_tag* nonnull %15) #13
  unreachable
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @get_value_at(i64* nocapture readonly, i64) local_unnamed_addr #4 {
  %3 = shl i64 %1, 1
  %4 = getelementptr inbounds i64, i64* %0, i64 %3
  %5 = load i64, i64* %4, align 8, !tbaa !10
  ret i64 %5
}

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getppid() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @execlp(i8*, i8*, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare i32 @wait(i32*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

declare i32 @close(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @vfc_atexit() #0 {
  %1 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4

; <label>:3:                                      ; preds = %14, %0
  ret void

; <label>:4:                                      ; preds = %0, %14
  %5 = phi i8 [ %15, %14 ], [ %1, %0 ]
  %6 = phi i64 [ %16, %14 ], [ 0, %0 ]
  %7 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %6, i32 13
  %8 = load void (i8*)*, void (i8*)** %7, align 8, !tbaa !18
  %9 = icmp eq void (i8*)* %8, null
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %6
  %12 = load i8*, i8** %11, align 8, !tbaa !16
  tail call void %8(i8* %12) #9
  %13 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %14

; <label>:14:                                     ; preds = %4, %10
  %15 = phi i8 [ %5, %4 ], [ %13, %10 ]
  %16 = add nuw nsw i64 %6, 1
  %17 = zext i8 %15 to i64
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %4, label %3
}

; Function Attrs: nounwind uwtable
define void @parse_vfc_backends_env(i8**, i8** nocapture) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = tail call noalias i8* @malloc(i64 256) #9
  store i8* %4, i8** %1, align 8, !tbaa !16
  %5 = tail call noalias i8* @malloc(i64 256) #9
  store i8* %5, i8** %0, align 8, !tbaa !16
  %6 = load i8*, i8** %1, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i64 13, i1 false)
  %7 = load i8*, i8** %1, align 8, !tbaa !16
  %8 = tail call i8* @getenv(i8* %7) #9
  store i8* %8, i8** %0, align 8, !tbaa !16
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %40

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %1, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 23, i1 false)
  %12 = load i8*, i8** %1, align 8, !tbaa !16
  %13 = tail call i8* @getenv(i8* %12) #9
  %14 = icmp eq i8* %13, null
  br i1 %14, label %40, label %15

; <label>:15:                                     ; preds = %10
  %16 = tail call %struct._IO_FILE* @fopen(i8* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %17 = icmp eq %struct._IO_FILE* %16, null
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %15
  %19 = load i8*, i8** %1, align 8, !tbaa !16
  %20 = tail call i32* @__errno_location() #15
  %21 = load i32, i32* %20, align 4, !tbaa !11
  %22 = tail call i8* @strerror(i32 %21) #9
  tail call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8* %19, i8* %22)
  unreachable

; <label>:23:                                     ; preds = %15
  %24 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #9
  store i64 0, i64* %3, align 8, !tbaa !10
  %25 = call i64 @getline(i8** nonnull %0, i64* nonnull %3, %struct._IO_FILE* nonnull %16) #9
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** %1, align 8, !tbaa !16
  %29 = tail call i32* @__errno_location() #15
  %30 = load i32, i32* %29, align 4, !tbaa !11
  %31 = call i8* @strerror(i32 %30) #9
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8* %28, i8* %31)
  unreachable

; <label>:32:                                     ; preds = %23
  %33 = load i8*, i8** %0, align 8, !tbaa !16
  %34 = add nsw i64 %25, -1
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !17
  %37 = icmp eq i8 %36, 10
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %32
  store i8 0, i8* %35, align 1, !tbaa !17
  br label %39

; <label>:39:                                     ; preds = %32, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #9
  br label %40

; <label>:40:                                     ; preds = %10, %39, %2
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @strerror(i32) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i64 @getline(i8**, i64*, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @vfc_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [256 x i8*], align 16
  %5 = alloca i8*, align 8
  %6 = alloca %struct.interflop_backend_interface_t, align 8
  %7 = load i8, i8* @already_initialized, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %209

; <label>:9:                                      ; preds = %0
  store i8 1, i8* @already_initialized, align 1, !tbaa !17
  tail call void @logger_init()
  %10 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9
  store i8* null, i8** %1, align 8, !tbaa !16
  %11 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #9
  store i8* null, i8** %2, align 8, !tbaa !16
  call void @parse_vfc_backends_env(i8** nonnull %1, i8** nonnull %2)
  %12 = load i8*, i8** %1, align 8, !tbaa !16
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %2, align 8, !tbaa !16
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.15, i64 0, i64 0), i8* %15)
  unreachable

; <label>:16:                                     ; preds = %9
  %17 = call i8* @getenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0)) #9
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

; <label>:19:                                     ; preds = %16
  %20 = call i32 @strcasecmp(i8* nonnull %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #16
  %21 = icmp ne i32 %20, 0
  br label %22

; <label>:22:                                     ; preds = %19, %16
  %23 = phi i1 [ true, %16 ], [ %21, %19 ]
  %24 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #9
  %25 = call i8* @strtok_r(i8* nonnull %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** nonnull %3) #9
  %26 = icmp eq i8* %25, null
  br i1 %26, label %123, label %27

; <label>:27:                                     ; preds = %22
  %28 = bitcast [256 x i8*]* %4 to i8*
  %29 = bitcast i8** %5 to i8*
  %30 = getelementptr inbounds [256 x i8*], [256 x i8*]* %4, i64 0, i64 0
  %31 = bitcast %struct.interflop_backend_interface_t* %6 to i8*
  br i1 %23, label %32, label %72

; <label>:32:                                     ; preds = %27, %63
  %33 = phi i8* [ %70, %63 ], [ %25, %27 ]
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %28) #9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #9
  %34 = call i8* @strtok_r(i8* nonnull %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8** nonnull %5) #9
  %35 = icmp eq i8* %34, null
  br i1 %35, label %47, label %36

; <label>:36:                                     ; preds = %32, %40
  %37 = phi i64 [ %41, %40 ], [ 0, %32 ]
  %38 = phi i8* [ %43, %40 ], [ %34, %32 ]
  %39 = icmp ugt i64 %37, 255
  br i1 %39, label %80, label %40

; <label>:40:                                     ; preds = %36
  %41 = add nuw nsw i64 %37, 1
  %42 = getelementptr inbounds [256 x i8*], [256 x i8*]* %4, i64 0, i64 %37
  store i8* %38, i8** %42, align 8, !tbaa !16
  %43 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8** nonnull %5) #9
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %36

; <label>:45:                                     ; preds = %40
  %46 = trunc i64 %41 to i32
  br label %47

; <label>:47:                                     ; preds = %45, %32
  %48 = phi i32 [ 0, %32 ], [ %46, %45 ]
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i8*], [256 x i8*]* %4, i64 0, i64 %49
  store i8* null, i8** %50, align 8, !tbaa !16
  %51 = load i8*, i8** %30, align 16, !tbaa !16
  %52 = call i8* @dlopen(i8* %51, i32 2) #9
  %53 = icmp eq i8* %52, null
  br i1 %53, label %96, label %54

; <label>:54:                                     ; preds = %47
  call void (i8*, ...) @logger_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %33)
  %55 = call i8* @dlerror() #9
  %56 = call i8* @dlsym(i8* nonnull %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0)) #9
  %57 = bitcast i8* %56 to void (%struct.interflop_backend_interface_t*, i32, i8**, i8**)*
  %58 = call i8* @dlerror() #9
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %105

; <label>:60:                                     ; preds = %54
  %61 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %62 = icmp eq i8 %61, 16
  br i1 %62, label %113, label %63

; <label>:63:                                     ; preds = %60
  %64 = zext i8 %61 to i64
  %65 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %64
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #9
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %64
  call void %57(%struct.interflop_backend_interface_t* nonnull sret %6, i32 %48, i8** nonnull %30, i8** nonnull %66) #9
  %67 = bitcast %struct.interflop_backend_interface_t* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %67, i8* nonnull align 8 %31, i64 112, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #9
  %68 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %69 = add i8 %68, 1
  store i8 %69, i8* @loaded_backends, align 1, !tbaa !17
  %70 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #9
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %28) #9
  %71 = icmp eq i8* %70, null
  br i1 %71, label %123, label %32

; <label>:72:                                     ; preds = %27, %114
  %73 = phi i8* [ %121, %114 ], [ %25, %27 ]
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %28) #9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #9
  %74 = call i8* @strtok_r(i8* nonnull %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8** nonnull %5) #9
  %75 = icmp eq i8* %74, null
  br i1 %75, label %89, label %76

; <label>:76:                                     ; preds = %72, %82
  %77 = phi i64 [ %83, %82 ], [ 0, %72 ]
  %78 = phi i8* [ %85, %82 ], [ %74, %72 ]
  %79 = icmp ugt i64 %77, 255
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %76, %36
  %81 = load i8*, i8** %2, align 8, !tbaa !16
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* %81)
  unreachable

; <label>:82:                                     ; preds = %76
  %83 = add nuw nsw i64 %77, 1
  %84 = getelementptr inbounds [256 x i8*], [256 x i8*]* %4, i64 0, i64 %77
  store i8* %78, i8** %84, align 8, !tbaa !16
  %85 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8** nonnull %5) #9
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %76

; <label>:87:                                     ; preds = %82
  %88 = trunc i64 %83 to i32
  br label %89

; <label>:89:                                     ; preds = %87, %72
  %90 = phi i32 [ 0, %72 ], [ %88, %87 ]
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [256 x i8*], [256 x i8*]* %4, i64 0, i64 %91
  store i8* null, i8** %92, align 8, !tbaa !16
  %93 = load i8*, i8** %30, align 16, !tbaa !16
  %94 = call i8* @dlopen(i8* %93, i32 2) #9
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %99

; <label>:96:                                     ; preds = %89, %47
  %97 = phi i8* [ %33, %47 ], [ %73, %89 ]
  %98 = call i8* @dlerror() #9
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i8* nonnull %97, i8* %98)
  unreachable

; <label>:99:                                     ; preds = %89
  %100 = call i8* @dlerror() #9
  %101 = call i8* @dlsym(i8* nonnull %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0)) #9
  %102 = bitcast i8* %101 to void (%struct.interflop_backend_interface_t*, i32, i8**, i8**)*
  %103 = call i8* @dlerror() #9
  %104 = icmp eq i8* %103, null
  br i1 %104, label %110, label %105

; <label>:105:                                    ; preds = %99, %54
  %106 = phi i8* [ %33, %54 ], [ %73, %99 ]
  %107 = tail call i32* @__errno_location() #15
  %108 = load i32, i32* %107, align 4, !tbaa !11
  %109 = call i8* @strerror(i32 %108) #9
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0), i8* nonnull %106, i8* %109)
  unreachable

; <label>:110:                                    ; preds = %99
  %111 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %112 = icmp eq i8 %111, 16
  br i1 %112, label %113, label %114

; <label>:113:                                    ; preds = %110, %60
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0), i32 16)
  unreachable

; <label>:114:                                    ; preds = %110
  %115 = zext i8 %111 to i64
  %116 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %115
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #9
  %117 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %115
  call void %102(%struct.interflop_backend_interface_t* nonnull sret %6, i32 %90, i8** nonnull %30, i8** nonnull %117) #9
  %118 = bitcast %struct.interflop_backend_interface_t* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %118, i8* nonnull align 8 %31, i64 112, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #9
  %119 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %120 = add i8 %119, 1
  store i8 %120, i8* @loaded_backends, align 1, !tbaa !17
  %121 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #9
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %28) #9
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %72

; <label>:123:                                    ; preds = %114, %63, %22
  %124 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %130

; <label>:126:                                    ; preds = %123
  %127 = load i8*, i8** %2, align 8, !tbaa !16
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0), i8* %127)
  unreachable

; <label>:128:                                    ; preds = %130
  %129 = icmp ult i8 %136, %124
  br i1 %129, label %130, label %137

; <label>:130:                                    ; preds = %123, %128
  %131 = phi i8 [ %136, %128 ], [ 0, %123 ]
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %132, i32 0
  %134 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %133, align 16, !tbaa !21
  %135 = icmp eq void (float, float, float*, i8*)* %134, null
  %136 = add nuw i8 %131, 1
  br i1 %135, label %128, label %140

; <label>:137:                                    ; preds = %128
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.27, i64 0, i64 0))
  unreachable

; <label>:138:                                    ; preds = %140
  %139 = icmp ult i8 %146, %124
  br i1 %139, label %140, label %147

; <label>:140:                                    ; preds = %130, %138
  %141 = phi i8 [ %146, %138 ], [ 0, %130 ]
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %142, i32 1
  %144 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %143, align 8, !tbaa !22
  %145 = icmp eq void (float, float, float*, i8*)* %144, null
  %146 = add nuw i8 %141, 1
  br i1 %145, label %138, label %150

; <label>:147:                                    ; preds = %138
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.28, i64 0, i64 0))
  unreachable

; <label>:148:                                    ; preds = %150
  %149 = icmp ult i8 %156, %124
  br i1 %149, label %150, label %157

; <label>:150:                                    ; preds = %140, %148
  %151 = phi i8 [ %156, %148 ], [ 0, %140 ]
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %152, i32 2
  %154 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %153, align 16, !tbaa !23
  %155 = icmp eq void (float, float, float*, i8*)* %154, null
  %156 = add nuw i8 %151, 1
  br i1 %155, label %148, label %160

; <label>:157:                                    ; preds = %148
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.29, i64 0, i64 0))
  unreachable

; <label>:158:                                    ; preds = %160
  %159 = icmp ult i8 %166, %124
  br i1 %159, label %160, label %167

; <label>:160:                                    ; preds = %150, %158
  %161 = phi i8 [ %166, %158 ], [ 0, %150 ]
  %162 = zext i8 %161 to i64
  %163 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %162, i32 3
  %164 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %163, align 8, !tbaa !24
  %165 = icmp eq void (float, float, float*, i8*)* %164, null
  %166 = add nuw i8 %161, 1
  br i1 %165, label %158, label %170

; <label>:167:                                    ; preds = %158
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.30, i64 0, i64 0))
  unreachable

; <label>:168:                                    ; preds = %170
  %169 = icmp ult i8 %176, %124
  br i1 %169, label %170, label %177

; <label>:170:                                    ; preds = %160, %168
  %171 = phi i8 [ %176, %168 ], [ 0, %160 ]
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %172, i32 5
  %174 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %173, align 8, !tbaa !25
  %175 = icmp eq void (double, double, double*, i8*)* %174, null
  %176 = add nuw i8 %171, 1
  br i1 %175, label %168, label %180

; <label>:177:                                    ; preds = %168
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.31, i64 0, i64 0))
  unreachable

; <label>:178:                                    ; preds = %180
  %179 = icmp ult i8 %186, %124
  br i1 %179, label %180, label %187

; <label>:180:                                    ; preds = %170, %178
  %181 = phi i8 [ %186, %178 ], [ 0, %170 ]
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %182, i32 6
  %184 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %183, align 16, !tbaa !26
  %185 = icmp eq void (double, double, double*, i8*)* %184, null
  %186 = add nuw i8 %181, 1
  br i1 %185, label %178, label %190

; <label>:187:                                    ; preds = %178
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.32, i64 0, i64 0))
  unreachable

; <label>:188:                                    ; preds = %190
  %189 = icmp ult i8 %196, %124
  br i1 %189, label %190, label %197

; <label>:190:                                    ; preds = %180, %188
  %191 = phi i8 [ %196, %188 ], [ 0, %180 ]
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %192, i32 7
  %194 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %193, align 8, !tbaa !27
  %195 = icmp eq void (double, double, double*, i8*)* %194, null
  %196 = add nuw i8 %191, 1
  br i1 %195, label %188, label %200

; <label>:197:                                    ; preds = %188
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.33, i64 0, i64 0))
  unreachable

; <label>:198:                                    ; preds = %200
  %199 = icmp ult i8 %206, %124
  br i1 %199, label %200, label %207

; <label>:200:                                    ; preds = %190, %198
  %201 = phi i8 [ %206, %198 ], [ 0, %190 ]
  %202 = zext i8 %201 to i64
  %203 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %202, i32 8
  %204 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %203, align 16, !tbaa !28
  %205 = icmp eq void (double, double, double*, i8*)* %204, null
  %206 = add nuw i8 %201, 1
  br i1 %205, label %198, label %208

; <label>:207:                                    ; preds = %198
  call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.34, i64 0, i64 0))
  unreachable

; <label>:208:                                    ; preds = %200
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9
  br label %209

; <label>:209:                                    ; preds = %0, %208
  ret void
}

; Function Attrs: nounwind uwtable
define void @logger_init() local_unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @vfc_backends_logger, i64 0, i64 0)) #9
  %3 = icmp eq i8* %2, null
  br i1 %3, label %8, label %4

; <label>:4:                                      ; preds = %0
  %5 = tail call i32 @strcasecmp(i8* nonnull %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #16
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  br label %8

; <label>:8:                                      ; preds = %0, %4
  %9 = phi i8 [ 1, %0 ], [ %7, %4 ]
  store i8 %9, i8* @logger_enabled, align 1, !tbaa !13
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @vfc_backends_colored_logger, i64 0, i64 0)) #9
  %11 = icmp eq i8* %10, null
  br i1 %11, label %16, label %12

; <label>:12:                                     ; preds = %8
  %13 = tail call i32 @strcasecmp(i8* nonnull %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #16
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

; <label>:16:                                     ; preds = %8, %12
  %17 = phi i8 [ 0, %8 ], [ %15, %12 ]
  store i8 %17, i8* @logger_colored, align 1, !tbaa !13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @logger_logfile, align 8, !tbaa !16
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %34

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @vfc_backends_logfile, i64 0, i64 0)) #9
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %20
  %24 = load i64, i64* bitcast (%struct._IO_FILE** @stderr to i64*), align 8, !tbaa !16
  store i64 %24, i64* bitcast (%struct._IO_FILE** @logger_logfile to i64*), align 8, !tbaa !16
  br label %34

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %26) #9
  %27 = tail call i64 (i64, ...) @syscall(i64 186) #9
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8* nonnull %21, i32 %28) #9
  %30 = call %struct._IO_FILE* @fopen(i8* nonnull %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #9
  store %struct._IO_FILE* %30, %struct._IO_FILE** @logger_logfile, align 8, !tbaa !16
  %31 = icmp eq %struct._IO_FILE* %30, null
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %25
  tail call void @_error() #9
  unreachable

; <label>:33:                                     ; preds = %25
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %26) #9
  br label %34

; <label>:34:                                     ; preds = %16, %23, %33
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind
declare i8* @strtok_r(i8*, i8* nocapture readonly, i8**) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @dlopen(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @dlerror() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @logger_info(i8* nocapture readonly, ...) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = load i8, i8* @logger_enabled, align 1, !tbaa !13, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %18, label %5

; <label>:5:                                      ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @logger_logfile, align 8, !tbaa !16
  %7 = load i8, i8* @logger_colored, align 1, !tbaa !13, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ansi_color_bold_blue, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ansi_color_green, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0)) #9
  br label %13

; <label>:11:                                     ; preds = %5
  %12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #9
  br label %13

; <label>:13:                                     ; preds = %9, %11
  %14 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #9
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %14)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @logger_logfile, align 8, !tbaa !16
  %17 = call i32 @vfprintf(%struct._IO_FILE* %16, i8* %0, %struct.__va_list_tag* nonnull %15)
  call void @llvm.va_end(i8* nonnull %14)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #9
  br label %18

; <label>:18:                                     ; preds = %1, %13
  ret void
}

; Function Attrs: nounwind
declare i8* @dlsym(i8*, i8*) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: nounwind uwtable
define void @interflop_call(i32, ...) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #9
  %4 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  br label %9

; <label>:8:                                      ; preds = %20, %1
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #9
  ret void

; <label>:9:                                      ; preds = %6, %20
  %10 = phi i8 [ %4, %6 ], [ %21, %20 ]
  %11 = phi i64 [ 0, %6 ], [ %22, %20 ]
  %12 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %11, i32 12
  %13 = load void (i8*, i32, %struct.__va_list_tag*)*, void (i8*, i32, %struct.__va_list_tag*)** %12, align 16, !tbaa !29
  %14 = icmp eq void (i8*, i32, %struct.__va_list_tag*)* %13, null
  br i1 %14, label %20, label %15

; <label>:15:                                     ; preds = %9
  call void @llvm.va_start(i8* nonnull %3)
  %16 = load void (i8*, i32, %struct.__va_list_tag*)*, void (i8*, i32, %struct.__va_list_tag*)** %12, align 16, !tbaa !29
  %17 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %11
  %18 = load i8*, i8** %17, align 8, !tbaa !16
  call void %16(i8* %18, i32 %0, %struct.__va_list_tag* nonnull %7) #9
  call void @llvm.va_end(i8* nonnull %3)
  %19 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %20

; <label>:20:                                     ; preds = %9, %15
  %21 = phi i8 [ %10, %9 ], [ %19, %15 ]
  %22 = add nuw nsw i64 %11, 1
  %23 = zext i8 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %9, label %8
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind uwtable
define float @_floatadd(float, float) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %5 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %11

; <label>:7:                                      ; preds = %21
  %8 = load float, float* %3, align 4, !tbaa !30
  br label %9

; <label>:9:                                      ; preds = %7, %2
  %10 = phi float [ %8, %7 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  ret float %10

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %5, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 0
  %15 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %14, align 16, !tbaa !21
  %16 = icmp eq void (float, float, float*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(float %0, float %1, float* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %11, %17
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %7
}

; Function Attrs: nounwind uwtable
define float @_floatsub(float, float) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %5 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %11

; <label>:7:                                      ; preds = %21
  %8 = load float, float* %3, align 4, !tbaa !30
  br label %9

; <label>:9:                                      ; preds = %7, %2
  %10 = phi float [ %8, %7 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  ret float %10

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %5, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 1
  %15 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %14, align 8, !tbaa !22
  %16 = icmp eq void (float, float, float*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(float %0, float %1, float* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %11, %17
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %7
}

; Function Attrs: nounwind uwtable
define float @_floatmul(float, float) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %5 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %11

; <label>:7:                                      ; preds = %21
  %8 = load float, float* %3, align 4, !tbaa !30
  br label %9

; <label>:9:                                      ; preds = %7, %2
  %10 = phi float [ %8, %7 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  ret float %10

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %5, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 2
  %15 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %14, align 16, !tbaa !23
  %16 = icmp eq void (float, float, float*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(float %0, float %1, float* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %11, %17
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %7
}

; Function Attrs: nounwind uwtable
define float @_floatdiv(float, float) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %5 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %11

; <label>:7:                                      ; preds = %21
  %8 = load float, float* %3, align 4, !tbaa !30
  br label %9

; <label>:9:                                      ; preds = %7, %2
  %10 = phi float [ %8, %7 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  ret float %10

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %5, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 3
  %15 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %14, align 8, !tbaa !24
  %16 = icmp eq void (float, float, float*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(float %0, float %1, float* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %11, %17
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %7
}

; Function Attrs: nounwind uwtable
define double @_doubleadd(double, double) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %5 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %11

; <label>:7:                                      ; preds = %21
  %8 = load double, double* %3, align 8, !tbaa !32
  br label %9

; <label>:9:                                      ; preds = %7, %2
  %10 = phi double [ %8, %7 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret double %10

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %5, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 5
  %15 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %14, align 8, !tbaa !25
  %16 = icmp eq void (double, double, double*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(double %0, double %1, double* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %11, %17
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %7
}

; Function Attrs: nounwind uwtable
define double @_doublesub(double, double) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %5 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %11

; <label>:7:                                      ; preds = %21
  %8 = load double, double* %3, align 8, !tbaa !32
  br label %9

; <label>:9:                                      ; preds = %7, %2
  %10 = phi double [ %8, %7 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret double %10

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %5, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 6
  %15 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %14, align 16, !tbaa !26
  %16 = icmp eq void (double, double, double*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(double %0, double %1, double* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %11, %17
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %7
}

; Function Attrs: nounwind uwtable
define double @_doublemul(double, double) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %5 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %11

; <label>:7:                                      ; preds = %21
  %8 = load double, double* %3, align 8, !tbaa !32
  br label %9

; <label>:9:                                      ; preds = %7, %2
  %10 = phi double [ %8, %7 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret double %10

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %5, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 7
  %15 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %14, align 8, !tbaa !27
  %16 = icmp eq void (double, double, double*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(double %0, double %1, double* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %11, %17
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %7
}

; Function Attrs: nounwind uwtable
define double @_doublediv(double, double) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %5 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %11

; <label>:7:                                      ; preds = %21
  %8 = load double, double* %3, align 8, !tbaa !32
  br label %9

; <label>:9:                                      ; preds = %7, %2
  %10 = phi double [ %8, %7 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret double %10

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %5, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 8
  %15 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %14, align 16, !tbaa !28
  %16 = icmp eq void (double, double, double*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(double %0, double %1, double* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %11, %17
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %7
}

; Function Attrs: nounwind uwtable
define i32 @_floatcmp(i32, float, float) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %6 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %12

; <label>:8:                                      ; preds = %22
  %9 = load i32, i32* %4, align 4, !tbaa !11
  br label %10

; <label>:10:                                     ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ undef, %3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  ret i32 %11

; <label>:12:                                     ; preds = %3, %22
  %13 = phi i8 [ %23, %22 ], [ %6, %3 ]
  %14 = phi i64 [ %24, %22 ], [ 0, %3 ]
  %15 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %14, i32 4
  %16 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %15, align 16, !tbaa !34
  %17 = icmp eq void (i32, float, float, i32*, i8*)* %16, null
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %14
  %20 = load i8*, i8** %19, align 8, !tbaa !16
  call void %16(i32 %0, float %1, float %2, i32* nonnull %4, i8* %20) #9
  %21 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %22

; <label>:22:                                     ; preds = %12, %18
  %23 = phi i8 [ %13, %12 ], [ %21, %18 ]
  %24 = add nuw nsw i64 %14, 1
  %25 = zext i8 %23 to i64
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %12, label %8
}

; Function Attrs: nounwind uwtable
define i32 @_doublecmp(i32, double, double) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %6 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %12

; <label>:8:                                      ; preds = %22
  %9 = load i32, i32* %4, align 4, !tbaa !11
  br label %10

; <label>:10:                                     ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ undef, %3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  ret i32 %11

; <label>:12:                                     ; preds = %3, %22
  %13 = phi i8 [ %23, %22 ], [ %6, %3 ]
  %14 = phi i64 [ %24, %22 ], [ 0, %3 ]
  %15 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %14, i32 9
  %16 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %15, align 8, !tbaa !35
  %17 = icmp eq void (i32, double, double, i32*, i8*)* %16, null
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %14
  %20 = load i8*, i8** %19, align 8, !tbaa !16
  call void %16(i32 %0, double %1, double %2, i32* nonnull %4, i8* %20) #9
  %21 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %22

; <label>:22:                                     ; preds = %12, %18
  %23 = phi i8 [ %13, %12 ], [ %21, %18 ]
  %24 = add nuw nsw i64 %14, 1
  %25 = zext i8 %23 to i64
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %12, label %8
}

; Function Attrs: nounwind uwtable
define double @_2xfloatadd(double, double) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast double %0 to <2 x float>
  %5 = bitcast double %1 to <2 x float>
  %6 = bitcast float* %3 to i8*
  %7 = extractelement <2 x float> %4, i32 0
  %8 = extractelement <2 x float> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load float, float* %3, align 4, !tbaa !30
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 0
  %17 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %16, align 16, !tbaa !21
  %18 = icmp eq void (float, float, float*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(float %7, float %8, float* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi float [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %31 = insertelement <2 x float> undef, float %30, i32 0
  %32 = extractelement <2 x float> %4, i32 1
  %33 = extractelement <2 x float> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 0
  %39 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %38, align 16, !tbaa !21
  %40 = icmp eq void (float, float, float*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(float %32, float %33, float* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load float, float* %3, align 4, !tbaa !30
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi float [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %54 = insertelement <2 x float> %31, float %53, i32 1
  %55 = bitcast <2 x float> %54 to double
  ret double %55
}

; Function Attrs: nounwind uwtable
define double @_2xfloatsub(double, double) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast double %0 to <2 x float>
  %5 = bitcast double %1 to <2 x float>
  %6 = bitcast float* %3 to i8*
  %7 = extractelement <2 x float> %4, i32 0
  %8 = extractelement <2 x float> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load float, float* %3, align 4, !tbaa !30
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 1
  %17 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %16, align 8, !tbaa !22
  %18 = icmp eq void (float, float, float*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(float %7, float %8, float* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi float [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %31 = insertelement <2 x float> undef, float %30, i32 0
  %32 = extractelement <2 x float> %4, i32 1
  %33 = extractelement <2 x float> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 1
  %39 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %38, align 8, !tbaa !22
  %40 = icmp eq void (float, float, float*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(float %32, float %33, float* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load float, float* %3, align 4, !tbaa !30
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi float [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %54 = insertelement <2 x float> %31, float %53, i32 1
  %55 = bitcast <2 x float> %54 to double
  ret double %55
}

; Function Attrs: nounwind uwtable
define double @_2xfloatmul(double, double) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast double %0 to <2 x float>
  %5 = bitcast double %1 to <2 x float>
  %6 = bitcast float* %3 to i8*
  %7 = extractelement <2 x float> %4, i32 0
  %8 = extractelement <2 x float> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load float, float* %3, align 4, !tbaa !30
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 2
  %17 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %16, align 16, !tbaa !23
  %18 = icmp eq void (float, float, float*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(float %7, float %8, float* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi float [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %31 = insertelement <2 x float> undef, float %30, i32 0
  %32 = extractelement <2 x float> %4, i32 1
  %33 = extractelement <2 x float> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 2
  %39 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %38, align 16, !tbaa !23
  %40 = icmp eq void (float, float, float*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(float %32, float %33, float* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load float, float* %3, align 4, !tbaa !30
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi float [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %54 = insertelement <2 x float> %31, float %53, i32 1
  %55 = bitcast <2 x float> %54 to double
  ret double %55
}

; Function Attrs: nounwind uwtable
define double @_2xfloatdiv(double, double) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast double %0 to <2 x float>
  %5 = bitcast double %1 to <2 x float>
  %6 = bitcast float* %3 to i8*
  %7 = extractelement <2 x float> %4, i32 0
  %8 = extractelement <2 x float> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load float, float* %3, align 4, !tbaa !30
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 3
  %17 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %16, align 8, !tbaa !24
  %18 = icmp eq void (float, float, float*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(float %7, float %8, float* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi float [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %31 = insertelement <2 x float> undef, float %30, i32 0
  %32 = extractelement <2 x float> %4, i32 1
  %33 = extractelement <2 x float> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 3
  %39 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %38, align 8, !tbaa !24
  %40 = icmp eq void (float, float, float*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(float %32, float %33, float* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load float, float* %3, align 4, !tbaa !30
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi float [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %54 = insertelement <2 x float> %31, float %53, i32 1
  %55 = bitcast <2 x float> %54 to double
  ret double %55
}

; Function Attrs: nounwind uwtable
define <2 x double> @_2xdoubleadd(<2 x double>, <2 x double>) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  %5 = extractelement <2 x double> %0, i32 0
  %6 = extractelement <2 x double> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load double, double* %3, align 8, !tbaa !32
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 5
  %15 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %14, align 8, !tbaa !25
  %16 = icmp eq void (double, double, double*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(double %5, double %6, double* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi double [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %29 = insertelement <2 x double> undef, double %28, i32 0
  %30 = extractelement <2 x double> %0, i32 1
  %31 = extractelement <2 x double> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 5
  %37 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %36, align 8, !tbaa !25
  %38 = icmp eq void (double, double, double*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(double %30, double %31, double* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load double, double* %3, align 8, !tbaa !32
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi double [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %52 = insertelement <2 x double> %29, double %51, i32 1
  ret <2 x double> %52
}

; Function Attrs: nounwind uwtable
define <2 x double> @_2xdoublesub(<2 x double>, <2 x double>) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  %5 = extractelement <2 x double> %0, i32 0
  %6 = extractelement <2 x double> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load double, double* %3, align 8, !tbaa !32
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 6
  %15 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %14, align 16, !tbaa !26
  %16 = icmp eq void (double, double, double*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(double %5, double %6, double* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi double [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %29 = insertelement <2 x double> undef, double %28, i32 0
  %30 = extractelement <2 x double> %0, i32 1
  %31 = extractelement <2 x double> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 6
  %37 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %36, align 16, !tbaa !26
  %38 = icmp eq void (double, double, double*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(double %30, double %31, double* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load double, double* %3, align 8, !tbaa !32
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi double [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %52 = insertelement <2 x double> %29, double %51, i32 1
  ret <2 x double> %52
}

; Function Attrs: nounwind uwtable
define <2 x double> @_2xdoublemul(<2 x double>, <2 x double>) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  %5 = extractelement <2 x double> %0, i32 0
  %6 = extractelement <2 x double> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load double, double* %3, align 8, !tbaa !32
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 7
  %15 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %14, align 8, !tbaa !27
  %16 = icmp eq void (double, double, double*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(double %5, double %6, double* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi double [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %29 = insertelement <2 x double> undef, double %28, i32 0
  %30 = extractelement <2 x double> %0, i32 1
  %31 = extractelement <2 x double> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 7
  %37 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %36, align 8, !tbaa !27
  %38 = icmp eq void (double, double, double*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(double %30, double %31, double* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load double, double* %3, align 8, !tbaa !32
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi double [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %52 = insertelement <2 x double> %29, double %51, i32 1
  ret <2 x double> %52
}

; Function Attrs: nounwind uwtable
define <2 x double> @_2xdoublediv(<2 x double>, <2 x double>) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  %5 = extractelement <2 x double> %0, i32 0
  %6 = extractelement <2 x double> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load double, double* %3, align 8, !tbaa !32
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 8
  %15 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %14, align 16, !tbaa !28
  %16 = icmp eq void (double, double, double*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(double %5, double %6, double* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi double [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %29 = insertelement <2 x double> undef, double %28, i32 0
  %30 = extractelement <2 x double> %0, i32 1
  %31 = extractelement <2 x double> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 8
  %37 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %36, align 16, !tbaa !28
  %38 = icmp eq void (double, double, double*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(double %30, double %31, double* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load double, double* %3, align 8, !tbaa !32
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi double [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %52 = insertelement <2 x double> %29, double %51, i32 1
  ret <2 x double> %52
}

; Function Attrs: nounwind uwtable
define <4 x float> @_4xfloatadd(<4 x float>, <4 x float>) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast float* %3 to i8*
  %5 = extractelement <4 x float> %0, i32 0
  %6 = extractelement <4 x float> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load float, float* %3, align 4, !tbaa !30
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 0
  %15 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %14, align 16, !tbaa !21
  %16 = icmp eq void (float, float, float*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(float %5, float %6, float* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi float [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %29 = insertelement <4 x float> undef, float %28, i32 0
  %30 = extractelement <4 x float> %0, i32 1
  %31 = extractelement <4 x float> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 0
  %37 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %36, align 16, !tbaa !21
  %38 = icmp eq void (float, float, float*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(float %30, float %31, float* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load float, float* %3, align 4, !tbaa !30
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi i8 [ %44, %48 ], [ 0, %26 ]
  %52 = phi float [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %53 = insertelement <4 x float> %29, float %52, i32 1
  %54 = extractelement <4 x float> %0, i32 2
  %55 = extractelement <4 x float> %1, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %56 = icmp eq i8 %51, 0
  br i1 %56, label %74, label %57

; <label>:57:                                     ; preds = %50, %67
  %58 = phi i8 [ %68, %67 ], [ %51, %50 ]
  %59 = phi i64 [ %69, %67 ], [ 0, %50 ]
  %60 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %59, i32 0
  %61 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %60, align 16, !tbaa !21
  %62 = icmp eq void (float, float, float*, i8*)* %61, null
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %59
  %65 = load i8*, i8** %64, align 8, !tbaa !16
  call void %61(float %54, float %55, float* nonnull %3, i8* %65) #9
  %66 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %67

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8 [ %58, %57 ], [ %66, %63 ]
  %69 = add nuw nsw i64 %59, 1
  %70 = zext i8 %68 to i64
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %57, label %72

; <label>:72:                                     ; preds = %67
  %73 = load float, float* %3, align 4, !tbaa !30
  br label %74

; <label>:74:                                     ; preds = %72, %50
  %75 = phi i8 [ %68, %72 ], [ 0, %50 ]
  %76 = phi float [ %73, %72 ], [ 0x7FF8000000000000, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %77 = insertelement <4 x float> %53, float %76, i32 2
  %78 = extractelement <4 x float> %0, i32 3
  %79 = extractelement <4 x float> %1, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %80 = icmp eq i8 %75, 0
  br i1 %80, label %98, label %81

; <label>:81:                                     ; preds = %74, %91
  %82 = phi i8 [ %92, %91 ], [ %75, %74 ]
  %83 = phi i64 [ %93, %91 ], [ 0, %74 ]
  %84 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %83, i32 0
  %85 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %84, align 16, !tbaa !21
  %86 = icmp eq void (float, float, float*, i8*)* %85, null
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %83
  %89 = load i8*, i8** %88, align 8, !tbaa !16
  call void %85(float %78, float %79, float* nonnull %3, i8* %89) #9
  %90 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %91

; <label>:91:                                     ; preds = %87, %81
  %92 = phi i8 [ %82, %81 ], [ %90, %87 ]
  %93 = add nuw nsw i64 %83, 1
  %94 = zext i8 %92 to i64
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %81, label %96

; <label>:96:                                     ; preds = %91
  %97 = load float, float* %3, align 4, !tbaa !30
  br label %98

; <label>:98:                                     ; preds = %96, %74
  %99 = phi float [ %97, %96 ], [ 0x7FF8000000000000, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %100 = insertelement <4 x float> %77, float %99, i32 3
  ret <4 x float> %100
}

; Function Attrs: nounwind uwtable
define <4 x float> @_4xfloatsub(<4 x float>, <4 x float>) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast float* %3 to i8*
  %5 = extractelement <4 x float> %0, i32 0
  %6 = extractelement <4 x float> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load float, float* %3, align 4, !tbaa !30
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 1
  %15 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %14, align 8, !tbaa !22
  %16 = icmp eq void (float, float, float*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(float %5, float %6, float* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi float [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %29 = insertelement <4 x float> undef, float %28, i32 0
  %30 = extractelement <4 x float> %0, i32 1
  %31 = extractelement <4 x float> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 1
  %37 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %36, align 8, !tbaa !22
  %38 = icmp eq void (float, float, float*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(float %30, float %31, float* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load float, float* %3, align 4, !tbaa !30
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi i8 [ %44, %48 ], [ 0, %26 ]
  %52 = phi float [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %53 = insertelement <4 x float> %29, float %52, i32 1
  %54 = extractelement <4 x float> %0, i32 2
  %55 = extractelement <4 x float> %1, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %56 = icmp eq i8 %51, 0
  br i1 %56, label %74, label %57

; <label>:57:                                     ; preds = %50, %67
  %58 = phi i8 [ %68, %67 ], [ %51, %50 ]
  %59 = phi i64 [ %69, %67 ], [ 0, %50 ]
  %60 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %59, i32 1
  %61 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %60, align 8, !tbaa !22
  %62 = icmp eq void (float, float, float*, i8*)* %61, null
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %59
  %65 = load i8*, i8** %64, align 8, !tbaa !16
  call void %61(float %54, float %55, float* nonnull %3, i8* %65) #9
  %66 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %67

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8 [ %58, %57 ], [ %66, %63 ]
  %69 = add nuw nsw i64 %59, 1
  %70 = zext i8 %68 to i64
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %57, label %72

; <label>:72:                                     ; preds = %67
  %73 = load float, float* %3, align 4, !tbaa !30
  br label %74

; <label>:74:                                     ; preds = %72, %50
  %75 = phi i8 [ %68, %72 ], [ 0, %50 ]
  %76 = phi float [ %73, %72 ], [ 0x7FF8000000000000, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %77 = insertelement <4 x float> %53, float %76, i32 2
  %78 = extractelement <4 x float> %0, i32 3
  %79 = extractelement <4 x float> %1, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %80 = icmp eq i8 %75, 0
  br i1 %80, label %98, label %81

; <label>:81:                                     ; preds = %74, %91
  %82 = phi i8 [ %92, %91 ], [ %75, %74 ]
  %83 = phi i64 [ %93, %91 ], [ 0, %74 ]
  %84 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %83, i32 1
  %85 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %84, align 8, !tbaa !22
  %86 = icmp eq void (float, float, float*, i8*)* %85, null
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %83
  %89 = load i8*, i8** %88, align 8, !tbaa !16
  call void %85(float %78, float %79, float* nonnull %3, i8* %89) #9
  %90 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %91

; <label>:91:                                     ; preds = %87, %81
  %92 = phi i8 [ %82, %81 ], [ %90, %87 ]
  %93 = add nuw nsw i64 %83, 1
  %94 = zext i8 %92 to i64
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %81, label %96

; <label>:96:                                     ; preds = %91
  %97 = load float, float* %3, align 4, !tbaa !30
  br label %98

; <label>:98:                                     ; preds = %96, %74
  %99 = phi float [ %97, %96 ], [ 0x7FF8000000000000, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %100 = insertelement <4 x float> %77, float %99, i32 3
  ret <4 x float> %100
}

; Function Attrs: nounwind uwtable
define <4 x float> @_4xfloatmul(<4 x float>, <4 x float>) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast float* %3 to i8*
  %5 = extractelement <4 x float> %0, i32 0
  %6 = extractelement <4 x float> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load float, float* %3, align 4, !tbaa !30
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 2
  %15 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %14, align 16, !tbaa !23
  %16 = icmp eq void (float, float, float*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(float %5, float %6, float* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi float [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %29 = insertelement <4 x float> undef, float %28, i32 0
  %30 = extractelement <4 x float> %0, i32 1
  %31 = extractelement <4 x float> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 2
  %37 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %36, align 16, !tbaa !23
  %38 = icmp eq void (float, float, float*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(float %30, float %31, float* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load float, float* %3, align 4, !tbaa !30
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi i8 [ %44, %48 ], [ 0, %26 ]
  %52 = phi float [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %53 = insertelement <4 x float> %29, float %52, i32 1
  %54 = extractelement <4 x float> %0, i32 2
  %55 = extractelement <4 x float> %1, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %56 = icmp eq i8 %51, 0
  br i1 %56, label %74, label %57

; <label>:57:                                     ; preds = %50, %67
  %58 = phi i8 [ %68, %67 ], [ %51, %50 ]
  %59 = phi i64 [ %69, %67 ], [ 0, %50 ]
  %60 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %59, i32 2
  %61 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %60, align 16, !tbaa !23
  %62 = icmp eq void (float, float, float*, i8*)* %61, null
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %59
  %65 = load i8*, i8** %64, align 8, !tbaa !16
  call void %61(float %54, float %55, float* nonnull %3, i8* %65) #9
  %66 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %67

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8 [ %58, %57 ], [ %66, %63 ]
  %69 = add nuw nsw i64 %59, 1
  %70 = zext i8 %68 to i64
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %57, label %72

; <label>:72:                                     ; preds = %67
  %73 = load float, float* %3, align 4, !tbaa !30
  br label %74

; <label>:74:                                     ; preds = %72, %50
  %75 = phi i8 [ %68, %72 ], [ 0, %50 ]
  %76 = phi float [ %73, %72 ], [ 0x7FF8000000000000, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %77 = insertelement <4 x float> %53, float %76, i32 2
  %78 = extractelement <4 x float> %0, i32 3
  %79 = extractelement <4 x float> %1, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %80 = icmp eq i8 %75, 0
  br i1 %80, label %98, label %81

; <label>:81:                                     ; preds = %74, %91
  %82 = phi i8 [ %92, %91 ], [ %75, %74 ]
  %83 = phi i64 [ %93, %91 ], [ 0, %74 ]
  %84 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %83, i32 2
  %85 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %84, align 16, !tbaa !23
  %86 = icmp eq void (float, float, float*, i8*)* %85, null
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %83
  %89 = load i8*, i8** %88, align 8, !tbaa !16
  call void %85(float %78, float %79, float* nonnull %3, i8* %89) #9
  %90 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %91

; <label>:91:                                     ; preds = %87, %81
  %92 = phi i8 [ %82, %81 ], [ %90, %87 ]
  %93 = add nuw nsw i64 %83, 1
  %94 = zext i8 %92 to i64
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %81, label %96

; <label>:96:                                     ; preds = %91
  %97 = load float, float* %3, align 4, !tbaa !30
  br label %98

; <label>:98:                                     ; preds = %96, %74
  %99 = phi float [ %97, %96 ], [ 0x7FF8000000000000, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %100 = insertelement <4 x float> %77, float %99, i32 3
  ret <4 x float> %100
}

; Function Attrs: nounwind uwtable
define <4 x float> @_4xfloatdiv(<4 x float>, <4 x float>) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast float* %3 to i8*
  %5 = extractelement <4 x float> %0, i32 0
  %6 = extractelement <4 x float> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load float, float* %3, align 4, !tbaa !30
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 3
  %15 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %14, align 8, !tbaa !24
  %16 = icmp eq void (float, float, float*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(float %5, float %6, float* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi float [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %29 = insertelement <4 x float> undef, float %28, i32 0
  %30 = extractelement <4 x float> %0, i32 1
  %31 = extractelement <4 x float> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 3
  %37 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %36, align 8, !tbaa !24
  %38 = icmp eq void (float, float, float*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(float %30, float %31, float* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load float, float* %3, align 4, !tbaa !30
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi i8 [ %44, %48 ], [ 0, %26 ]
  %52 = phi float [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %53 = insertelement <4 x float> %29, float %52, i32 1
  %54 = extractelement <4 x float> %0, i32 2
  %55 = extractelement <4 x float> %1, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %56 = icmp eq i8 %51, 0
  br i1 %56, label %74, label %57

; <label>:57:                                     ; preds = %50, %67
  %58 = phi i8 [ %68, %67 ], [ %51, %50 ]
  %59 = phi i64 [ %69, %67 ], [ 0, %50 ]
  %60 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %59, i32 3
  %61 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %60, align 8, !tbaa !24
  %62 = icmp eq void (float, float, float*, i8*)* %61, null
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %59
  %65 = load i8*, i8** %64, align 8, !tbaa !16
  call void %61(float %54, float %55, float* nonnull %3, i8* %65) #9
  %66 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %67

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8 [ %58, %57 ], [ %66, %63 ]
  %69 = add nuw nsw i64 %59, 1
  %70 = zext i8 %68 to i64
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %57, label %72

; <label>:72:                                     ; preds = %67
  %73 = load float, float* %3, align 4, !tbaa !30
  br label %74

; <label>:74:                                     ; preds = %72, %50
  %75 = phi i8 [ %68, %72 ], [ 0, %50 ]
  %76 = phi float [ %73, %72 ], [ 0x7FF8000000000000, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %77 = insertelement <4 x float> %53, float %76, i32 2
  %78 = extractelement <4 x float> %0, i32 3
  %79 = extractelement <4 x float> %1, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %80 = icmp eq i8 %75, 0
  br i1 %80, label %98, label %81

; <label>:81:                                     ; preds = %74, %91
  %82 = phi i8 [ %92, %91 ], [ %75, %74 ]
  %83 = phi i64 [ %93, %91 ], [ 0, %74 ]
  %84 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %83, i32 3
  %85 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %84, align 8, !tbaa !24
  %86 = icmp eq void (float, float, float*, i8*)* %85, null
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %83
  %89 = load i8*, i8** %88, align 8, !tbaa !16
  call void %85(float %78, float %79, float* nonnull %3, i8* %89) #9
  %90 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %91

; <label>:91:                                     ; preds = %87, %81
  %92 = phi i8 [ %82, %81 ], [ %90, %87 ]
  %93 = add nuw nsw i64 %83, 1
  %94 = zext i8 %92 to i64
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %81, label %96

; <label>:96:                                     ; preds = %91
  %97 = load float, float* %3, align 4, !tbaa !30
  br label %98

; <label>:98:                                     ; preds = %96, %74
  %99 = phi float [ %97, %96 ], [ 0x7FF8000000000000, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %100 = insertelement <4 x float> %77, float %99, i32 3
  ret <4 x float> %100
}

; Function Attrs: nounwind uwtable
define <4 x double> @_4xdoubleadd(<4 x double>, <4 x double>) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  %5 = extractelement <4 x double> %0, i32 0
  %6 = extractelement <4 x double> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load double, double* %3, align 8, !tbaa !32
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 5
  %15 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %14, align 8, !tbaa !25
  %16 = icmp eq void (double, double, double*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(double %5, double %6, double* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi double [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %29 = insertelement <4 x double> undef, double %28, i32 0
  %30 = extractelement <4 x double> %0, i32 1
  %31 = extractelement <4 x double> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 5
  %37 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %36, align 8, !tbaa !25
  %38 = icmp eq void (double, double, double*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(double %30, double %31, double* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load double, double* %3, align 8, !tbaa !32
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi i8 [ %44, %48 ], [ 0, %26 ]
  %52 = phi double [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %53 = insertelement <4 x double> %29, double %52, i32 1
  %54 = extractelement <4 x double> %0, i32 2
  %55 = extractelement <4 x double> %1, i32 2
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %56 = icmp eq i8 %51, 0
  br i1 %56, label %74, label %57

; <label>:57:                                     ; preds = %50, %67
  %58 = phi i8 [ %68, %67 ], [ %51, %50 ]
  %59 = phi i64 [ %69, %67 ], [ 0, %50 ]
  %60 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %59, i32 5
  %61 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %60, align 8, !tbaa !25
  %62 = icmp eq void (double, double, double*, i8*)* %61, null
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %59
  %65 = load i8*, i8** %64, align 8, !tbaa !16
  call void %61(double %54, double %55, double* nonnull %3, i8* %65) #9
  %66 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %67

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8 [ %58, %57 ], [ %66, %63 ]
  %69 = add nuw nsw i64 %59, 1
  %70 = zext i8 %68 to i64
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %57, label %72

; <label>:72:                                     ; preds = %67
  %73 = load double, double* %3, align 8, !tbaa !32
  br label %74

; <label>:74:                                     ; preds = %72, %50
  %75 = phi i8 [ %68, %72 ], [ 0, %50 ]
  %76 = phi double [ %73, %72 ], [ 0x7FF8000000000000, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %77 = insertelement <4 x double> %53, double %76, i32 2
  %78 = extractelement <4 x double> %0, i32 3
  %79 = extractelement <4 x double> %1, i32 3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %80 = icmp eq i8 %75, 0
  br i1 %80, label %98, label %81

; <label>:81:                                     ; preds = %74, %91
  %82 = phi i8 [ %92, %91 ], [ %75, %74 ]
  %83 = phi i64 [ %93, %91 ], [ 0, %74 ]
  %84 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %83, i32 5
  %85 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %84, align 8, !tbaa !25
  %86 = icmp eq void (double, double, double*, i8*)* %85, null
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %83
  %89 = load i8*, i8** %88, align 8, !tbaa !16
  call void %85(double %78, double %79, double* nonnull %3, i8* %89) #9
  %90 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %91

; <label>:91:                                     ; preds = %87, %81
  %92 = phi i8 [ %82, %81 ], [ %90, %87 ]
  %93 = add nuw nsw i64 %83, 1
  %94 = zext i8 %92 to i64
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %81, label %96

; <label>:96:                                     ; preds = %91
  %97 = load double, double* %3, align 8, !tbaa !32
  br label %98

; <label>:98:                                     ; preds = %96, %74
  %99 = phi double [ %97, %96 ], [ 0x7FF8000000000000, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %100 = insertelement <4 x double> %77, double %99, i32 3
  ret <4 x double> %100
}

; Function Attrs: nounwind uwtable
define <4 x double> @_4xdoublesub(<4 x double>, <4 x double>) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  %5 = extractelement <4 x double> %0, i32 0
  %6 = extractelement <4 x double> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load double, double* %3, align 8, !tbaa !32
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 6
  %15 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %14, align 16, !tbaa !26
  %16 = icmp eq void (double, double, double*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(double %5, double %6, double* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi double [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %29 = insertelement <4 x double> undef, double %28, i32 0
  %30 = extractelement <4 x double> %0, i32 1
  %31 = extractelement <4 x double> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 6
  %37 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %36, align 16, !tbaa !26
  %38 = icmp eq void (double, double, double*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(double %30, double %31, double* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load double, double* %3, align 8, !tbaa !32
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi i8 [ %44, %48 ], [ 0, %26 ]
  %52 = phi double [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %53 = insertelement <4 x double> %29, double %52, i32 1
  %54 = extractelement <4 x double> %0, i32 2
  %55 = extractelement <4 x double> %1, i32 2
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %56 = icmp eq i8 %51, 0
  br i1 %56, label %74, label %57

; <label>:57:                                     ; preds = %50, %67
  %58 = phi i8 [ %68, %67 ], [ %51, %50 ]
  %59 = phi i64 [ %69, %67 ], [ 0, %50 ]
  %60 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %59, i32 6
  %61 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %60, align 16, !tbaa !26
  %62 = icmp eq void (double, double, double*, i8*)* %61, null
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %59
  %65 = load i8*, i8** %64, align 8, !tbaa !16
  call void %61(double %54, double %55, double* nonnull %3, i8* %65) #9
  %66 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %67

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8 [ %58, %57 ], [ %66, %63 ]
  %69 = add nuw nsw i64 %59, 1
  %70 = zext i8 %68 to i64
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %57, label %72

; <label>:72:                                     ; preds = %67
  %73 = load double, double* %3, align 8, !tbaa !32
  br label %74

; <label>:74:                                     ; preds = %72, %50
  %75 = phi i8 [ %68, %72 ], [ 0, %50 ]
  %76 = phi double [ %73, %72 ], [ 0x7FF8000000000000, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %77 = insertelement <4 x double> %53, double %76, i32 2
  %78 = extractelement <4 x double> %0, i32 3
  %79 = extractelement <4 x double> %1, i32 3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %80 = icmp eq i8 %75, 0
  br i1 %80, label %98, label %81

; <label>:81:                                     ; preds = %74, %91
  %82 = phi i8 [ %92, %91 ], [ %75, %74 ]
  %83 = phi i64 [ %93, %91 ], [ 0, %74 ]
  %84 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %83, i32 6
  %85 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %84, align 16, !tbaa !26
  %86 = icmp eq void (double, double, double*, i8*)* %85, null
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %83
  %89 = load i8*, i8** %88, align 8, !tbaa !16
  call void %85(double %78, double %79, double* nonnull %3, i8* %89) #9
  %90 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %91

; <label>:91:                                     ; preds = %87, %81
  %92 = phi i8 [ %82, %81 ], [ %90, %87 ]
  %93 = add nuw nsw i64 %83, 1
  %94 = zext i8 %92 to i64
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %81, label %96

; <label>:96:                                     ; preds = %91
  %97 = load double, double* %3, align 8, !tbaa !32
  br label %98

; <label>:98:                                     ; preds = %96, %74
  %99 = phi double [ %97, %96 ], [ 0x7FF8000000000000, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %100 = insertelement <4 x double> %77, double %99, i32 3
  ret <4 x double> %100
}

; Function Attrs: nounwind uwtable
define <4 x double> @_4xdoublemul(<4 x double>, <4 x double>) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  %5 = extractelement <4 x double> %0, i32 0
  %6 = extractelement <4 x double> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load double, double* %3, align 8, !tbaa !32
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 7
  %15 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %14, align 8, !tbaa !27
  %16 = icmp eq void (double, double, double*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(double %5, double %6, double* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi double [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %29 = insertelement <4 x double> undef, double %28, i32 0
  %30 = extractelement <4 x double> %0, i32 1
  %31 = extractelement <4 x double> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 7
  %37 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %36, align 8, !tbaa !27
  %38 = icmp eq void (double, double, double*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(double %30, double %31, double* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load double, double* %3, align 8, !tbaa !32
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi i8 [ %44, %48 ], [ 0, %26 ]
  %52 = phi double [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %53 = insertelement <4 x double> %29, double %52, i32 1
  %54 = extractelement <4 x double> %0, i32 2
  %55 = extractelement <4 x double> %1, i32 2
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %56 = icmp eq i8 %51, 0
  br i1 %56, label %74, label %57

; <label>:57:                                     ; preds = %50, %67
  %58 = phi i8 [ %68, %67 ], [ %51, %50 ]
  %59 = phi i64 [ %69, %67 ], [ 0, %50 ]
  %60 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %59, i32 7
  %61 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %60, align 8, !tbaa !27
  %62 = icmp eq void (double, double, double*, i8*)* %61, null
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %59
  %65 = load i8*, i8** %64, align 8, !tbaa !16
  call void %61(double %54, double %55, double* nonnull %3, i8* %65) #9
  %66 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %67

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8 [ %58, %57 ], [ %66, %63 ]
  %69 = add nuw nsw i64 %59, 1
  %70 = zext i8 %68 to i64
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %57, label %72

; <label>:72:                                     ; preds = %67
  %73 = load double, double* %3, align 8, !tbaa !32
  br label %74

; <label>:74:                                     ; preds = %72, %50
  %75 = phi i8 [ %68, %72 ], [ 0, %50 ]
  %76 = phi double [ %73, %72 ], [ 0x7FF8000000000000, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %77 = insertelement <4 x double> %53, double %76, i32 2
  %78 = extractelement <4 x double> %0, i32 3
  %79 = extractelement <4 x double> %1, i32 3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %80 = icmp eq i8 %75, 0
  br i1 %80, label %98, label %81

; <label>:81:                                     ; preds = %74, %91
  %82 = phi i8 [ %92, %91 ], [ %75, %74 ]
  %83 = phi i64 [ %93, %91 ], [ 0, %74 ]
  %84 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %83, i32 7
  %85 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %84, align 8, !tbaa !27
  %86 = icmp eq void (double, double, double*, i8*)* %85, null
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %83
  %89 = load i8*, i8** %88, align 8, !tbaa !16
  call void %85(double %78, double %79, double* nonnull %3, i8* %89) #9
  %90 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %91

; <label>:91:                                     ; preds = %87, %81
  %92 = phi i8 [ %82, %81 ], [ %90, %87 ]
  %93 = add nuw nsw i64 %83, 1
  %94 = zext i8 %92 to i64
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %81, label %96

; <label>:96:                                     ; preds = %91
  %97 = load double, double* %3, align 8, !tbaa !32
  br label %98

; <label>:98:                                     ; preds = %96, %74
  %99 = phi double [ %97, %96 ], [ 0x7FF8000000000000, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %100 = insertelement <4 x double> %77, double %99, i32 3
  ret <4 x double> %100
}

; Function Attrs: nounwind uwtable
define <4 x double> @_4xdoublediv(<4 x double>, <4 x double>) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  %5 = extractelement <4 x double> %0, i32 0
  %6 = extractelement <4 x double> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load double, double* %3, align 8, !tbaa !32
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 8
  %15 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %14, align 16, !tbaa !28
  %16 = icmp eq void (double, double, double*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(double %5, double %6, double* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi double [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %29 = insertelement <4 x double> undef, double %28, i32 0
  %30 = extractelement <4 x double> %0, i32 1
  %31 = extractelement <4 x double> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 8
  %37 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %36, align 16, !tbaa !28
  %38 = icmp eq void (double, double, double*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(double %30, double %31, double* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load double, double* %3, align 8, !tbaa !32
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi i8 [ %44, %48 ], [ 0, %26 ]
  %52 = phi double [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %53 = insertelement <4 x double> %29, double %52, i32 1
  %54 = extractelement <4 x double> %0, i32 2
  %55 = extractelement <4 x double> %1, i32 2
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %56 = icmp eq i8 %51, 0
  br i1 %56, label %74, label %57

; <label>:57:                                     ; preds = %50, %67
  %58 = phi i8 [ %68, %67 ], [ %51, %50 ]
  %59 = phi i64 [ %69, %67 ], [ 0, %50 ]
  %60 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %59, i32 8
  %61 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %60, align 16, !tbaa !28
  %62 = icmp eq void (double, double, double*, i8*)* %61, null
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %59
  %65 = load i8*, i8** %64, align 8, !tbaa !16
  call void %61(double %54, double %55, double* nonnull %3, i8* %65) #9
  %66 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %67

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8 [ %58, %57 ], [ %66, %63 ]
  %69 = add nuw nsw i64 %59, 1
  %70 = zext i8 %68 to i64
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %57, label %72

; <label>:72:                                     ; preds = %67
  %73 = load double, double* %3, align 8, !tbaa !32
  br label %74

; <label>:74:                                     ; preds = %72, %50
  %75 = phi i8 [ %68, %72 ], [ 0, %50 ]
  %76 = phi double [ %73, %72 ], [ 0x7FF8000000000000, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %77 = insertelement <4 x double> %53, double %76, i32 2
  %78 = extractelement <4 x double> %0, i32 3
  %79 = extractelement <4 x double> %1, i32 3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %80 = icmp eq i8 %75, 0
  br i1 %80, label %98, label %81

; <label>:81:                                     ; preds = %74, %91
  %82 = phi i8 [ %92, %91 ], [ %75, %74 ]
  %83 = phi i64 [ %93, %91 ], [ 0, %74 ]
  %84 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %83, i32 8
  %85 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %84, align 16, !tbaa !28
  %86 = icmp eq void (double, double, double*, i8*)* %85, null
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %83
  %89 = load i8*, i8** %88, align 8, !tbaa !16
  call void %85(double %78, double %79, double* nonnull %3, i8* %89) #9
  %90 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %91

; <label>:91:                                     ; preds = %87, %81
  %92 = phi i8 [ %82, %81 ], [ %90, %87 ]
  %93 = add nuw nsw i64 %83, 1
  %94 = zext i8 %92 to i64
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %81, label %96

; <label>:96:                                     ; preds = %91
  %97 = load double, double* %3, align 8, !tbaa !32
  br label %98

; <label>:98:                                     ; preds = %96, %74
  %99 = phi double [ %97, %96 ], [ 0x7FF8000000000000, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  %100 = insertelement <4 x double> %77, double %99, i32 3
  ret <4 x double> %100
}

; Function Attrs: nounwind uwtable
define <8 x float> @_8xfloatadd(<8 x float>, <8 x float>) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast float* %3 to i8*
  %5 = extractelement <8 x float> %0, i32 0
  %6 = extractelement <8 x float> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load float, float* %3, align 4, !tbaa !30
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 0
  %15 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %14, align 16, !tbaa !21
  %16 = icmp eq void (float, float, float*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(float %5, float %6, float* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi float [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %29 = insertelement <8 x float> undef, float %28, i32 0
  %30 = extractelement <8 x float> %0, i32 1
  %31 = extractelement <8 x float> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 0
  %37 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %36, align 16, !tbaa !21
  %38 = icmp eq void (float, float, float*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(float %30, float %31, float* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load float, float* %3, align 4, !tbaa !30
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi i8 [ %44, %48 ], [ 0, %26 ]
  %52 = phi float [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %53 = insertelement <8 x float> %29, float %52, i32 1
  %54 = extractelement <8 x float> %0, i32 2
  %55 = extractelement <8 x float> %1, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %56 = icmp eq i8 %51, 0
  br i1 %56, label %74, label %57

; <label>:57:                                     ; preds = %50, %67
  %58 = phi i8 [ %68, %67 ], [ %51, %50 ]
  %59 = phi i64 [ %69, %67 ], [ 0, %50 ]
  %60 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %59, i32 0
  %61 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %60, align 16, !tbaa !21
  %62 = icmp eq void (float, float, float*, i8*)* %61, null
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %59
  %65 = load i8*, i8** %64, align 8, !tbaa !16
  call void %61(float %54, float %55, float* nonnull %3, i8* %65) #9
  %66 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %67

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8 [ %58, %57 ], [ %66, %63 ]
  %69 = add nuw nsw i64 %59, 1
  %70 = zext i8 %68 to i64
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %57, label %72

; <label>:72:                                     ; preds = %67
  %73 = load float, float* %3, align 4, !tbaa !30
  br label %74

; <label>:74:                                     ; preds = %72, %50
  %75 = phi i8 [ %68, %72 ], [ 0, %50 ]
  %76 = phi float [ %73, %72 ], [ 0x7FF8000000000000, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %77 = insertelement <8 x float> %53, float %76, i32 2
  %78 = extractelement <8 x float> %0, i32 3
  %79 = extractelement <8 x float> %1, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %80 = icmp eq i8 %75, 0
  br i1 %80, label %98, label %81

; <label>:81:                                     ; preds = %74, %91
  %82 = phi i8 [ %92, %91 ], [ %75, %74 ]
  %83 = phi i64 [ %93, %91 ], [ 0, %74 ]
  %84 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %83, i32 0
  %85 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %84, align 16, !tbaa !21
  %86 = icmp eq void (float, float, float*, i8*)* %85, null
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %83
  %89 = load i8*, i8** %88, align 8, !tbaa !16
  call void %85(float %78, float %79, float* nonnull %3, i8* %89) #9
  %90 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %91

; <label>:91:                                     ; preds = %87, %81
  %92 = phi i8 [ %82, %81 ], [ %90, %87 ]
  %93 = add nuw nsw i64 %83, 1
  %94 = zext i8 %92 to i64
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %81, label %96

; <label>:96:                                     ; preds = %91
  %97 = load float, float* %3, align 4, !tbaa !30
  br label %98

; <label>:98:                                     ; preds = %96, %74
  %99 = phi i8 [ %92, %96 ], [ 0, %74 ]
  %100 = phi float [ %97, %96 ], [ 0x7FF8000000000000, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %101 = insertelement <8 x float> %77, float %100, i32 3
  %102 = extractelement <8 x float> %0, i32 4
  %103 = extractelement <8 x float> %1, i32 4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %104 = icmp eq i8 %99, 0
  br i1 %104, label %122, label %105

; <label>:105:                                    ; preds = %98, %115
  %106 = phi i8 [ %116, %115 ], [ %99, %98 ]
  %107 = phi i64 [ %117, %115 ], [ 0, %98 ]
  %108 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %107, i32 0
  %109 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %108, align 16, !tbaa !21
  %110 = icmp eq void (float, float, float*, i8*)* %109, null
  br i1 %110, label %115, label %111

; <label>:111:                                    ; preds = %105
  %112 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %107
  %113 = load i8*, i8** %112, align 8, !tbaa !16
  call void %109(float %102, float %103, float* nonnull %3, i8* %113) #9
  %114 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %115

; <label>:115:                                    ; preds = %111, %105
  %116 = phi i8 [ %106, %105 ], [ %114, %111 ]
  %117 = add nuw nsw i64 %107, 1
  %118 = zext i8 %116 to i64
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %105, label %120

; <label>:120:                                    ; preds = %115
  %121 = load float, float* %3, align 4, !tbaa !30
  br label %122

; <label>:122:                                    ; preds = %120, %98
  %123 = phi i8 [ %116, %120 ], [ 0, %98 ]
  %124 = phi float [ %121, %120 ], [ 0x7FF8000000000000, %98 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %125 = insertelement <8 x float> %101, float %124, i32 4
  %126 = extractelement <8 x float> %0, i32 5
  %127 = extractelement <8 x float> %1, i32 5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %128 = icmp eq i8 %123, 0
  br i1 %128, label %146, label %129

; <label>:129:                                    ; preds = %122, %139
  %130 = phi i8 [ %140, %139 ], [ %123, %122 ]
  %131 = phi i64 [ %141, %139 ], [ 0, %122 ]
  %132 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %131, i32 0
  %133 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %132, align 16, !tbaa !21
  %134 = icmp eq void (float, float, float*, i8*)* %133, null
  br i1 %134, label %139, label %135

; <label>:135:                                    ; preds = %129
  %136 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %131
  %137 = load i8*, i8** %136, align 8, !tbaa !16
  call void %133(float %126, float %127, float* nonnull %3, i8* %137) #9
  %138 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %139

; <label>:139:                                    ; preds = %135, %129
  %140 = phi i8 [ %130, %129 ], [ %138, %135 ]
  %141 = add nuw nsw i64 %131, 1
  %142 = zext i8 %140 to i64
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %129, label %144

; <label>:144:                                    ; preds = %139
  %145 = load float, float* %3, align 4, !tbaa !30
  br label %146

; <label>:146:                                    ; preds = %144, %122
  %147 = phi i8 [ %140, %144 ], [ 0, %122 ]
  %148 = phi float [ %145, %144 ], [ 0x7FF8000000000000, %122 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %149 = insertelement <8 x float> %125, float %148, i32 5
  %150 = extractelement <8 x float> %0, i32 6
  %151 = extractelement <8 x float> %1, i32 6
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %152 = icmp eq i8 %147, 0
  br i1 %152, label %170, label %153

; <label>:153:                                    ; preds = %146, %163
  %154 = phi i8 [ %164, %163 ], [ %147, %146 ]
  %155 = phi i64 [ %165, %163 ], [ 0, %146 ]
  %156 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %155, i32 0
  %157 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %156, align 16, !tbaa !21
  %158 = icmp eq void (float, float, float*, i8*)* %157, null
  br i1 %158, label %163, label %159

; <label>:159:                                    ; preds = %153
  %160 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %155
  %161 = load i8*, i8** %160, align 8, !tbaa !16
  call void %157(float %150, float %151, float* nonnull %3, i8* %161) #9
  %162 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %163

; <label>:163:                                    ; preds = %159, %153
  %164 = phi i8 [ %154, %153 ], [ %162, %159 ]
  %165 = add nuw nsw i64 %155, 1
  %166 = zext i8 %164 to i64
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %153, label %168

; <label>:168:                                    ; preds = %163
  %169 = load float, float* %3, align 4, !tbaa !30
  br label %170

; <label>:170:                                    ; preds = %168, %146
  %171 = phi i8 [ %164, %168 ], [ 0, %146 ]
  %172 = phi float [ %169, %168 ], [ 0x7FF8000000000000, %146 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %173 = insertelement <8 x float> %149, float %172, i32 6
  %174 = extractelement <8 x float> %0, i32 7
  %175 = extractelement <8 x float> %1, i32 7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %176 = icmp eq i8 %171, 0
  br i1 %176, label %194, label %177

; <label>:177:                                    ; preds = %170, %187
  %178 = phi i8 [ %188, %187 ], [ %171, %170 ]
  %179 = phi i64 [ %189, %187 ], [ 0, %170 ]
  %180 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %179, i32 0
  %181 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %180, align 16, !tbaa !21
  %182 = icmp eq void (float, float, float*, i8*)* %181, null
  br i1 %182, label %187, label %183

; <label>:183:                                    ; preds = %177
  %184 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %179
  %185 = load i8*, i8** %184, align 8, !tbaa !16
  call void %181(float %174, float %175, float* nonnull %3, i8* %185) #9
  %186 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %187

; <label>:187:                                    ; preds = %183, %177
  %188 = phi i8 [ %178, %177 ], [ %186, %183 ]
  %189 = add nuw nsw i64 %179, 1
  %190 = zext i8 %188 to i64
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %177, label %192

; <label>:192:                                    ; preds = %187
  %193 = load float, float* %3, align 4, !tbaa !30
  br label %194

; <label>:194:                                    ; preds = %192, %170
  %195 = phi float [ %193, %192 ], [ 0x7FF8000000000000, %170 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %196 = insertelement <8 x float> %173, float %195, i32 7
  ret <8 x float> %196
}

; Function Attrs: nounwind uwtable
define <8 x float> @_8xfloatsub(<8 x float>, <8 x float>) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast float* %3 to i8*
  %5 = extractelement <8 x float> %0, i32 0
  %6 = extractelement <8 x float> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load float, float* %3, align 4, !tbaa !30
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 1
  %15 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %14, align 8, !tbaa !22
  %16 = icmp eq void (float, float, float*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(float %5, float %6, float* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi float [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %29 = insertelement <8 x float> undef, float %28, i32 0
  %30 = extractelement <8 x float> %0, i32 1
  %31 = extractelement <8 x float> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 1
  %37 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %36, align 8, !tbaa !22
  %38 = icmp eq void (float, float, float*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(float %30, float %31, float* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load float, float* %3, align 4, !tbaa !30
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi i8 [ %44, %48 ], [ 0, %26 ]
  %52 = phi float [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %53 = insertelement <8 x float> %29, float %52, i32 1
  %54 = extractelement <8 x float> %0, i32 2
  %55 = extractelement <8 x float> %1, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %56 = icmp eq i8 %51, 0
  br i1 %56, label %74, label %57

; <label>:57:                                     ; preds = %50, %67
  %58 = phi i8 [ %68, %67 ], [ %51, %50 ]
  %59 = phi i64 [ %69, %67 ], [ 0, %50 ]
  %60 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %59, i32 1
  %61 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %60, align 8, !tbaa !22
  %62 = icmp eq void (float, float, float*, i8*)* %61, null
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %59
  %65 = load i8*, i8** %64, align 8, !tbaa !16
  call void %61(float %54, float %55, float* nonnull %3, i8* %65) #9
  %66 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %67

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8 [ %58, %57 ], [ %66, %63 ]
  %69 = add nuw nsw i64 %59, 1
  %70 = zext i8 %68 to i64
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %57, label %72

; <label>:72:                                     ; preds = %67
  %73 = load float, float* %3, align 4, !tbaa !30
  br label %74

; <label>:74:                                     ; preds = %72, %50
  %75 = phi i8 [ %68, %72 ], [ 0, %50 ]
  %76 = phi float [ %73, %72 ], [ 0x7FF8000000000000, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %77 = insertelement <8 x float> %53, float %76, i32 2
  %78 = extractelement <8 x float> %0, i32 3
  %79 = extractelement <8 x float> %1, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %80 = icmp eq i8 %75, 0
  br i1 %80, label %98, label %81

; <label>:81:                                     ; preds = %74, %91
  %82 = phi i8 [ %92, %91 ], [ %75, %74 ]
  %83 = phi i64 [ %93, %91 ], [ 0, %74 ]
  %84 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %83, i32 1
  %85 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %84, align 8, !tbaa !22
  %86 = icmp eq void (float, float, float*, i8*)* %85, null
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %83
  %89 = load i8*, i8** %88, align 8, !tbaa !16
  call void %85(float %78, float %79, float* nonnull %3, i8* %89) #9
  %90 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %91

; <label>:91:                                     ; preds = %87, %81
  %92 = phi i8 [ %82, %81 ], [ %90, %87 ]
  %93 = add nuw nsw i64 %83, 1
  %94 = zext i8 %92 to i64
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %81, label %96

; <label>:96:                                     ; preds = %91
  %97 = load float, float* %3, align 4, !tbaa !30
  br label %98

; <label>:98:                                     ; preds = %96, %74
  %99 = phi i8 [ %92, %96 ], [ 0, %74 ]
  %100 = phi float [ %97, %96 ], [ 0x7FF8000000000000, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %101 = insertelement <8 x float> %77, float %100, i32 3
  %102 = extractelement <8 x float> %0, i32 4
  %103 = extractelement <8 x float> %1, i32 4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %104 = icmp eq i8 %99, 0
  br i1 %104, label %122, label %105

; <label>:105:                                    ; preds = %98, %115
  %106 = phi i8 [ %116, %115 ], [ %99, %98 ]
  %107 = phi i64 [ %117, %115 ], [ 0, %98 ]
  %108 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %107, i32 1
  %109 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %108, align 8, !tbaa !22
  %110 = icmp eq void (float, float, float*, i8*)* %109, null
  br i1 %110, label %115, label %111

; <label>:111:                                    ; preds = %105
  %112 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %107
  %113 = load i8*, i8** %112, align 8, !tbaa !16
  call void %109(float %102, float %103, float* nonnull %3, i8* %113) #9
  %114 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %115

; <label>:115:                                    ; preds = %111, %105
  %116 = phi i8 [ %106, %105 ], [ %114, %111 ]
  %117 = add nuw nsw i64 %107, 1
  %118 = zext i8 %116 to i64
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %105, label %120

; <label>:120:                                    ; preds = %115
  %121 = load float, float* %3, align 4, !tbaa !30
  br label %122

; <label>:122:                                    ; preds = %120, %98
  %123 = phi i8 [ %116, %120 ], [ 0, %98 ]
  %124 = phi float [ %121, %120 ], [ 0x7FF8000000000000, %98 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %125 = insertelement <8 x float> %101, float %124, i32 4
  %126 = extractelement <8 x float> %0, i32 5
  %127 = extractelement <8 x float> %1, i32 5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %128 = icmp eq i8 %123, 0
  br i1 %128, label %146, label %129

; <label>:129:                                    ; preds = %122, %139
  %130 = phi i8 [ %140, %139 ], [ %123, %122 ]
  %131 = phi i64 [ %141, %139 ], [ 0, %122 ]
  %132 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %131, i32 1
  %133 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %132, align 8, !tbaa !22
  %134 = icmp eq void (float, float, float*, i8*)* %133, null
  br i1 %134, label %139, label %135

; <label>:135:                                    ; preds = %129
  %136 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %131
  %137 = load i8*, i8** %136, align 8, !tbaa !16
  call void %133(float %126, float %127, float* nonnull %3, i8* %137) #9
  %138 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %139

; <label>:139:                                    ; preds = %135, %129
  %140 = phi i8 [ %130, %129 ], [ %138, %135 ]
  %141 = add nuw nsw i64 %131, 1
  %142 = zext i8 %140 to i64
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %129, label %144

; <label>:144:                                    ; preds = %139
  %145 = load float, float* %3, align 4, !tbaa !30
  br label %146

; <label>:146:                                    ; preds = %144, %122
  %147 = phi i8 [ %140, %144 ], [ 0, %122 ]
  %148 = phi float [ %145, %144 ], [ 0x7FF8000000000000, %122 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %149 = insertelement <8 x float> %125, float %148, i32 5
  %150 = extractelement <8 x float> %0, i32 6
  %151 = extractelement <8 x float> %1, i32 6
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %152 = icmp eq i8 %147, 0
  br i1 %152, label %170, label %153

; <label>:153:                                    ; preds = %146, %163
  %154 = phi i8 [ %164, %163 ], [ %147, %146 ]
  %155 = phi i64 [ %165, %163 ], [ 0, %146 ]
  %156 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %155, i32 1
  %157 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %156, align 8, !tbaa !22
  %158 = icmp eq void (float, float, float*, i8*)* %157, null
  br i1 %158, label %163, label %159

; <label>:159:                                    ; preds = %153
  %160 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %155
  %161 = load i8*, i8** %160, align 8, !tbaa !16
  call void %157(float %150, float %151, float* nonnull %3, i8* %161) #9
  %162 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %163

; <label>:163:                                    ; preds = %159, %153
  %164 = phi i8 [ %154, %153 ], [ %162, %159 ]
  %165 = add nuw nsw i64 %155, 1
  %166 = zext i8 %164 to i64
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %153, label %168

; <label>:168:                                    ; preds = %163
  %169 = load float, float* %3, align 4, !tbaa !30
  br label %170

; <label>:170:                                    ; preds = %168, %146
  %171 = phi i8 [ %164, %168 ], [ 0, %146 ]
  %172 = phi float [ %169, %168 ], [ 0x7FF8000000000000, %146 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %173 = insertelement <8 x float> %149, float %172, i32 6
  %174 = extractelement <8 x float> %0, i32 7
  %175 = extractelement <8 x float> %1, i32 7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %176 = icmp eq i8 %171, 0
  br i1 %176, label %194, label %177

; <label>:177:                                    ; preds = %170, %187
  %178 = phi i8 [ %188, %187 ], [ %171, %170 ]
  %179 = phi i64 [ %189, %187 ], [ 0, %170 ]
  %180 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %179, i32 1
  %181 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %180, align 8, !tbaa !22
  %182 = icmp eq void (float, float, float*, i8*)* %181, null
  br i1 %182, label %187, label %183

; <label>:183:                                    ; preds = %177
  %184 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %179
  %185 = load i8*, i8** %184, align 8, !tbaa !16
  call void %181(float %174, float %175, float* nonnull %3, i8* %185) #9
  %186 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %187

; <label>:187:                                    ; preds = %183, %177
  %188 = phi i8 [ %178, %177 ], [ %186, %183 ]
  %189 = add nuw nsw i64 %179, 1
  %190 = zext i8 %188 to i64
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %177, label %192

; <label>:192:                                    ; preds = %187
  %193 = load float, float* %3, align 4, !tbaa !30
  br label %194

; <label>:194:                                    ; preds = %192, %170
  %195 = phi float [ %193, %192 ], [ 0x7FF8000000000000, %170 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %196 = insertelement <8 x float> %173, float %195, i32 7
  ret <8 x float> %196
}

; Function Attrs: nounwind uwtable
define <8 x float> @_8xfloatmul(<8 x float>, <8 x float>) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast float* %3 to i8*
  %5 = extractelement <8 x float> %0, i32 0
  %6 = extractelement <8 x float> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load float, float* %3, align 4, !tbaa !30
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 2
  %15 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %14, align 16, !tbaa !23
  %16 = icmp eq void (float, float, float*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(float %5, float %6, float* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi float [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %29 = insertelement <8 x float> undef, float %28, i32 0
  %30 = extractelement <8 x float> %0, i32 1
  %31 = extractelement <8 x float> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 2
  %37 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %36, align 16, !tbaa !23
  %38 = icmp eq void (float, float, float*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(float %30, float %31, float* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load float, float* %3, align 4, !tbaa !30
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi i8 [ %44, %48 ], [ 0, %26 ]
  %52 = phi float [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %53 = insertelement <8 x float> %29, float %52, i32 1
  %54 = extractelement <8 x float> %0, i32 2
  %55 = extractelement <8 x float> %1, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %56 = icmp eq i8 %51, 0
  br i1 %56, label %74, label %57

; <label>:57:                                     ; preds = %50, %67
  %58 = phi i8 [ %68, %67 ], [ %51, %50 ]
  %59 = phi i64 [ %69, %67 ], [ 0, %50 ]
  %60 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %59, i32 2
  %61 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %60, align 16, !tbaa !23
  %62 = icmp eq void (float, float, float*, i8*)* %61, null
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %59
  %65 = load i8*, i8** %64, align 8, !tbaa !16
  call void %61(float %54, float %55, float* nonnull %3, i8* %65) #9
  %66 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %67

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8 [ %58, %57 ], [ %66, %63 ]
  %69 = add nuw nsw i64 %59, 1
  %70 = zext i8 %68 to i64
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %57, label %72

; <label>:72:                                     ; preds = %67
  %73 = load float, float* %3, align 4, !tbaa !30
  br label %74

; <label>:74:                                     ; preds = %72, %50
  %75 = phi i8 [ %68, %72 ], [ 0, %50 ]
  %76 = phi float [ %73, %72 ], [ 0x7FF8000000000000, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %77 = insertelement <8 x float> %53, float %76, i32 2
  %78 = extractelement <8 x float> %0, i32 3
  %79 = extractelement <8 x float> %1, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %80 = icmp eq i8 %75, 0
  br i1 %80, label %98, label %81

; <label>:81:                                     ; preds = %74, %91
  %82 = phi i8 [ %92, %91 ], [ %75, %74 ]
  %83 = phi i64 [ %93, %91 ], [ 0, %74 ]
  %84 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %83, i32 2
  %85 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %84, align 16, !tbaa !23
  %86 = icmp eq void (float, float, float*, i8*)* %85, null
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %83
  %89 = load i8*, i8** %88, align 8, !tbaa !16
  call void %85(float %78, float %79, float* nonnull %3, i8* %89) #9
  %90 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %91

; <label>:91:                                     ; preds = %87, %81
  %92 = phi i8 [ %82, %81 ], [ %90, %87 ]
  %93 = add nuw nsw i64 %83, 1
  %94 = zext i8 %92 to i64
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %81, label %96

; <label>:96:                                     ; preds = %91
  %97 = load float, float* %3, align 4, !tbaa !30
  br label %98

; <label>:98:                                     ; preds = %96, %74
  %99 = phi i8 [ %92, %96 ], [ 0, %74 ]
  %100 = phi float [ %97, %96 ], [ 0x7FF8000000000000, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %101 = insertelement <8 x float> %77, float %100, i32 3
  %102 = extractelement <8 x float> %0, i32 4
  %103 = extractelement <8 x float> %1, i32 4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %104 = icmp eq i8 %99, 0
  br i1 %104, label %122, label %105

; <label>:105:                                    ; preds = %98, %115
  %106 = phi i8 [ %116, %115 ], [ %99, %98 ]
  %107 = phi i64 [ %117, %115 ], [ 0, %98 ]
  %108 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %107, i32 2
  %109 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %108, align 16, !tbaa !23
  %110 = icmp eq void (float, float, float*, i8*)* %109, null
  br i1 %110, label %115, label %111

; <label>:111:                                    ; preds = %105
  %112 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %107
  %113 = load i8*, i8** %112, align 8, !tbaa !16
  call void %109(float %102, float %103, float* nonnull %3, i8* %113) #9
  %114 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %115

; <label>:115:                                    ; preds = %111, %105
  %116 = phi i8 [ %106, %105 ], [ %114, %111 ]
  %117 = add nuw nsw i64 %107, 1
  %118 = zext i8 %116 to i64
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %105, label %120

; <label>:120:                                    ; preds = %115
  %121 = load float, float* %3, align 4, !tbaa !30
  br label %122

; <label>:122:                                    ; preds = %120, %98
  %123 = phi i8 [ %116, %120 ], [ 0, %98 ]
  %124 = phi float [ %121, %120 ], [ 0x7FF8000000000000, %98 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %125 = insertelement <8 x float> %101, float %124, i32 4
  %126 = extractelement <8 x float> %0, i32 5
  %127 = extractelement <8 x float> %1, i32 5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %128 = icmp eq i8 %123, 0
  br i1 %128, label %146, label %129

; <label>:129:                                    ; preds = %122, %139
  %130 = phi i8 [ %140, %139 ], [ %123, %122 ]
  %131 = phi i64 [ %141, %139 ], [ 0, %122 ]
  %132 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %131, i32 2
  %133 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %132, align 16, !tbaa !23
  %134 = icmp eq void (float, float, float*, i8*)* %133, null
  br i1 %134, label %139, label %135

; <label>:135:                                    ; preds = %129
  %136 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %131
  %137 = load i8*, i8** %136, align 8, !tbaa !16
  call void %133(float %126, float %127, float* nonnull %3, i8* %137) #9
  %138 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %139

; <label>:139:                                    ; preds = %135, %129
  %140 = phi i8 [ %130, %129 ], [ %138, %135 ]
  %141 = add nuw nsw i64 %131, 1
  %142 = zext i8 %140 to i64
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %129, label %144

; <label>:144:                                    ; preds = %139
  %145 = load float, float* %3, align 4, !tbaa !30
  br label %146

; <label>:146:                                    ; preds = %144, %122
  %147 = phi i8 [ %140, %144 ], [ 0, %122 ]
  %148 = phi float [ %145, %144 ], [ 0x7FF8000000000000, %122 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %149 = insertelement <8 x float> %125, float %148, i32 5
  %150 = extractelement <8 x float> %0, i32 6
  %151 = extractelement <8 x float> %1, i32 6
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %152 = icmp eq i8 %147, 0
  br i1 %152, label %170, label %153

; <label>:153:                                    ; preds = %146, %163
  %154 = phi i8 [ %164, %163 ], [ %147, %146 ]
  %155 = phi i64 [ %165, %163 ], [ 0, %146 ]
  %156 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %155, i32 2
  %157 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %156, align 16, !tbaa !23
  %158 = icmp eq void (float, float, float*, i8*)* %157, null
  br i1 %158, label %163, label %159

; <label>:159:                                    ; preds = %153
  %160 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %155
  %161 = load i8*, i8** %160, align 8, !tbaa !16
  call void %157(float %150, float %151, float* nonnull %3, i8* %161) #9
  %162 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %163

; <label>:163:                                    ; preds = %159, %153
  %164 = phi i8 [ %154, %153 ], [ %162, %159 ]
  %165 = add nuw nsw i64 %155, 1
  %166 = zext i8 %164 to i64
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %153, label %168

; <label>:168:                                    ; preds = %163
  %169 = load float, float* %3, align 4, !tbaa !30
  br label %170

; <label>:170:                                    ; preds = %168, %146
  %171 = phi i8 [ %164, %168 ], [ 0, %146 ]
  %172 = phi float [ %169, %168 ], [ 0x7FF8000000000000, %146 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %173 = insertelement <8 x float> %149, float %172, i32 6
  %174 = extractelement <8 x float> %0, i32 7
  %175 = extractelement <8 x float> %1, i32 7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %176 = icmp eq i8 %171, 0
  br i1 %176, label %194, label %177

; <label>:177:                                    ; preds = %170, %187
  %178 = phi i8 [ %188, %187 ], [ %171, %170 ]
  %179 = phi i64 [ %189, %187 ], [ 0, %170 ]
  %180 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %179, i32 2
  %181 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %180, align 16, !tbaa !23
  %182 = icmp eq void (float, float, float*, i8*)* %181, null
  br i1 %182, label %187, label %183

; <label>:183:                                    ; preds = %177
  %184 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %179
  %185 = load i8*, i8** %184, align 8, !tbaa !16
  call void %181(float %174, float %175, float* nonnull %3, i8* %185) #9
  %186 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %187

; <label>:187:                                    ; preds = %183, %177
  %188 = phi i8 [ %178, %177 ], [ %186, %183 ]
  %189 = add nuw nsw i64 %179, 1
  %190 = zext i8 %188 to i64
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %177, label %192

; <label>:192:                                    ; preds = %187
  %193 = load float, float* %3, align 4, !tbaa !30
  br label %194

; <label>:194:                                    ; preds = %192, %170
  %195 = phi float [ %193, %192 ], [ 0x7FF8000000000000, %170 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %196 = insertelement <8 x float> %173, float %195, i32 7
  ret <8 x float> %196
}

; Function Attrs: nounwind uwtable
define <8 x float> @_8xfloatdiv(<8 x float>, <8 x float>) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = bitcast float* %3 to i8*
  %5 = extractelement <8 x float> %0, i32 0
  %6 = extractelement <8 x float> %1, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %7 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %11

; <label>:9:                                      ; preds = %21
  %10 = load float, float* %3, align 4, !tbaa !30
  br label %26

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8 [ %22, %21 ], [ %7, %2 ]
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %13, i32 3
  %15 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %14, align 8, !tbaa !24
  %16 = icmp eq void (float, float, float*, i8*)* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %13
  %19 = load i8*, i8** %18, align 8, !tbaa !16
  call void %15(float %5, float %6, float* nonnull %3, i8* %19) #9
  %20 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8 [ %12, %11 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = zext i8 %22 to i64
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %2, %9
  %27 = phi i8 [ %22, %9 ], [ 0, %2 ]
  %28 = phi float [ %10, %9 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %29 = insertelement <8 x float> undef, float %28, i32 0
  %30 = extractelement <8 x float> %0, i32 1
  %31 = extractelement <8 x float> %1, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %32 = icmp eq i8 %27, 0
  br i1 %32, label %50, label %33

; <label>:33:                                     ; preds = %26, %43
  %34 = phi i8 [ %44, %43 ], [ %27, %26 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %26 ]
  %36 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %35, i32 3
  %37 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %36, align 8, !tbaa !24
  %38 = icmp eq void (float, float, float*, i8*)* %37, null
  br i1 %38, label %43, label %39

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %35
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  call void %37(float %30, float %31, float* nonnull %3, i8* %41) #9
  %42 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %43

; <label>:43:                                     ; preds = %39, %33
  %44 = phi i8 [ %34, %33 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %35, 1
  %46 = zext i8 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %33, label %48

; <label>:48:                                     ; preds = %43
  %49 = load float, float* %3, align 4, !tbaa !30
  br label %50

; <label>:50:                                     ; preds = %48, %26
  %51 = phi i8 [ %44, %48 ], [ 0, %26 ]
  %52 = phi float [ %49, %48 ], [ 0x7FF8000000000000, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %53 = insertelement <8 x float> %29, float %52, i32 1
  %54 = extractelement <8 x float> %0, i32 2
  %55 = extractelement <8 x float> %1, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %56 = icmp eq i8 %51, 0
  br i1 %56, label %74, label %57

; <label>:57:                                     ; preds = %50, %67
  %58 = phi i8 [ %68, %67 ], [ %51, %50 ]
  %59 = phi i64 [ %69, %67 ], [ 0, %50 ]
  %60 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %59, i32 3
  %61 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %60, align 8, !tbaa !24
  %62 = icmp eq void (float, float, float*, i8*)* %61, null
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %59
  %65 = load i8*, i8** %64, align 8, !tbaa !16
  call void %61(float %54, float %55, float* nonnull %3, i8* %65) #9
  %66 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %67

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8 [ %58, %57 ], [ %66, %63 ]
  %69 = add nuw nsw i64 %59, 1
  %70 = zext i8 %68 to i64
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %57, label %72

; <label>:72:                                     ; preds = %67
  %73 = load float, float* %3, align 4, !tbaa !30
  br label %74

; <label>:74:                                     ; preds = %72, %50
  %75 = phi i8 [ %68, %72 ], [ 0, %50 ]
  %76 = phi float [ %73, %72 ], [ 0x7FF8000000000000, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %77 = insertelement <8 x float> %53, float %76, i32 2
  %78 = extractelement <8 x float> %0, i32 3
  %79 = extractelement <8 x float> %1, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %80 = icmp eq i8 %75, 0
  br i1 %80, label %98, label %81

; <label>:81:                                     ; preds = %74, %91
  %82 = phi i8 [ %92, %91 ], [ %75, %74 ]
  %83 = phi i64 [ %93, %91 ], [ 0, %74 ]
  %84 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %83, i32 3
  %85 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %84, align 8, !tbaa !24
  %86 = icmp eq void (float, float, float*, i8*)* %85, null
  br i1 %86, label %91, label %87

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %83
  %89 = load i8*, i8** %88, align 8, !tbaa !16
  call void %85(float %78, float %79, float* nonnull %3, i8* %89) #9
  %90 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %91

; <label>:91:                                     ; preds = %87, %81
  %92 = phi i8 [ %82, %81 ], [ %90, %87 ]
  %93 = add nuw nsw i64 %83, 1
  %94 = zext i8 %92 to i64
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %81, label %96

; <label>:96:                                     ; preds = %91
  %97 = load float, float* %3, align 4, !tbaa !30
  br label %98

; <label>:98:                                     ; preds = %96, %74
  %99 = phi i8 [ %92, %96 ], [ 0, %74 ]
  %100 = phi float [ %97, %96 ], [ 0x7FF8000000000000, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %101 = insertelement <8 x float> %77, float %100, i32 3
  %102 = extractelement <8 x float> %0, i32 4
  %103 = extractelement <8 x float> %1, i32 4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %104 = icmp eq i8 %99, 0
  br i1 %104, label %122, label %105

; <label>:105:                                    ; preds = %98, %115
  %106 = phi i8 [ %116, %115 ], [ %99, %98 ]
  %107 = phi i64 [ %117, %115 ], [ 0, %98 ]
  %108 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %107, i32 3
  %109 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %108, align 8, !tbaa !24
  %110 = icmp eq void (float, float, float*, i8*)* %109, null
  br i1 %110, label %115, label %111

; <label>:111:                                    ; preds = %105
  %112 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %107
  %113 = load i8*, i8** %112, align 8, !tbaa !16
  call void %109(float %102, float %103, float* nonnull %3, i8* %113) #9
  %114 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %115

; <label>:115:                                    ; preds = %111, %105
  %116 = phi i8 [ %106, %105 ], [ %114, %111 ]
  %117 = add nuw nsw i64 %107, 1
  %118 = zext i8 %116 to i64
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %105, label %120

; <label>:120:                                    ; preds = %115
  %121 = load float, float* %3, align 4, !tbaa !30
  br label %122

; <label>:122:                                    ; preds = %120, %98
  %123 = phi i8 [ %116, %120 ], [ 0, %98 ]
  %124 = phi float [ %121, %120 ], [ 0x7FF8000000000000, %98 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %125 = insertelement <8 x float> %101, float %124, i32 4
  %126 = extractelement <8 x float> %0, i32 5
  %127 = extractelement <8 x float> %1, i32 5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %128 = icmp eq i8 %123, 0
  br i1 %128, label %146, label %129

; <label>:129:                                    ; preds = %122, %139
  %130 = phi i8 [ %140, %139 ], [ %123, %122 ]
  %131 = phi i64 [ %141, %139 ], [ 0, %122 ]
  %132 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %131, i32 3
  %133 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %132, align 8, !tbaa !24
  %134 = icmp eq void (float, float, float*, i8*)* %133, null
  br i1 %134, label %139, label %135

; <label>:135:                                    ; preds = %129
  %136 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %131
  %137 = load i8*, i8** %136, align 8, !tbaa !16
  call void %133(float %126, float %127, float* nonnull %3, i8* %137) #9
  %138 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %139

; <label>:139:                                    ; preds = %135, %129
  %140 = phi i8 [ %130, %129 ], [ %138, %135 ]
  %141 = add nuw nsw i64 %131, 1
  %142 = zext i8 %140 to i64
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %129, label %144

; <label>:144:                                    ; preds = %139
  %145 = load float, float* %3, align 4, !tbaa !30
  br label %146

; <label>:146:                                    ; preds = %144, %122
  %147 = phi i8 [ %140, %144 ], [ 0, %122 ]
  %148 = phi float [ %145, %144 ], [ 0x7FF8000000000000, %122 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %149 = insertelement <8 x float> %125, float %148, i32 5
  %150 = extractelement <8 x float> %0, i32 6
  %151 = extractelement <8 x float> %1, i32 6
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %152 = icmp eq i8 %147, 0
  br i1 %152, label %170, label %153

; <label>:153:                                    ; preds = %146, %163
  %154 = phi i8 [ %164, %163 ], [ %147, %146 ]
  %155 = phi i64 [ %165, %163 ], [ 0, %146 ]
  %156 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %155, i32 3
  %157 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %156, align 8, !tbaa !24
  %158 = icmp eq void (float, float, float*, i8*)* %157, null
  br i1 %158, label %163, label %159

; <label>:159:                                    ; preds = %153
  %160 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %155
  %161 = load i8*, i8** %160, align 8, !tbaa !16
  call void %157(float %150, float %151, float* nonnull %3, i8* %161) #9
  %162 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %163

; <label>:163:                                    ; preds = %159, %153
  %164 = phi i8 [ %154, %153 ], [ %162, %159 ]
  %165 = add nuw nsw i64 %155, 1
  %166 = zext i8 %164 to i64
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %153, label %168

; <label>:168:                                    ; preds = %163
  %169 = load float, float* %3, align 4, !tbaa !30
  br label %170

; <label>:170:                                    ; preds = %168, %146
  %171 = phi i8 [ %164, %168 ], [ 0, %146 ]
  %172 = phi float [ %169, %168 ], [ 0x7FF8000000000000, %146 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %173 = insertelement <8 x float> %149, float %172, i32 6
  %174 = extractelement <8 x float> %0, i32 7
  %175 = extractelement <8 x float> %1, i32 7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %176 = icmp eq i8 %171, 0
  br i1 %176, label %194, label %177

; <label>:177:                                    ; preds = %170, %187
  %178 = phi i8 [ %188, %187 ], [ %171, %170 ]
  %179 = phi i64 [ %189, %187 ], [ 0, %170 ]
  %180 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %179, i32 3
  %181 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %180, align 8, !tbaa !24
  %182 = icmp eq void (float, float, float*, i8*)* %181, null
  br i1 %182, label %187, label %183

; <label>:183:                                    ; preds = %177
  %184 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %179
  %185 = load i8*, i8** %184, align 8, !tbaa !16
  call void %181(float %174, float %175, float* nonnull %3, i8* %185) #9
  %186 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %187

; <label>:187:                                    ; preds = %183, %177
  %188 = phi i8 [ %178, %177 ], [ %186, %183 ]
  %189 = add nuw nsw i64 %179, 1
  %190 = zext i8 %188 to i64
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %177, label %192

; <label>:192:                                    ; preds = %187
  %193 = load float, float* %3, align 4, !tbaa !30
  br label %194

; <label>:194:                                    ; preds = %192, %170
  %195 = phi float [ %193, %192 ], [ 0x7FF8000000000000, %170 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  %196 = insertelement <8 x float> %173, float %195, i32 7
  ret <8 x float> %196
}

; Function Attrs: nounwind uwtable
define <8 x double> @_8xdoubleadd(<8 x double>* byval nocapture readonly align 64, <8 x double>* byval nocapture readonly align 64) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = load <8 x double>, <8 x double>* %0, align 64, !tbaa !17
  %5 = load <8 x double>, <8 x double>* %1, align 64, !tbaa !17
  %6 = bitcast double* %3 to i8*
  %7 = extractelement <8 x double> %4, i32 0
  %8 = extractelement <8 x double> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load double, double* %3, align 8, !tbaa !32
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 5
  %17 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %16, align 8, !tbaa !25
  %18 = icmp eq void (double, double, double*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(double %7, double %8, double* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi double [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %31 = insertelement <8 x double> undef, double %30, i32 0
  %32 = extractelement <8 x double> %4, i32 1
  %33 = extractelement <8 x double> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 5
  %39 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %38, align 8, !tbaa !25
  %40 = icmp eq void (double, double, double*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(double %32, double %33, double* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load double, double* %3, align 8, !tbaa !32
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi i8 [ %46, %50 ], [ 0, %28 ]
  %54 = phi double [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %55 = insertelement <8 x double> %31, double %54, i32 1
  %56 = extractelement <8 x double> %4, i32 2
  %57 = extractelement <8 x double> %5, i32 2
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %58 = icmp eq i8 %53, 0
  br i1 %58, label %76, label %59

; <label>:59:                                     ; preds = %52, %69
  %60 = phi i8 [ %70, %69 ], [ %53, %52 ]
  %61 = phi i64 [ %71, %69 ], [ 0, %52 ]
  %62 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %61, i32 5
  %63 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %62, align 8, !tbaa !25
  %64 = icmp eq void (double, double, double*, i8*)* %63, null
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %61
  %67 = load i8*, i8** %66, align 8, !tbaa !16
  call void %63(double %56, double %57, double* nonnull %3, i8* %67) #9
  %68 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %69

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8 [ %60, %59 ], [ %68, %65 ]
  %71 = add nuw nsw i64 %61, 1
  %72 = zext i8 %70 to i64
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %59, label %74

; <label>:74:                                     ; preds = %69
  %75 = load double, double* %3, align 8, !tbaa !32
  br label %76

; <label>:76:                                     ; preds = %74, %52
  %77 = phi i8 [ %70, %74 ], [ 0, %52 ]
  %78 = phi double [ %75, %74 ], [ 0x7FF8000000000000, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %79 = insertelement <8 x double> %55, double %78, i32 2
  %80 = extractelement <8 x double> %4, i32 3
  %81 = extractelement <8 x double> %5, i32 3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %82 = icmp eq i8 %77, 0
  br i1 %82, label %100, label %83

; <label>:83:                                     ; preds = %76, %93
  %84 = phi i8 [ %94, %93 ], [ %77, %76 ]
  %85 = phi i64 [ %95, %93 ], [ 0, %76 ]
  %86 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %85, i32 5
  %87 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %86, align 8, !tbaa !25
  %88 = icmp eq void (double, double, double*, i8*)* %87, null
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %85
  %91 = load i8*, i8** %90, align 8, !tbaa !16
  call void %87(double %80, double %81, double* nonnull %3, i8* %91) #9
  %92 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %93

; <label>:93:                                     ; preds = %89, %83
  %94 = phi i8 [ %84, %83 ], [ %92, %89 ]
  %95 = add nuw nsw i64 %85, 1
  %96 = zext i8 %94 to i64
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %83, label %98

; <label>:98:                                     ; preds = %93
  %99 = load double, double* %3, align 8, !tbaa !32
  br label %100

; <label>:100:                                    ; preds = %98, %76
  %101 = phi i8 [ %94, %98 ], [ 0, %76 ]
  %102 = phi double [ %99, %98 ], [ 0x7FF8000000000000, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %103 = insertelement <8 x double> %79, double %102, i32 3
  %104 = extractelement <8 x double> %4, i32 4
  %105 = extractelement <8 x double> %5, i32 4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %106 = icmp eq i8 %101, 0
  br i1 %106, label %124, label %107

; <label>:107:                                    ; preds = %100, %117
  %108 = phi i8 [ %118, %117 ], [ %101, %100 ]
  %109 = phi i64 [ %119, %117 ], [ 0, %100 ]
  %110 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %109, i32 5
  %111 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %110, align 8, !tbaa !25
  %112 = icmp eq void (double, double, double*, i8*)* %111, null
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %109
  %115 = load i8*, i8** %114, align 8, !tbaa !16
  call void %111(double %104, double %105, double* nonnull %3, i8* %115) #9
  %116 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %117

; <label>:117:                                    ; preds = %113, %107
  %118 = phi i8 [ %108, %107 ], [ %116, %113 ]
  %119 = add nuw nsw i64 %109, 1
  %120 = zext i8 %118 to i64
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %107, label %122

; <label>:122:                                    ; preds = %117
  %123 = load double, double* %3, align 8, !tbaa !32
  br label %124

; <label>:124:                                    ; preds = %122, %100
  %125 = phi i8 [ %118, %122 ], [ 0, %100 ]
  %126 = phi double [ %123, %122 ], [ 0x7FF8000000000000, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %127 = insertelement <8 x double> %103, double %126, i32 4
  %128 = extractelement <8 x double> %4, i32 5
  %129 = extractelement <8 x double> %5, i32 5
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %130 = icmp eq i8 %125, 0
  br i1 %130, label %148, label %131

; <label>:131:                                    ; preds = %124, %141
  %132 = phi i8 [ %142, %141 ], [ %125, %124 ]
  %133 = phi i64 [ %143, %141 ], [ 0, %124 ]
  %134 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %133, i32 5
  %135 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %134, align 8, !tbaa !25
  %136 = icmp eq void (double, double, double*, i8*)* %135, null
  br i1 %136, label %141, label %137

; <label>:137:                                    ; preds = %131
  %138 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %133
  %139 = load i8*, i8** %138, align 8, !tbaa !16
  call void %135(double %128, double %129, double* nonnull %3, i8* %139) #9
  %140 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %141

; <label>:141:                                    ; preds = %137, %131
  %142 = phi i8 [ %132, %131 ], [ %140, %137 ]
  %143 = add nuw nsw i64 %133, 1
  %144 = zext i8 %142 to i64
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %131, label %146

; <label>:146:                                    ; preds = %141
  %147 = load double, double* %3, align 8, !tbaa !32
  br label %148

; <label>:148:                                    ; preds = %146, %124
  %149 = phi i8 [ %142, %146 ], [ 0, %124 ]
  %150 = phi double [ %147, %146 ], [ 0x7FF8000000000000, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %151 = insertelement <8 x double> %127, double %150, i32 5
  %152 = extractelement <8 x double> %4, i32 6
  %153 = extractelement <8 x double> %5, i32 6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %154 = icmp eq i8 %149, 0
  br i1 %154, label %172, label %155

; <label>:155:                                    ; preds = %148, %165
  %156 = phi i8 [ %166, %165 ], [ %149, %148 ]
  %157 = phi i64 [ %167, %165 ], [ 0, %148 ]
  %158 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %157, i32 5
  %159 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %158, align 8, !tbaa !25
  %160 = icmp eq void (double, double, double*, i8*)* %159, null
  br i1 %160, label %165, label %161

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %157
  %163 = load i8*, i8** %162, align 8, !tbaa !16
  call void %159(double %152, double %153, double* nonnull %3, i8* %163) #9
  %164 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %165

; <label>:165:                                    ; preds = %161, %155
  %166 = phi i8 [ %156, %155 ], [ %164, %161 ]
  %167 = add nuw nsw i64 %157, 1
  %168 = zext i8 %166 to i64
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %155, label %170

; <label>:170:                                    ; preds = %165
  %171 = load double, double* %3, align 8, !tbaa !32
  br label %172

; <label>:172:                                    ; preds = %170, %148
  %173 = phi i8 [ %166, %170 ], [ 0, %148 ]
  %174 = phi double [ %171, %170 ], [ 0x7FF8000000000000, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %175 = insertelement <8 x double> %151, double %174, i32 6
  %176 = extractelement <8 x double> %4, i32 7
  %177 = extractelement <8 x double> %5, i32 7
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %178 = icmp eq i8 %173, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %172, %189
  %180 = phi i8 [ %190, %189 ], [ %173, %172 ]
  %181 = phi i64 [ %191, %189 ], [ 0, %172 ]
  %182 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %181, i32 5
  %183 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %182, align 8, !tbaa !25
  %184 = icmp eq void (double, double, double*, i8*)* %183, null
  br i1 %184, label %189, label %185

; <label>:185:                                    ; preds = %179
  %186 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %181
  %187 = load i8*, i8** %186, align 8, !tbaa !16
  call void %183(double %176, double %177, double* nonnull %3, i8* %187) #9
  %188 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %189

; <label>:189:                                    ; preds = %185, %179
  %190 = phi i8 [ %180, %179 ], [ %188, %185 ]
  %191 = add nuw nsw i64 %181, 1
  %192 = zext i8 %190 to i64
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %179, label %194

; <label>:194:                                    ; preds = %189
  %195 = load double, double* %3, align 8, !tbaa !32
  br label %196

; <label>:196:                                    ; preds = %194, %172
  %197 = phi double [ %195, %194 ], [ 0x7FF8000000000000, %172 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %198 = insertelement <8 x double> %175, double %197, i32 7
  ret <8 x double> %198
}

; Function Attrs: nounwind uwtable
define <8 x double> @_8xdoublesub(<8 x double>* byval nocapture readonly align 64, <8 x double>* byval nocapture readonly align 64) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = load <8 x double>, <8 x double>* %0, align 64, !tbaa !17
  %5 = load <8 x double>, <8 x double>* %1, align 64, !tbaa !17
  %6 = bitcast double* %3 to i8*
  %7 = extractelement <8 x double> %4, i32 0
  %8 = extractelement <8 x double> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load double, double* %3, align 8, !tbaa !32
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 6
  %17 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %16, align 16, !tbaa !26
  %18 = icmp eq void (double, double, double*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(double %7, double %8, double* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi double [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %31 = insertelement <8 x double> undef, double %30, i32 0
  %32 = extractelement <8 x double> %4, i32 1
  %33 = extractelement <8 x double> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 6
  %39 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %38, align 16, !tbaa !26
  %40 = icmp eq void (double, double, double*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(double %32, double %33, double* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load double, double* %3, align 8, !tbaa !32
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi i8 [ %46, %50 ], [ 0, %28 ]
  %54 = phi double [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %55 = insertelement <8 x double> %31, double %54, i32 1
  %56 = extractelement <8 x double> %4, i32 2
  %57 = extractelement <8 x double> %5, i32 2
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %58 = icmp eq i8 %53, 0
  br i1 %58, label %76, label %59

; <label>:59:                                     ; preds = %52, %69
  %60 = phi i8 [ %70, %69 ], [ %53, %52 ]
  %61 = phi i64 [ %71, %69 ], [ 0, %52 ]
  %62 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %61, i32 6
  %63 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %62, align 16, !tbaa !26
  %64 = icmp eq void (double, double, double*, i8*)* %63, null
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %61
  %67 = load i8*, i8** %66, align 8, !tbaa !16
  call void %63(double %56, double %57, double* nonnull %3, i8* %67) #9
  %68 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %69

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8 [ %60, %59 ], [ %68, %65 ]
  %71 = add nuw nsw i64 %61, 1
  %72 = zext i8 %70 to i64
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %59, label %74

; <label>:74:                                     ; preds = %69
  %75 = load double, double* %3, align 8, !tbaa !32
  br label %76

; <label>:76:                                     ; preds = %74, %52
  %77 = phi i8 [ %70, %74 ], [ 0, %52 ]
  %78 = phi double [ %75, %74 ], [ 0x7FF8000000000000, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %79 = insertelement <8 x double> %55, double %78, i32 2
  %80 = extractelement <8 x double> %4, i32 3
  %81 = extractelement <8 x double> %5, i32 3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %82 = icmp eq i8 %77, 0
  br i1 %82, label %100, label %83

; <label>:83:                                     ; preds = %76, %93
  %84 = phi i8 [ %94, %93 ], [ %77, %76 ]
  %85 = phi i64 [ %95, %93 ], [ 0, %76 ]
  %86 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %85, i32 6
  %87 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %86, align 16, !tbaa !26
  %88 = icmp eq void (double, double, double*, i8*)* %87, null
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %85
  %91 = load i8*, i8** %90, align 8, !tbaa !16
  call void %87(double %80, double %81, double* nonnull %3, i8* %91) #9
  %92 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %93

; <label>:93:                                     ; preds = %89, %83
  %94 = phi i8 [ %84, %83 ], [ %92, %89 ]
  %95 = add nuw nsw i64 %85, 1
  %96 = zext i8 %94 to i64
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %83, label %98

; <label>:98:                                     ; preds = %93
  %99 = load double, double* %3, align 8, !tbaa !32
  br label %100

; <label>:100:                                    ; preds = %98, %76
  %101 = phi i8 [ %94, %98 ], [ 0, %76 ]
  %102 = phi double [ %99, %98 ], [ 0x7FF8000000000000, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %103 = insertelement <8 x double> %79, double %102, i32 3
  %104 = extractelement <8 x double> %4, i32 4
  %105 = extractelement <8 x double> %5, i32 4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %106 = icmp eq i8 %101, 0
  br i1 %106, label %124, label %107

; <label>:107:                                    ; preds = %100, %117
  %108 = phi i8 [ %118, %117 ], [ %101, %100 ]
  %109 = phi i64 [ %119, %117 ], [ 0, %100 ]
  %110 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %109, i32 6
  %111 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %110, align 16, !tbaa !26
  %112 = icmp eq void (double, double, double*, i8*)* %111, null
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %109
  %115 = load i8*, i8** %114, align 8, !tbaa !16
  call void %111(double %104, double %105, double* nonnull %3, i8* %115) #9
  %116 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %117

; <label>:117:                                    ; preds = %113, %107
  %118 = phi i8 [ %108, %107 ], [ %116, %113 ]
  %119 = add nuw nsw i64 %109, 1
  %120 = zext i8 %118 to i64
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %107, label %122

; <label>:122:                                    ; preds = %117
  %123 = load double, double* %3, align 8, !tbaa !32
  br label %124

; <label>:124:                                    ; preds = %122, %100
  %125 = phi i8 [ %118, %122 ], [ 0, %100 ]
  %126 = phi double [ %123, %122 ], [ 0x7FF8000000000000, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %127 = insertelement <8 x double> %103, double %126, i32 4
  %128 = extractelement <8 x double> %4, i32 5
  %129 = extractelement <8 x double> %5, i32 5
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %130 = icmp eq i8 %125, 0
  br i1 %130, label %148, label %131

; <label>:131:                                    ; preds = %124, %141
  %132 = phi i8 [ %142, %141 ], [ %125, %124 ]
  %133 = phi i64 [ %143, %141 ], [ 0, %124 ]
  %134 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %133, i32 6
  %135 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %134, align 16, !tbaa !26
  %136 = icmp eq void (double, double, double*, i8*)* %135, null
  br i1 %136, label %141, label %137

; <label>:137:                                    ; preds = %131
  %138 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %133
  %139 = load i8*, i8** %138, align 8, !tbaa !16
  call void %135(double %128, double %129, double* nonnull %3, i8* %139) #9
  %140 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %141

; <label>:141:                                    ; preds = %137, %131
  %142 = phi i8 [ %132, %131 ], [ %140, %137 ]
  %143 = add nuw nsw i64 %133, 1
  %144 = zext i8 %142 to i64
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %131, label %146

; <label>:146:                                    ; preds = %141
  %147 = load double, double* %3, align 8, !tbaa !32
  br label %148

; <label>:148:                                    ; preds = %146, %124
  %149 = phi i8 [ %142, %146 ], [ 0, %124 ]
  %150 = phi double [ %147, %146 ], [ 0x7FF8000000000000, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %151 = insertelement <8 x double> %127, double %150, i32 5
  %152 = extractelement <8 x double> %4, i32 6
  %153 = extractelement <8 x double> %5, i32 6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %154 = icmp eq i8 %149, 0
  br i1 %154, label %172, label %155

; <label>:155:                                    ; preds = %148, %165
  %156 = phi i8 [ %166, %165 ], [ %149, %148 ]
  %157 = phi i64 [ %167, %165 ], [ 0, %148 ]
  %158 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %157, i32 6
  %159 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %158, align 16, !tbaa !26
  %160 = icmp eq void (double, double, double*, i8*)* %159, null
  br i1 %160, label %165, label %161

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %157
  %163 = load i8*, i8** %162, align 8, !tbaa !16
  call void %159(double %152, double %153, double* nonnull %3, i8* %163) #9
  %164 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %165

; <label>:165:                                    ; preds = %161, %155
  %166 = phi i8 [ %156, %155 ], [ %164, %161 ]
  %167 = add nuw nsw i64 %157, 1
  %168 = zext i8 %166 to i64
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %155, label %170

; <label>:170:                                    ; preds = %165
  %171 = load double, double* %3, align 8, !tbaa !32
  br label %172

; <label>:172:                                    ; preds = %170, %148
  %173 = phi i8 [ %166, %170 ], [ 0, %148 ]
  %174 = phi double [ %171, %170 ], [ 0x7FF8000000000000, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %175 = insertelement <8 x double> %151, double %174, i32 6
  %176 = extractelement <8 x double> %4, i32 7
  %177 = extractelement <8 x double> %5, i32 7
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %178 = icmp eq i8 %173, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %172, %189
  %180 = phi i8 [ %190, %189 ], [ %173, %172 ]
  %181 = phi i64 [ %191, %189 ], [ 0, %172 ]
  %182 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %181, i32 6
  %183 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %182, align 16, !tbaa !26
  %184 = icmp eq void (double, double, double*, i8*)* %183, null
  br i1 %184, label %189, label %185

; <label>:185:                                    ; preds = %179
  %186 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %181
  %187 = load i8*, i8** %186, align 8, !tbaa !16
  call void %183(double %176, double %177, double* nonnull %3, i8* %187) #9
  %188 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %189

; <label>:189:                                    ; preds = %185, %179
  %190 = phi i8 [ %180, %179 ], [ %188, %185 ]
  %191 = add nuw nsw i64 %181, 1
  %192 = zext i8 %190 to i64
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %179, label %194

; <label>:194:                                    ; preds = %189
  %195 = load double, double* %3, align 8, !tbaa !32
  br label %196

; <label>:196:                                    ; preds = %194, %172
  %197 = phi double [ %195, %194 ], [ 0x7FF8000000000000, %172 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %198 = insertelement <8 x double> %175, double %197, i32 7
  ret <8 x double> %198
}

; Function Attrs: nounwind uwtable
define <8 x double> @_8xdoublemul(<8 x double>* byval nocapture readonly align 64, <8 x double>* byval nocapture readonly align 64) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = load <8 x double>, <8 x double>* %0, align 64, !tbaa !17
  %5 = load <8 x double>, <8 x double>* %1, align 64, !tbaa !17
  %6 = bitcast double* %3 to i8*
  %7 = extractelement <8 x double> %4, i32 0
  %8 = extractelement <8 x double> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load double, double* %3, align 8, !tbaa !32
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 7
  %17 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %16, align 8, !tbaa !27
  %18 = icmp eq void (double, double, double*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(double %7, double %8, double* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi double [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %31 = insertelement <8 x double> undef, double %30, i32 0
  %32 = extractelement <8 x double> %4, i32 1
  %33 = extractelement <8 x double> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 7
  %39 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %38, align 8, !tbaa !27
  %40 = icmp eq void (double, double, double*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(double %32, double %33, double* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load double, double* %3, align 8, !tbaa !32
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi i8 [ %46, %50 ], [ 0, %28 ]
  %54 = phi double [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %55 = insertelement <8 x double> %31, double %54, i32 1
  %56 = extractelement <8 x double> %4, i32 2
  %57 = extractelement <8 x double> %5, i32 2
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %58 = icmp eq i8 %53, 0
  br i1 %58, label %76, label %59

; <label>:59:                                     ; preds = %52, %69
  %60 = phi i8 [ %70, %69 ], [ %53, %52 ]
  %61 = phi i64 [ %71, %69 ], [ 0, %52 ]
  %62 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %61, i32 7
  %63 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %62, align 8, !tbaa !27
  %64 = icmp eq void (double, double, double*, i8*)* %63, null
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %61
  %67 = load i8*, i8** %66, align 8, !tbaa !16
  call void %63(double %56, double %57, double* nonnull %3, i8* %67) #9
  %68 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %69

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8 [ %60, %59 ], [ %68, %65 ]
  %71 = add nuw nsw i64 %61, 1
  %72 = zext i8 %70 to i64
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %59, label %74

; <label>:74:                                     ; preds = %69
  %75 = load double, double* %3, align 8, !tbaa !32
  br label %76

; <label>:76:                                     ; preds = %74, %52
  %77 = phi i8 [ %70, %74 ], [ 0, %52 ]
  %78 = phi double [ %75, %74 ], [ 0x7FF8000000000000, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %79 = insertelement <8 x double> %55, double %78, i32 2
  %80 = extractelement <8 x double> %4, i32 3
  %81 = extractelement <8 x double> %5, i32 3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %82 = icmp eq i8 %77, 0
  br i1 %82, label %100, label %83

; <label>:83:                                     ; preds = %76, %93
  %84 = phi i8 [ %94, %93 ], [ %77, %76 ]
  %85 = phi i64 [ %95, %93 ], [ 0, %76 ]
  %86 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %85, i32 7
  %87 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %86, align 8, !tbaa !27
  %88 = icmp eq void (double, double, double*, i8*)* %87, null
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %85
  %91 = load i8*, i8** %90, align 8, !tbaa !16
  call void %87(double %80, double %81, double* nonnull %3, i8* %91) #9
  %92 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %93

; <label>:93:                                     ; preds = %89, %83
  %94 = phi i8 [ %84, %83 ], [ %92, %89 ]
  %95 = add nuw nsw i64 %85, 1
  %96 = zext i8 %94 to i64
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %83, label %98

; <label>:98:                                     ; preds = %93
  %99 = load double, double* %3, align 8, !tbaa !32
  br label %100

; <label>:100:                                    ; preds = %98, %76
  %101 = phi i8 [ %94, %98 ], [ 0, %76 ]
  %102 = phi double [ %99, %98 ], [ 0x7FF8000000000000, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %103 = insertelement <8 x double> %79, double %102, i32 3
  %104 = extractelement <8 x double> %4, i32 4
  %105 = extractelement <8 x double> %5, i32 4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %106 = icmp eq i8 %101, 0
  br i1 %106, label %124, label %107

; <label>:107:                                    ; preds = %100, %117
  %108 = phi i8 [ %118, %117 ], [ %101, %100 ]
  %109 = phi i64 [ %119, %117 ], [ 0, %100 ]
  %110 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %109, i32 7
  %111 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %110, align 8, !tbaa !27
  %112 = icmp eq void (double, double, double*, i8*)* %111, null
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %109
  %115 = load i8*, i8** %114, align 8, !tbaa !16
  call void %111(double %104, double %105, double* nonnull %3, i8* %115) #9
  %116 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %117

; <label>:117:                                    ; preds = %113, %107
  %118 = phi i8 [ %108, %107 ], [ %116, %113 ]
  %119 = add nuw nsw i64 %109, 1
  %120 = zext i8 %118 to i64
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %107, label %122

; <label>:122:                                    ; preds = %117
  %123 = load double, double* %3, align 8, !tbaa !32
  br label %124

; <label>:124:                                    ; preds = %122, %100
  %125 = phi i8 [ %118, %122 ], [ 0, %100 ]
  %126 = phi double [ %123, %122 ], [ 0x7FF8000000000000, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %127 = insertelement <8 x double> %103, double %126, i32 4
  %128 = extractelement <8 x double> %4, i32 5
  %129 = extractelement <8 x double> %5, i32 5
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %130 = icmp eq i8 %125, 0
  br i1 %130, label %148, label %131

; <label>:131:                                    ; preds = %124, %141
  %132 = phi i8 [ %142, %141 ], [ %125, %124 ]
  %133 = phi i64 [ %143, %141 ], [ 0, %124 ]
  %134 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %133, i32 7
  %135 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %134, align 8, !tbaa !27
  %136 = icmp eq void (double, double, double*, i8*)* %135, null
  br i1 %136, label %141, label %137

; <label>:137:                                    ; preds = %131
  %138 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %133
  %139 = load i8*, i8** %138, align 8, !tbaa !16
  call void %135(double %128, double %129, double* nonnull %3, i8* %139) #9
  %140 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %141

; <label>:141:                                    ; preds = %137, %131
  %142 = phi i8 [ %132, %131 ], [ %140, %137 ]
  %143 = add nuw nsw i64 %133, 1
  %144 = zext i8 %142 to i64
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %131, label %146

; <label>:146:                                    ; preds = %141
  %147 = load double, double* %3, align 8, !tbaa !32
  br label %148

; <label>:148:                                    ; preds = %146, %124
  %149 = phi i8 [ %142, %146 ], [ 0, %124 ]
  %150 = phi double [ %147, %146 ], [ 0x7FF8000000000000, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %151 = insertelement <8 x double> %127, double %150, i32 5
  %152 = extractelement <8 x double> %4, i32 6
  %153 = extractelement <8 x double> %5, i32 6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %154 = icmp eq i8 %149, 0
  br i1 %154, label %172, label %155

; <label>:155:                                    ; preds = %148, %165
  %156 = phi i8 [ %166, %165 ], [ %149, %148 ]
  %157 = phi i64 [ %167, %165 ], [ 0, %148 ]
  %158 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %157, i32 7
  %159 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %158, align 8, !tbaa !27
  %160 = icmp eq void (double, double, double*, i8*)* %159, null
  br i1 %160, label %165, label %161

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %157
  %163 = load i8*, i8** %162, align 8, !tbaa !16
  call void %159(double %152, double %153, double* nonnull %3, i8* %163) #9
  %164 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %165

; <label>:165:                                    ; preds = %161, %155
  %166 = phi i8 [ %156, %155 ], [ %164, %161 ]
  %167 = add nuw nsw i64 %157, 1
  %168 = zext i8 %166 to i64
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %155, label %170

; <label>:170:                                    ; preds = %165
  %171 = load double, double* %3, align 8, !tbaa !32
  br label %172

; <label>:172:                                    ; preds = %170, %148
  %173 = phi i8 [ %166, %170 ], [ 0, %148 ]
  %174 = phi double [ %171, %170 ], [ 0x7FF8000000000000, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %175 = insertelement <8 x double> %151, double %174, i32 6
  %176 = extractelement <8 x double> %4, i32 7
  %177 = extractelement <8 x double> %5, i32 7
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %178 = icmp eq i8 %173, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %172, %189
  %180 = phi i8 [ %190, %189 ], [ %173, %172 ]
  %181 = phi i64 [ %191, %189 ], [ 0, %172 ]
  %182 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %181, i32 7
  %183 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %182, align 8, !tbaa !27
  %184 = icmp eq void (double, double, double*, i8*)* %183, null
  br i1 %184, label %189, label %185

; <label>:185:                                    ; preds = %179
  %186 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %181
  %187 = load i8*, i8** %186, align 8, !tbaa !16
  call void %183(double %176, double %177, double* nonnull %3, i8* %187) #9
  %188 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %189

; <label>:189:                                    ; preds = %185, %179
  %190 = phi i8 [ %180, %179 ], [ %188, %185 ]
  %191 = add nuw nsw i64 %181, 1
  %192 = zext i8 %190 to i64
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %179, label %194

; <label>:194:                                    ; preds = %189
  %195 = load double, double* %3, align 8, !tbaa !32
  br label %196

; <label>:196:                                    ; preds = %194, %172
  %197 = phi double [ %195, %194 ], [ 0x7FF8000000000000, %172 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %198 = insertelement <8 x double> %175, double %197, i32 7
  ret <8 x double> %198
}

; Function Attrs: nounwind uwtable
define <8 x double> @_8xdoublediv(<8 x double>* byval nocapture readonly align 64, <8 x double>* byval nocapture readonly align 64) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = load <8 x double>, <8 x double>* %0, align 64, !tbaa !17
  %5 = load <8 x double>, <8 x double>* %1, align 64, !tbaa !17
  %6 = bitcast double* %3 to i8*
  %7 = extractelement <8 x double> %4, i32 0
  %8 = extractelement <8 x double> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load double, double* %3, align 8, !tbaa !32
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 8
  %17 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %16, align 16, !tbaa !28
  %18 = icmp eq void (double, double, double*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(double %7, double %8, double* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi double [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %31 = insertelement <8 x double> undef, double %30, i32 0
  %32 = extractelement <8 x double> %4, i32 1
  %33 = extractelement <8 x double> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 8
  %39 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %38, align 16, !tbaa !28
  %40 = icmp eq void (double, double, double*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(double %32, double %33, double* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load double, double* %3, align 8, !tbaa !32
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi i8 [ %46, %50 ], [ 0, %28 ]
  %54 = phi double [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %55 = insertelement <8 x double> %31, double %54, i32 1
  %56 = extractelement <8 x double> %4, i32 2
  %57 = extractelement <8 x double> %5, i32 2
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %58 = icmp eq i8 %53, 0
  br i1 %58, label %76, label %59

; <label>:59:                                     ; preds = %52, %69
  %60 = phi i8 [ %70, %69 ], [ %53, %52 ]
  %61 = phi i64 [ %71, %69 ], [ 0, %52 ]
  %62 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %61, i32 8
  %63 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %62, align 16, !tbaa !28
  %64 = icmp eq void (double, double, double*, i8*)* %63, null
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %61
  %67 = load i8*, i8** %66, align 8, !tbaa !16
  call void %63(double %56, double %57, double* nonnull %3, i8* %67) #9
  %68 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %69

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8 [ %60, %59 ], [ %68, %65 ]
  %71 = add nuw nsw i64 %61, 1
  %72 = zext i8 %70 to i64
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %59, label %74

; <label>:74:                                     ; preds = %69
  %75 = load double, double* %3, align 8, !tbaa !32
  br label %76

; <label>:76:                                     ; preds = %74, %52
  %77 = phi i8 [ %70, %74 ], [ 0, %52 ]
  %78 = phi double [ %75, %74 ], [ 0x7FF8000000000000, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %79 = insertelement <8 x double> %55, double %78, i32 2
  %80 = extractelement <8 x double> %4, i32 3
  %81 = extractelement <8 x double> %5, i32 3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %82 = icmp eq i8 %77, 0
  br i1 %82, label %100, label %83

; <label>:83:                                     ; preds = %76, %93
  %84 = phi i8 [ %94, %93 ], [ %77, %76 ]
  %85 = phi i64 [ %95, %93 ], [ 0, %76 ]
  %86 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %85, i32 8
  %87 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %86, align 16, !tbaa !28
  %88 = icmp eq void (double, double, double*, i8*)* %87, null
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %85
  %91 = load i8*, i8** %90, align 8, !tbaa !16
  call void %87(double %80, double %81, double* nonnull %3, i8* %91) #9
  %92 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %93

; <label>:93:                                     ; preds = %89, %83
  %94 = phi i8 [ %84, %83 ], [ %92, %89 ]
  %95 = add nuw nsw i64 %85, 1
  %96 = zext i8 %94 to i64
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %83, label %98

; <label>:98:                                     ; preds = %93
  %99 = load double, double* %3, align 8, !tbaa !32
  br label %100

; <label>:100:                                    ; preds = %98, %76
  %101 = phi i8 [ %94, %98 ], [ 0, %76 ]
  %102 = phi double [ %99, %98 ], [ 0x7FF8000000000000, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %103 = insertelement <8 x double> %79, double %102, i32 3
  %104 = extractelement <8 x double> %4, i32 4
  %105 = extractelement <8 x double> %5, i32 4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %106 = icmp eq i8 %101, 0
  br i1 %106, label %124, label %107

; <label>:107:                                    ; preds = %100, %117
  %108 = phi i8 [ %118, %117 ], [ %101, %100 ]
  %109 = phi i64 [ %119, %117 ], [ 0, %100 ]
  %110 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %109, i32 8
  %111 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %110, align 16, !tbaa !28
  %112 = icmp eq void (double, double, double*, i8*)* %111, null
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %109
  %115 = load i8*, i8** %114, align 8, !tbaa !16
  call void %111(double %104, double %105, double* nonnull %3, i8* %115) #9
  %116 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %117

; <label>:117:                                    ; preds = %113, %107
  %118 = phi i8 [ %108, %107 ], [ %116, %113 ]
  %119 = add nuw nsw i64 %109, 1
  %120 = zext i8 %118 to i64
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %107, label %122

; <label>:122:                                    ; preds = %117
  %123 = load double, double* %3, align 8, !tbaa !32
  br label %124

; <label>:124:                                    ; preds = %122, %100
  %125 = phi i8 [ %118, %122 ], [ 0, %100 ]
  %126 = phi double [ %123, %122 ], [ 0x7FF8000000000000, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %127 = insertelement <8 x double> %103, double %126, i32 4
  %128 = extractelement <8 x double> %4, i32 5
  %129 = extractelement <8 x double> %5, i32 5
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %130 = icmp eq i8 %125, 0
  br i1 %130, label %148, label %131

; <label>:131:                                    ; preds = %124, %141
  %132 = phi i8 [ %142, %141 ], [ %125, %124 ]
  %133 = phi i64 [ %143, %141 ], [ 0, %124 ]
  %134 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %133, i32 8
  %135 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %134, align 16, !tbaa !28
  %136 = icmp eq void (double, double, double*, i8*)* %135, null
  br i1 %136, label %141, label %137

; <label>:137:                                    ; preds = %131
  %138 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %133
  %139 = load i8*, i8** %138, align 8, !tbaa !16
  call void %135(double %128, double %129, double* nonnull %3, i8* %139) #9
  %140 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %141

; <label>:141:                                    ; preds = %137, %131
  %142 = phi i8 [ %132, %131 ], [ %140, %137 ]
  %143 = add nuw nsw i64 %133, 1
  %144 = zext i8 %142 to i64
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %131, label %146

; <label>:146:                                    ; preds = %141
  %147 = load double, double* %3, align 8, !tbaa !32
  br label %148

; <label>:148:                                    ; preds = %146, %124
  %149 = phi i8 [ %142, %146 ], [ 0, %124 ]
  %150 = phi double [ %147, %146 ], [ 0x7FF8000000000000, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %151 = insertelement <8 x double> %127, double %150, i32 5
  %152 = extractelement <8 x double> %4, i32 6
  %153 = extractelement <8 x double> %5, i32 6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %154 = icmp eq i8 %149, 0
  br i1 %154, label %172, label %155

; <label>:155:                                    ; preds = %148, %165
  %156 = phi i8 [ %166, %165 ], [ %149, %148 ]
  %157 = phi i64 [ %167, %165 ], [ 0, %148 ]
  %158 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %157, i32 8
  %159 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %158, align 16, !tbaa !28
  %160 = icmp eq void (double, double, double*, i8*)* %159, null
  br i1 %160, label %165, label %161

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %157
  %163 = load i8*, i8** %162, align 8, !tbaa !16
  call void %159(double %152, double %153, double* nonnull %3, i8* %163) #9
  %164 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %165

; <label>:165:                                    ; preds = %161, %155
  %166 = phi i8 [ %156, %155 ], [ %164, %161 ]
  %167 = add nuw nsw i64 %157, 1
  %168 = zext i8 %166 to i64
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %155, label %170

; <label>:170:                                    ; preds = %165
  %171 = load double, double* %3, align 8, !tbaa !32
  br label %172

; <label>:172:                                    ; preds = %170, %148
  %173 = phi i8 [ %166, %170 ], [ 0, %148 ]
  %174 = phi double [ %171, %170 ], [ 0x7FF8000000000000, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %175 = insertelement <8 x double> %151, double %174, i32 6
  %176 = extractelement <8 x double> %4, i32 7
  %177 = extractelement <8 x double> %5, i32 7
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %178 = icmp eq i8 %173, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %172, %189
  %180 = phi i8 [ %190, %189 ], [ %173, %172 ]
  %181 = phi i64 [ %191, %189 ], [ 0, %172 ]
  %182 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %181, i32 8
  %183 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %182, align 16, !tbaa !28
  %184 = icmp eq void (double, double, double*, i8*)* %183, null
  br i1 %184, label %189, label %185

; <label>:185:                                    ; preds = %179
  %186 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %181
  %187 = load i8*, i8** %186, align 8, !tbaa !16
  call void %183(double %176, double %177, double* nonnull %3, i8* %187) #9
  %188 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %189

; <label>:189:                                    ; preds = %185, %179
  %190 = phi i8 [ %180, %179 ], [ %188, %185 ]
  %191 = add nuw nsw i64 %181, 1
  %192 = zext i8 %190 to i64
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %179, label %194

; <label>:194:                                    ; preds = %189
  %195 = load double, double* %3, align 8, !tbaa !32
  br label %196

; <label>:196:                                    ; preds = %194, %172
  %197 = phi double [ %195, %194 ], [ 0x7FF8000000000000, %172 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %198 = insertelement <8 x double> %175, double %197, i32 7
  ret <8 x double> %198
}

; Function Attrs: nounwind uwtable
define <16 x float> @_16xfloatadd(<16 x float>* byval nocapture readonly align 64, <16 x float>* byval nocapture readonly align 64) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = load <16 x float>, <16 x float>* %0, align 64, !tbaa !17
  %5 = load <16 x float>, <16 x float>* %1, align 64, !tbaa !17
  %6 = bitcast float* %3 to i8*
  %7 = extractelement <16 x float> %4, i32 0
  %8 = extractelement <16 x float> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load float, float* %3, align 4, !tbaa !30
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 0
  %17 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %16, align 16, !tbaa !21
  %18 = icmp eq void (float, float, float*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(float %7, float %8, float* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi float [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %31 = insertelement <16 x float> undef, float %30, i32 0
  %32 = extractelement <16 x float> %4, i32 1
  %33 = extractelement <16 x float> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 0
  %39 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %38, align 16, !tbaa !21
  %40 = icmp eq void (float, float, float*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(float %32, float %33, float* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load float, float* %3, align 4, !tbaa !30
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi i8 [ %46, %50 ], [ 0, %28 ]
  %54 = phi float [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %55 = insertelement <16 x float> %31, float %54, i32 1
  %56 = extractelement <16 x float> %4, i32 2
  %57 = extractelement <16 x float> %5, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %58 = icmp eq i8 %53, 0
  br i1 %58, label %76, label %59

; <label>:59:                                     ; preds = %52, %69
  %60 = phi i8 [ %70, %69 ], [ %53, %52 ]
  %61 = phi i64 [ %71, %69 ], [ 0, %52 ]
  %62 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %61, i32 0
  %63 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %62, align 16, !tbaa !21
  %64 = icmp eq void (float, float, float*, i8*)* %63, null
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %61
  %67 = load i8*, i8** %66, align 8, !tbaa !16
  call void %63(float %56, float %57, float* nonnull %3, i8* %67) #9
  %68 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %69

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8 [ %60, %59 ], [ %68, %65 ]
  %71 = add nuw nsw i64 %61, 1
  %72 = zext i8 %70 to i64
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %59, label %74

; <label>:74:                                     ; preds = %69
  %75 = load float, float* %3, align 4, !tbaa !30
  br label %76

; <label>:76:                                     ; preds = %74, %52
  %77 = phi i8 [ %70, %74 ], [ 0, %52 ]
  %78 = phi float [ %75, %74 ], [ 0x7FF8000000000000, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %79 = insertelement <16 x float> %55, float %78, i32 2
  %80 = extractelement <16 x float> %4, i32 3
  %81 = extractelement <16 x float> %5, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %82 = icmp eq i8 %77, 0
  br i1 %82, label %100, label %83

; <label>:83:                                     ; preds = %76, %93
  %84 = phi i8 [ %94, %93 ], [ %77, %76 ]
  %85 = phi i64 [ %95, %93 ], [ 0, %76 ]
  %86 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %85, i32 0
  %87 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %86, align 16, !tbaa !21
  %88 = icmp eq void (float, float, float*, i8*)* %87, null
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %85
  %91 = load i8*, i8** %90, align 8, !tbaa !16
  call void %87(float %80, float %81, float* nonnull %3, i8* %91) #9
  %92 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %93

; <label>:93:                                     ; preds = %89, %83
  %94 = phi i8 [ %84, %83 ], [ %92, %89 ]
  %95 = add nuw nsw i64 %85, 1
  %96 = zext i8 %94 to i64
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %83, label %98

; <label>:98:                                     ; preds = %93
  %99 = load float, float* %3, align 4, !tbaa !30
  br label %100

; <label>:100:                                    ; preds = %98, %76
  %101 = phi i8 [ %94, %98 ], [ 0, %76 ]
  %102 = phi float [ %99, %98 ], [ 0x7FF8000000000000, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %103 = insertelement <16 x float> %79, float %102, i32 3
  %104 = extractelement <16 x float> %4, i32 4
  %105 = extractelement <16 x float> %5, i32 4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %106 = icmp eq i8 %101, 0
  br i1 %106, label %124, label %107

; <label>:107:                                    ; preds = %100, %117
  %108 = phi i8 [ %118, %117 ], [ %101, %100 ]
  %109 = phi i64 [ %119, %117 ], [ 0, %100 ]
  %110 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %109, i32 0
  %111 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %110, align 16, !tbaa !21
  %112 = icmp eq void (float, float, float*, i8*)* %111, null
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %109
  %115 = load i8*, i8** %114, align 8, !tbaa !16
  call void %111(float %104, float %105, float* nonnull %3, i8* %115) #9
  %116 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %117

; <label>:117:                                    ; preds = %113, %107
  %118 = phi i8 [ %108, %107 ], [ %116, %113 ]
  %119 = add nuw nsw i64 %109, 1
  %120 = zext i8 %118 to i64
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %107, label %122

; <label>:122:                                    ; preds = %117
  %123 = load float, float* %3, align 4, !tbaa !30
  br label %124

; <label>:124:                                    ; preds = %122, %100
  %125 = phi i8 [ %118, %122 ], [ 0, %100 ]
  %126 = phi float [ %123, %122 ], [ 0x7FF8000000000000, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %127 = insertelement <16 x float> %103, float %126, i32 4
  %128 = extractelement <16 x float> %4, i32 5
  %129 = extractelement <16 x float> %5, i32 5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %130 = icmp eq i8 %125, 0
  br i1 %130, label %148, label %131

; <label>:131:                                    ; preds = %124, %141
  %132 = phi i8 [ %142, %141 ], [ %125, %124 ]
  %133 = phi i64 [ %143, %141 ], [ 0, %124 ]
  %134 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %133, i32 0
  %135 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %134, align 16, !tbaa !21
  %136 = icmp eq void (float, float, float*, i8*)* %135, null
  br i1 %136, label %141, label %137

; <label>:137:                                    ; preds = %131
  %138 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %133
  %139 = load i8*, i8** %138, align 8, !tbaa !16
  call void %135(float %128, float %129, float* nonnull %3, i8* %139) #9
  %140 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %141

; <label>:141:                                    ; preds = %137, %131
  %142 = phi i8 [ %132, %131 ], [ %140, %137 ]
  %143 = add nuw nsw i64 %133, 1
  %144 = zext i8 %142 to i64
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %131, label %146

; <label>:146:                                    ; preds = %141
  %147 = load float, float* %3, align 4, !tbaa !30
  br label %148

; <label>:148:                                    ; preds = %146, %124
  %149 = phi i8 [ %142, %146 ], [ 0, %124 ]
  %150 = phi float [ %147, %146 ], [ 0x7FF8000000000000, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %151 = insertelement <16 x float> %127, float %150, i32 5
  %152 = extractelement <16 x float> %4, i32 6
  %153 = extractelement <16 x float> %5, i32 6
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %154 = icmp eq i8 %149, 0
  br i1 %154, label %172, label %155

; <label>:155:                                    ; preds = %148, %165
  %156 = phi i8 [ %166, %165 ], [ %149, %148 ]
  %157 = phi i64 [ %167, %165 ], [ 0, %148 ]
  %158 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %157, i32 0
  %159 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %158, align 16, !tbaa !21
  %160 = icmp eq void (float, float, float*, i8*)* %159, null
  br i1 %160, label %165, label %161

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %157
  %163 = load i8*, i8** %162, align 8, !tbaa !16
  call void %159(float %152, float %153, float* nonnull %3, i8* %163) #9
  %164 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %165

; <label>:165:                                    ; preds = %161, %155
  %166 = phi i8 [ %156, %155 ], [ %164, %161 ]
  %167 = add nuw nsw i64 %157, 1
  %168 = zext i8 %166 to i64
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %155, label %170

; <label>:170:                                    ; preds = %165
  %171 = load float, float* %3, align 4, !tbaa !30
  br label %172

; <label>:172:                                    ; preds = %170, %148
  %173 = phi i8 [ %166, %170 ], [ 0, %148 ]
  %174 = phi float [ %171, %170 ], [ 0x7FF8000000000000, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %175 = insertelement <16 x float> %151, float %174, i32 6
  %176 = extractelement <16 x float> %4, i32 7
  %177 = extractelement <16 x float> %5, i32 7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %178 = icmp eq i8 %173, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %172, %189
  %180 = phi i8 [ %190, %189 ], [ %173, %172 ]
  %181 = phi i64 [ %191, %189 ], [ 0, %172 ]
  %182 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %181, i32 0
  %183 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %182, align 16, !tbaa !21
  %184 = icmp eq void (float, float, float*, i8*)* %183, null
  br i1 %184, label %189, label %185

; <label>:185:                                    ; preds = %179
  %186 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %181
  %187 = load i8*, i8** %186, align 8, !tbaa !16
  call void %183(float %176, float %177, float* nonnull %3, i8* %187) #9
  %188 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %189

; <label>:189:                                    ; preds = %185, %179
  %190 = phi i8 [ %180, %179 ], [ %188, %185 ]
  %191 = add nuw nsw i64 %181, 1
  %192 = zext i8 %190 to i64
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %179, label %194

; <label>:194:                                    ; preds = %189
  %195 = load float, float* %3, align 4, !tbaa !30
  br label %196

; <label>:196:                                    ; preds = %194, %172
  %197 = phi i8 [ %190, %194 ], [ 0, %172 ]
  %198 = phi float [ %195, %194 ], [ 0x7FF8000000000000, %172 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %199 = insertelement <16 x float> %175, float %198, i32 7
  %200 = extractelement <16 x float> %4, i32 8
  %201 = extractelement <16 x float> %5, i32 8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %202 = icmp eq i8 %197, 0
  br i1 %202, label %220, label %203

; <label>:203:                                    ; preds = %196, %213
  %204 = phi i8 [ %214, %213 ], [ %197, %196 ]
  %205 = phi i64 [ %215, %213 ], [ 0, %196 ]
  %206 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %205, i32 0
  %207 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %206, align 16, !tbaa !21
  %208 = icmp eq void (float, float, float*, i8*)* %207, null
  br i1 %208, label %213, label %209

; <label>:209:                                    ; preds = %203
  %210 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %205
  %211 = load i8*, i8** %210, align 8, !tbaa !16
  call void %207(float %200, float %201, float* nonnull %3, i8* %211) #9
  %212 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %213

; <label>:213:                                    ; preds = %209, %203
  %214 = phi i8 [ %204, %203 ], [ %212, %209 ]
  %215 = add nuw nsw i64 %205, 1
  %216 = zext i8 %214 to i64
  %217 = icmp ult i64 %215, %216
  br i1 %217, label %203, label %218

; <label>:218:                                    ; preds = %213
  %219 = load float, float* %3, align 4, !tbaa !30
  br label %220

; <label>:220:                                    ; preds = %218, %196
  %221 = phi i8 [ %214, %218 ], [ 0, %196 ]
  %222 = phi float [ %219, %218 ], [ 0x7FF8000000000000, %196 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %223 = insertelement <16 x float> %199, float %222, i32 8
  %224 = extractelement <16 x float> %4, i32 9
  %225 = extractelement <16 x float> %5, i32 9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %226 = icmp eq i8 %221, 0
  br i1 %226, label %244, label %227

; <label>:227:                                    ; preds = %220, %237
  %228 = phi i8 [ %238, %237 ], [ %221, %220 ]
  %229 = phi i64 [ %239, %237 ], [ 0, %220 ]
  %230 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %229, i32 0
  %231 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %230, align 16, !tbaa !21
  %232 = icmp eq void (float, float, float*, i8*)* %231, null
  br i1 %232, label %237, label %233

; <label>:233:                                    ; preds = %227
  %234 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %229
  %235 = load i8*, i8** %234, align 8, !tbaa !16
  call void %231(float %224, float %225, float* nonnull %3, i8* %235) #9
  %236 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %237

; <label>:237:                                    ; preds = %233, %227
  %238 = phi i8 [ %228, %227 ], [ %236, %233 ]
  %239 = add nuw nsw i64 %229, 1
  %240 = zext i8 %238 to i64
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %227, label %242

; <label>:242:                                    ; preds = %237
  %243 = load float, float* %3, align 4, !tbaa !30
  br label %244

; <label>:244:                                    ; preds = %242, %220
  %245 = phi i8 [ %238, %242 ], [ 0, %220 ]
  %246 = phi float [ %243, %242 ], [ 0x7FF8000000000000, %220 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %247 = insertelement <16 x float> %223, float %246, i32 9
  %248 = extractelement <16 x float> %4, i32 10
  %249 = extractelement <16 x float> %5, i32 10
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %250 = icmp eq i8 %245, 0
  br i1 %250, label %268, label %251

; <label>:251:                                    ; preds = %244, %261
  %252 = phi i8 [ %262, %261 ], [ %245, %244 ]
  %253 = phi i64 [ %263, %261 ], [ 0, %244 ]
  %254 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %253, i32 0
  %255 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %254, align 16, !tbaa !21
  %256 = icmp eq void (float, float, float*, i8*)* %255, null
  br i1 %256, label %261, label %257

; <label>:257:                                    ; preds = %251
  %258 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %253
  %259 = load i8*, i8** %258, align 8, !tbaa !16
  call void %255(float %248, float %249, float* nonnull %3, i8* %259) #9
  %260 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %261

; <label>:261:                                    ; preds = %257, %251
  %262 = phi i8 [ %252, %251 ], [ %260, %257 ]
  %263 = add nuw nsw i64 %253, 1
  %264 = zext i8 %262 to i64
  %265 = icmp ult i64 %263, %264
  br i1 %265, label %251, label %266

; <label>:266:                                    ; preds = %261
  %267 = load float, float* %3, align 4, !tbaa !30
  br label %268

; <label>:268:                                    ; preds = %266, %244
  %269 = phi i8 [ %262, %266 ], [ 0, %244 ]
  %270 = phi float [ %267, %266 ], [ 0x7FF8000000000000, %244 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %271 = insertelement <16 x float> %247, float %270, i32 10
  %272 = extractelement <16 x float> %4, i32 11
  %273 = extractelement <16 x float> %5, i32 11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %274 = icmp eq i8 %269, 0
  br i1 %274, label %292, label %275

; <label>:275:                                    ; preds = %268, %285
  %276 = phi i8 [ %286, %285 ], [ %269, %268 ]
  %277 = phi i64 [ %287, %285 ], [ 0, %268 ]
  %278 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %277, i32 0
  %279 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %278, align 16, !tbaa !21
  %280 = icmp eq void (float, float, float*, i8*)* %279, null
  br i1 %280, label %285, label %281

; <label>:281:                                    ; preds = %275
  %282 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %277
  %283 = load i8*, i8** %282, align 8, !tbaa !16
  call void %279(float %272, float %273, float* nonnull %3, i8* %283) #9
  %284 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %285

; <label>:285:                                    ; preds = %281, %275
  %286 = phi i8 [ %276, %275 ], [ %284, %281 ]
  %287 = add nuw nsw i64 %277, 1
  %288 = zext i8 %286 to i64
  %289 = icmp ult i64 %287, %288
  br i1 %289, label %275, label %290

; <label>:290:                                    ; preds = %285
  %291 = load float, float* %3, align 4, !tbaa !30
  br label %292

; <label>:292:                                    ; preds = %290, %268
  %293 = phi i8 [ %286, %290 ], [ 0, %268 ]
  %294 = phi float [ %291, %290 ], [ 0x7FF8000000000000, %268 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %295 = insertelement <16 x float> %271, float %294, i32 11
  %296 = extractelement <16 x float> %4, i32 12
  %297 = extractelement <16 x float> %5, i32 12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %298 = icmp eq i8 %293, 0
  br i1 %298, label %316, label %299

; <label>:299:                                    ; preds = %292, %309
  %300 = phi i8 [ %310, %309 ], [ %293, %292 ]
  %301 = phi i64 [ %311, %309 ], [ 0, %292 ]
  %302 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %301, i32 0
  %303 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %302, align 16, !tbaa !21
  %304 = icmp eq void (float, float, float*, i8*)* %303, null
  br i1 %304, label %309, label %305

; <label>:305:                                    ; preds = %299
  %306 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %301
  %307 = load i8*, i8** %306, align 8, !tbaa !16
  call void %303(float %296, float %297, float* nonnull %3, i8* %307) #9
  %308 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %309

; <label>:309:                                    ; preds = %305, %299
  %310 = phi i8 [ %300, %299 ], [ %308, %305 ]
  %311 = add nuw nsw i64 %301, 1
  %312 = zext i8 %310 to i64
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %299, label %314

; <label>:314:                                    ; preds = %309
  %315 = load float, float* %3, align 4, !tbaa !30
  br label %316

; <label>:316:                                    ; preds = %314, %292
  %317 = phi i8 [ %310, %314 ], [ 0, %292 ]
  %318 = phi float [ %315, %314 ], [ 0x7FF8000000000000, %292 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %319 = insertelement <16 x float> %295, float %318, i32 12
  %320 = extractelement <16 x float> %4, i32 13
  %321 = extractelement <16 x float> %5, i32 13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %322 = icmp eq i8 %317, 0
  br i1 %322, label %340, label %323

; <label>:323:                                    ; preds = %316, %333
  %324 = phi i8 [ %334, %333 ], [ %317, %316 ]
  %325 = phi i64 [ %335, %333 ], [ 0, %316 ]
  %326 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %325, i32 0
  %327 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %326, align 16, !tbaa !21
  %328 = icmp eq void (float, float, float*, i8*)* %327, null
  br i1 %328, label %333, label %329

; <label>:329:                                    ; preds = %323
  %330 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %325
  %331 = load i8*, i8** %330, align 8, !tbaa !16
  call void %327(float %320, float %321, float* nonnull %3, i8* %331) #9
  %332 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %333

; <label>:333:                                    ; preds = %329, %323
  %334 = phi i8 [ %324, %323 ], [ %332, %329 ]
  %335 = add nuw nsw i64 %325, 1
  %336 = zext i8 %334 to i64
  %337 = icmp ult i64 %335, %336
  br i1 %337, label %323, label %338

; <label>:338:                                    ; preds = %333
  %339 = load float, float* %3, align 4, !tbaa !30
  br label %340

; <label>:340:                                    ; preds = %338, %316
  %341 = phi i8 [ %334, %338 ], [ 0, %316 ]
  %342 = phi float [ %339, %338 ], [ 0x7FF8000000000000, %316 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %343 = insertelement <16 x float> %319, float %342, i32 13
  %344 = extractelement <16 x float> %4, i32 14
  %345 = extractelement <16 x float> %5, i32 14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %346 = icmp eq i8 %341, 0
  br i1 %346, label %364, label %347

; <label>:347:                                    ; preds = %340, %357
  %348 = phi i8 [ %358, %357 ], [ %341, %340 ]
  %349 = phi i64 [ %359, %357 ], [ 0, %340 ]
  %350 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %349, i32 0
  %351 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %350, align 16, !tbaa !21
  %352 = icmp eq void (float, float, float*, i8*)* %351, null
  br i1 %352, label %357, label %353

; <label>:353:                                    ; preds = %347
  %354 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %349
  %355 = load i8*, i8** %354, align 8, !tbaa !16
  call void %351(float %344, float %345, float* nonnull %3, i8* %355) #9
  %356 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %357

; <label>:357:                                    ; preds = %353, %347
  %358 = phi i8 [ %348, %347 ], [ %356, %353 ]
  %359 = add nuw nsw i64 %349, 1
  %360 = zext i8 %358 to i64
  %361 = icmp ult i64 %359, %360
  br i1 %361, label %347, label %362

; <label>:362:                                    ; preds = %357
  %363 = load float, float* %3, align 4, !tbaa !30
  br label %364

; <label>:364:                                    ; preds = %362, %340
  %365 = phi i8 [ %358, %362 ], [ 0, %340 ]
  %366 = phi float [ %363, %362 ], [ 0x7FF8000000000000, %340 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %367 = insertelement <16 x float> %343, float %366, i32 14
  %368 = extractelement <16 x float> %4, i32 15
  %369 = extractelement <16 x float> %5, i32 15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %370 = icmp eq i8 %365, 0
  br i1 %370, label %388, label %371

; <label>:371:                                    ; preds = %364, %381
  %372 = phi i8 [ %382, %381 ], [ %365, %364 ]
  %373 = phi i64 [ %383, %381 ], [ 0, %364 ]
  %374 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %373, i32 0
  %375 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %374, align 16, !tbaa !21
  %376 = icmp eq void (float, float, float*, i8*)* %375, null
  br i1 %376, label %381, label %377

; <label>:377:                                    ; preds = %371
  %378 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %373
  %379 = load i8*, i8** %378, align 8, !tbaa !16
  call void %375(float %368, float %369, float* nonnull %3, i8* %379) #9
  %380 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %381

; <label>:381:                                    ; preds = %377, %371
  %382 = phi i8 [ %372, %371 ], [ %380, %377 ]
  %383 = add nuw nsw i64 %373, 1
  %384 = zext i8 %382 to i64
  %385 = icmp ult i64 %383, %384
  br i1 %385, label %371, label %386

; <label>:386:                                    ; preds = %381
  %387 = load float, float* %3, align 4, !tbaa !30
  br label %388

; <label>:388:                                    ; preds = %386, %364
  %389 = phi float [ %387, %386 ], [ 0x7FF8000000000000, %364 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %390 = insertelement <16 x float> %367, float %389, i32 15
  ret <16 x float> %390
}

; Function Attrs: nounwind uwtable
define <16 x float> @_16xfloatsub(<16 x float>* byval nocapture readonly align 64, <16 x float>* byval nocapture readonly align 64) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = load <16 x float>, <16 x float>* %0, align 64, !tbaa !17
  %5 = load <16 x float>, <16 x float>* %1, align 64, !tbaa !17
  %6 = bitcast float* %3 to i8*
  %7 = extractelement <16 x float> %4, i32 0
  %8 = extractelement <16 x float> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load float, float* %3, align 4, !tbaa !30
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 1
  %17 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %16, align 8, !tbaa !22
  %18 = icmp eq void (float, float, float*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(float %7, float %8, float* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi float [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %31 = insertelement <16 x float> undef, float %30, i32 0
  %32 = extractelement <16 x float> %4, i32 1
  %33 = extractelement <16 x float> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 1
  %39 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %38, align 8, !tbaa !22
  %40 = icmp eq void (float, float, float*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(float %32, float %33, float* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load float, float* %3, align 4, !tbaa !30
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi i8 [ %46, %50 ], [ 0, %28 ]
  %54 = phi float [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %55 = insertelement <16 x float> %31, float %54, i32 1
  %56 = extractelement <16 x float> %4, i32 2
  %57 = extractelement <16 x float> %5, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %58 = icmp eq i8 %53, 0
  br i1 %58, label %76, label %59

; <label>:59:                                     ; preds = %52, %69
  %60 = phi i8 [ %70, %69 ], [ %53, %52 ]
  %61 = phi i64 [ %71, %69 ], [ 0, %52 ]
  %62 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %61, i32 1
  %63 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %62, align 8, !tbaa !22
  %64 = icmp eq void (float, float, float*, i8*)* %63, null
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %61
  %67 = load i8*, i8** %66, align 8, !tbaa !16
  call void %63(float %56, float %57, float* nonnull %3, i8* %67) #9
  %68 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %69

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8 [ %60, %59 ], [ %68, %65 ]
  %71 = add nuw nsw i64 %61, 1
  %72 = zext i8 %70 to i64
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %59, label %74

; <label>:74:                                     ; preds = %69
  %75 = load float, float* %3, align 4, !tbaa !30
  br label %76

; <label>:76:                                     ; preds = %74, %52
  %77 = phi i8 [ %70, %74 ], [ 0, %52 ]
  %78 = phi float [ %75, %74 ], [ 0x7FF8000000000000, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %79 = insertelement <16 x float> %55, float %78, i32 2
  %80 = extractelement <16 x float> %4, i32 3
  %81 = extractelement <16 x float> %5, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %82 = icmp eq i8 %77, 0
  br i1 %82, label %100, label %83

; <label>:83:                                     ; preds = %76, %93
  %84 = phi i8 [ %94, %93 ], [ %77, %76 ]
  %85 = phi i64 [ %95, %93 ], [ 0, %76 ]
  %86 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %85, i32 1
  %87 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %86, align 8, !tbaa !22
  %88 = icmp eq void (float, float, float*, i8*)* %87, null
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %85
  %91 = load i8*, i8** %90, align 8, !tbaa !16
  call void %87(float %80, float %81, float* nonnull %3, i8* %91) #9
  %92 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %93

; <label>:93:                                     ; preds = %89, %83
  %94 = phi i8 [ %84, %83 ], [ %92, %89 ]
  %95 = add nuw nsw i64 %85, 1
  %96 = zext i8 %94 to i64
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %83, label %98

; <label>:98:                                     ; preds = %93
  %99 = load float, float* %3, align 4, !tbaa !30
  br label %100

; <label>:100:                                    ; preds = %98, %76
  %101 = phi i8 [ %94, %98 ], [ 0, %76 ]
  %102 = phi float [ %99, %98 ], [ 0x7FF8000000000000, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %103 = insertelement <16 x float> %79, float %102, i32 3
  %104 = extractelement <16 x float> %4, i32 4
  %105 = extractelement <16 x float> %5, i32 4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %106 = icmp eq i8 %101, 0
  br i1 %106, label %124, label %107

; <label>:107:                                    ; preds = %100, %117
  %108 = phi i8 [ %118, %117 ], [ %101, %100 ]
  %109 = phi i64 [ %119, %117 ], [ 0, %100 ]
  %110 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %109, i32 1
  %111 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %110, align 8, !tbaa !22
  %112 = icmp eq void (float, float, float*, i8*)* %111, null
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %109
  %115 = load i8*, i8** %114, align 8, !tbaa !16
  call void %111(float %104, float %105, float* nonnull %3, i8* %115) #9
  %116 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %117

; <label>:117:                                    ; preds = %113, %107
  %118 = phi i8 [ %108, %107 ], [ %116, %113 ]
  %119 = add nuw nsw i64 %109, 1
  %120 = zext i8 %118 to i64
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %107, label %122

; <label>:122:                                    ; preds = %117
  %123 = load float, float* %3, align 4, !tbaa !30
  br label %124

; <label>:124:                                    ; preds = %122, %100
  %125 = phi i8 [ %118, %122 ], [ 0, %100 ]
  %126 = phi float [ %123, %122 ], [ 0x7FF8000000000000, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %127 = insertelement <16 x float> %103, float %126, i32 4
  %128 = extractelement <16 x float> %4, i32 5
  %129 = extractelement <16 x float> %5, i32 5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %130 = icmp eq i8 %125, 0
  br i1 %130, label %148, label %131

; <label>:131:                                    ; preds = %124, %141
  %132 = phi i8 [ %142, %141 ], [ %125, %124 ]
  %133 = phi i64 [ %143, %141 ], [ 0, %124 ]
  %134 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %133, i32 1
  %135 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %134, align 8, !tbaa !22
  %136 = icmp eq void (float, float, float*, i8*)* %135, null
  br i1 %136, label %141, label %137

; <label>:137:                                    ; preds = %131
  %138 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %133
  %139 = load i8*, i8** %138, align 8, !tbaa !16
  call void %135(float %128, float %129, float* nonnull %3, i8* %139) #9
  %140 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %141

; <label>:141:                                    ; preds = %137, %131
  %142 = phi i8 [ %132, %131 ], [ %140, %137 ]
  %143 = add nuw nsw i64 %133, 1
  %144 = zext i8 %142 to i64
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %131, label %146

; <label>:146:                                    ; preds = %141
  %147 = load float, float* %3, align 4, !tbaa !30
  br label %148

; <label>:148:                                    ; preds = %146, %124
  %149 = phi i8 [ %142, %146 ], [ 0, %124 ]
  %150 = phi float [ %147, %146 ], [ 0x7FF8000000000000, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %151 = insertelement <16 x float> %127, float %150, i32 5
  %152 = extractelement <16 x float> %4, i32 6
  %153 = extractelement <16 x float> %5, i32 6
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %154 = icmp eq i8 %149, 0
  br i1 %154, label %172, label %155

; <label>:155:                                    ; preds = %148, %165
  %156 = phi i8 [ %166, %165 ], [ %149, %148 ]
  %157 = phi i64 [ %167, %165 ], [ 0, %148 ]
  %158 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %157, i32 1
  %159 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %158, align 8, !tbaa !22
  %160 = icmp eq void (float, float, float*, i8*)* %159, null
  br i1 %160, label %165, label %161

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %157
  %163 = load i8*, i8** %162, align 8, !tbaa !16
  call void %159(float %152, float %153, float* nonnull %3, i8* %163) #9
  %164 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %165

; <label>:165:                                    ; preds = %161, %155
  %166 = phi i8 [ %156, %155 ], [ %164, %161 ]
  %167 = add nuw nsw i64 %157, 1
  %168 = zext i8 %166 to i64
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %155, label %170

; <label>:170:                                    ; preds = %165
  %171 = load float, float* %3, align 4, !tbaa !30
  br label %172

; <label>:172:                                    ; preds = %170, %148
  %173 = phi i8 [ %166, %170 ], [ 0, %148 ]
  %174 = phi float [ %171, %170 ], [ 0x7FF8000000000000, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %175 = insertelement <16 x float> %151, float %174, i32 6
  %176 = extractelement <16 x float> %4, i32 7
  %177 = extractelement <16 x float> %5, i32 7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %178 = icmp eq i8 %173, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %172, %189
  %180 = phi i8 [ %190, %189 ], [ %173, %172 ]
  %181 = phi i64 [ %191, %189 ], [ 0, %172 ]
  %182 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %181, i32 1
  %183 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %182, align 8, !tbaa !22
  %184 = icmp eq void (float, float, float*, i8*)* %183, null
  br i1 %184, label %189, label %185

; <label>:185:                                    ; preds = %179
  %186 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %181
  %187 = load i8*, i8** %186, align 8, !tbaa !16
  call void %183(float %176, float %177, float* nonnull %3, i8* %187) #9
  %188 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %189

; <label>:189:                                    ; preds = %185, %179
  %190 = phi i8 [ %180, %179 ], [ %188, %185 ]
  %191 = add nuw nsw i64 %181, 1
  %192 = zext i8 %190 to i64
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %179, label %194

; <label>:194:                                    ; preds = %189
  %195 = load float, float* %3, align 4, !tbaa !30
  br label %196

; <label>:196:                                    ; preds = %194, %172
  %197 = phi i8 [ %190, %194 ], [ 0, %172 ]
  %198 = phi float [ %195, %194 ], [ 0x7FF8000000000000, %172 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %199 = insertelement <16 x float> %175, float %198, i32 7
  %200 = extractelement <16 x float> %4, i32 8
  %201 = extractelement <16 x float> %5, i32 8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %202 = icmp eq i8 %197, 0
  br i1 %202, label %220, label %203

; <label>:203:                                    ; preds = %196, %213
  %204 = phi i8 [ %214, %213 ], [ %197, %196 ]
  %205 = phi i64 [ %215, %213 ], [ 0, %196 ]
  %206 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %205, i32 1
  %207 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %206, align 8, !tbaa !22
  %208 = icmp eq void (float, float, float*, i8*)* %207, null
  br i1 %208, label %213, label %209

; <label>:209:                                    ; preds = %203
  %210 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %205
  %211 = load i8*, i8** %210, align 8, !tbaa !16
  call void %207(float %200, float %201, float* nonnull %3, i8* %211) #9
  %212 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %213

; <label>:213:                                    ; preds = %209, %203
  %214 = phi i8 [ %204, %203 ], [ %212, %209 ]
  %215 = add nuw nsw i64 %205, 1
  %216 = zext i8 %214 to i64
  %217 = icmp ult i64 %215, %216
  br i1 %217, label %203, label %218

; <label>:218:                                    ; preds = %213
  %219 = load float, float* %3, align 4, !tbaa !30
  br label %220

; <label>:220:                                    ; preds = %218, %196
  %221 = phi i8 [ %214, %218 ], [ 0, %196 ]
  %222 = phi float [ %219, %218 ], [ 0x7FF8000000000000, %196 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %223 = insertelement <16 x float> %199, float %222, i32 8
  %224 = extractelement <16 x float> %4, i32 9
  %225 = extractelement <16 x float> %5, i32 9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %226 = icmp eq i8 %221, 0
  br i1 %226, label %244, label %227

; <label>:227:                                    ; preds = %220, %237
  %228 = phi i8 [ %238, %237 ], [ %221, %220 ]
  %229 = phi i64 [ %239, %237 ], [ 0, %220 ]
  %230 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %229, i32 1
  %231 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %230, align 8, !tbaa !22
  %232 = icmp eq void (float, float, float*, i8*)* %231, null
  br i1 %232, label %237, label %233

; <label>:233:                                    ; preds = %227
  %234 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %229
  %235 = load i8*, i8** %234, align 8, !tbaa !16
  call void %231(float %224, float %225, float* nonnull %3, i8* %235) #9
  %236 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %237

; <label>:237:                                    ; preds = %233, %227
  %238 = phi i8 [ %228, %227 ], [ %236, %233 ]
  %239 = add nuw nsw i64 %229, 1
  %240 = zext i8 %238 to i64
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %227, label %242

; <label>:242:                                    ; preds = %237
  %243 = load float, float* %3, align 4, !tbaa !30
  br label %244

; <label>:244:                                    ; preds = %242, %220
  %245 = phi i8 [ %238, %242 ], [ 0, %220 ]
  %246 = phi float [ %243, %242 ], [ 0x7FF8000000000000, %220 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %247 = insertelement <16 x float> %223, float %246, i32 9
  %248 = extractelement <16 x float> %4, i32 10
  %249 = extractelement <16 x float> %5, i32 10
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %250 = icmp eq i8 %245, 0
  br i1 %250, label %268, label %251

; <label>:251:                                    ; preds = %244, %261
  %252 = phi i8 [ %262, %261 ], [ %245, %244 ]
  %253 = phi i64 [ %263, %261 ], [ 0, %244 ]
  %254 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %253, i32 1
  %255 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %254, align 8, !tbaa !22
  %256 = icmp eq void (float, float, float*, i8*)* %255, null
  br i1 %256, label %261, label %257

; <label>:257:                                    ; preds = %251
  %258 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %253
  %259 = load i8*, i8** %258, align 8, !tbaa !16
  call void %255(float %248, float %249, float* nonnull %3, i8* %259) #9
  %260 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %261

; <label>:261:                                    ; preds = %257, %251
  %262 = phi i8 [ %252, %251 ], [ %260, %257 ]
  %263 = add nuw nsw i64 %253, 1
  %264 = zext i8 %262 to i64
  %265 = icmp ult i64 %263, %264
  br i1 %265, label %251, label %266

; <label>:266:                                    ; preds = %261
  %267 = load float, float* %3, align 4, !tbaa !30
  br label %268

; <label>:268:                                    ; preds = %266, %244
  %269 = phi i8 [ %262, %266 ], [ 0, %244 ]
  %270 = phi float [ %267, %266 ], [ 0x7FF8000000000000, %244 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %271 = insertelement <16 x float> %247, float %270, i32 10
  %272 = extractelement <16 x float> %4, i32 11
  %273 = extractelement <16 x float> %5, i32 11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %274 = icmp eq i8 %269, 0
  br i1 %274, label %292, label %275

; <label>:275:                                    ; preds = %268, %285
  %276 = phi i8 [ %286, %285 ], [ %269, %268 ]
  %277 = phi i64 [ %287, %285 ], [ 0, %268 ]
  %278 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %277, i32 1
  %279 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %278, align 8, !tbaa !22
  %280 = icmp eq void (float, float, float*, i8*)* %279, null
  br i1 %280, label %285, label %281

; <label>:281:                                    ; preds = %275
  %282 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %277
  %283 = load i8*, i8** %282, align 8, !tbaa !16
  call void %279(float %272, float %273, float* nonnull %3, i8* %283) #9
  %284 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %285

; <label>:285:                                    ; preds = %281, %275
  %286 = phi i8 [ %276, %275 ], [ %284, %281 ]
  %287 = add nuw nsw i64 %277, 1
  %288 = zext i8 %286 to i64
  %289 = icmp ult i64 %287, %288
  br i1 %289, label %275, label %290

; <label>:290:                                    ; preds = %285
  %291 = load float, float* %3, align 4, !tbaa !30
  br label %292

; <label>:292:                                    ; preds = %290, %268
  %293 = phi i8 [ %286, %290 ], [ 0, %268 ]
  %294 = phi float [ %291, %290 ], [ 0x7FF8000000000000, %268 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %295 = insertelement <16 x float> %271, float %294, i32 11
  %296 = extractelement <16 x float> %4, i32 12
  %297 = extractelement <16 x float> %5, i32 12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %298 = icmp eq i8 %293, 0
  br i1 %298, label %316, label %299

; <label>:299:                                    ; preds = %292, %309
  %300 = phi i8 [ %310, %309 ], [ %293, %292 ]
  %301 = phi i64 [ %311, %309 ], [ 0, %292 ]
  %302 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %301, i32 1
  %303 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %302, align 8, !tbaa !22
  %304 = icmp eq void (float, float, float*, i8*)* %303, null
  br i1 %304, label %309, label %305

; <label>:305:                                    ; preds = %299
  %306 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %301
  %307 = load i8*, i8** %306, align 8, !tbaa !16
  call void %303(float %296, float %297, float* nonnull %3, i8* %307) #9
  %308 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %309

; <label>:309:                                    ; preds = %305, %299
  %310 = phi i8 [ %300, %299 ], [ %308, %305 ]
  %311 = add nuw nsw i64 %301, 1
  %312 = zext i8 %310 to i64
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %299, label %314

; <label>:314:                                    ; preds = %309
  %315 = load float, float* %3, align 4, !tbaa !30
  br label %316

; <label>:316:                                    ; preds = %314, %292
  %317 = phi i8 [ %310, %314 ], [ 0, %292 ]
  %318 = phi float [ %315, %314 ], [ 0x7FF8000000000000, %292 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %319 = insertelement <16 x float> %295, float %318, i32 12
  %320 = extractelement <16 x float> %4, i32 13
  %321 = extractelement <16 x float> %5, i32 13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %322 = icmp eq i8 %317, 0
  br i1 %322, label %340, label %323

; <label>:323:                                    ; preds = %316, %333
  %324 = phi i8 [ %334, %333 ], [ %317, %316 ]
  %325 = phi i64 [ %335, %333 ], [ 0, %316 ]
  %326 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %325, i32 1
  %327 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %326, align 8, !tbaa !22
  %328 = icmp eq void (float, float, float*, i8*)* %327, null
  br i1 %328, label %333, label %329

; <label>:329:                                    ; preds = %323
  %330 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %325
  %331 = load i8*, i8** %330, align 8, !tbaa !16
  call void %327(float %320, float %321, float* nonnull %3, i8* %331) #9
  %332 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %333

; <label>:333:                                    ; preds = %329, %323
  %334 = phi i8 [ %324, %323 ], [ %332, %329 ]
  %335 = add nuw nsw i64 %325, 1
  %336 = zext i8 %334 to i64
  %337 = icmp ult i64 %335, %336
  br i1 %337, label %323, label %338

; <label>:338:                                    ; preds = %333
  %339 = load float, float* %3, align 4, !tbaa !30
  br label %340

; <label>:340:                                    ; preds = %338, %316
  %341 = phi i8 [ %334, %338 ], [ 0, %316 ]
  %342 = phi float [ %339, %338 ], [ 0x7FF8000000000000, %316 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %343 = insertelement <16 x float> %319, float %342, i32 13
  %344 = extractelement <16 x float> %4, i32 14
  %345 = extractelement <16 x float> %5, i32 14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %346 = icmp eq i8 %341, 0
  br i1 %346, label %364, label %347

; <label>:347:                                    ; preds = %340, %357
  %348 = phi i8 [ %358, %357 ], [ %341, %340 ]
  %349 = phi i64 [ %359, %357 ], [ 0, %340 ]
  %350 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %349, i32 1
  %351 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %350, align 8, !tbaa !22
  %352 = icmp eq void (float, float, float*, i8*)* %351, null
  br i1 %352, label %357, label %353

; <label>:353:                                    ; preds = %347
  %354 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %349
  %355 = load i8*, i8** %354, align 8, !tbaa !16
  call void %351(float %344, float %345, float* nonnull %3, i8* %355) #9
  %356 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %357

; <label>:357:                                    ; preds = %353, %347
  %358 = phi i8 [ %348, %347 ], [ %356, %353 ]
  %359 = add nuw nsw i64 %349, 1
  %360 = zext i8 %358 to i64
  %361 = icmp ult i64 %359, %360
  br i1 %361, label %347, label %362

; <label>:362:                                    ; preds = %357
  %363 = load float, float* %3, align 4, !tbaa !30
  br label %364

; <label>:364:                                    ; preds = %362, %340
  %365 = phi i8 [ %358, %362 ], [ 0, %340 ]
  %366 = phi float [ %363, %362 ], [ 0x7FF8000000000000, %340 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %367 = insertelement <16 x float> %343, float %366, i32 14
  %368 = extractelement <16 x float> %4, i32 15
  %369 = extractelement <16 x float> %5, i32 15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %370 = icmp eq i8 %365, 0
  br i1 %370, label %388, label %371

; <label>:371:                                    ; preds = %364, %381
  %372 = phi i8 [ %382, %381 ], [ %365, %364 ]
  %373 = phi i64 [ %383, %381 ], [ 0, %364 ]
  %374 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %373, i32 1
  %375 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %374, align 8, !tbaa !22
  %376 = icmp eq void (float, float, float*, i8*)* %375, null
  br i1 %376, label %381, label %377

; <label>:377:                                    ; preds = %371
  %378 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %373
  %379 = load i8*, i8** %378, align 8, !tbaa !16
  call void %375(float %368, float %369, float* nonnull %3, i8* %379) #9
  %380 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %381

; <label>:381:                                    ; preds = %377, %371
  %382 = phi i8 [ %372, %371 ], [ %380, %377 ]
  %383 = add nuw nsw i64 %373, 1
  %384 = zext i8 %382 to i64
  %385 = icmp ult i64 %383, %384
  br i1 %385, label %371, label %386

; <label>:386:                                    ; preds = %381
  %387 = load float, float* %3, align 4, !tbaa !30
  br label %388

; <label>:388:                                    ; preds = %386, %364
  %389 = phi float [ %387, %386 ], [ 0x7FF8000000000000, %364 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %390 = insertelement <16 x float> %367, float %389, i32 15
  ret <16 x float> %390
}

; Function Attrs: nounwind uwtable
define <16 x float> @_16xfloatmul(<16 x float>* byval nocapture readonly align 64, <16 x float>* byval nocapture readonly align 64) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = load <16 x float>, <16 x float>* %0, align 64, !tbaa !17
  %5 = load <16 x float>, <16 x float>* %1, align 64, !tbaa !17
  %6 = bitcast float* %3 to i8*
  %7 = extractelement <16 x float> %4, i32 0
  %8 = extractelement <16 x float> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load float, float* %3, align 4, !tbaa !30
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 2
  %17 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %16, align 16, !tbaa !23
  %18 = icmp eq void (float, float, float*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(float %7, float %8, float* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi float [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %31 = insertelement <16 x float> undef, float %30, i32 0
  %32 = extractelement <16 x float> %4, i32 1
  %33 = extractelement <16 x float> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 2
  %39 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %38, align 16, !tbaa !23
  %40 = icmp eq void (float, float, float*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(float %32, float %33, float* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load float, float* %3, align 4, !tbaa !30
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi i8 [ %46, %50 ], [ 0, %28 ]
  %54 = phi float [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %55 = insertelement <16 x float> %31, float %54, i32 1
  %56 = extractelement <16 x float> %4, i32 2
  %57 = extractelement <16 x float> %5, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %58 = icmp eq i8 %53, 0
  br i1 %58, label %76, label %59

; <label>:59:                                     ; preds = %52, %69
  %60 = phi i8 [ %70, %69 ], [ %53, %52 ]
  %61 = phi i64 [ %71, %69 ], [ 0, %52 ]
  %62 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %61, i32 2
  %63 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %62, align 16, !tbaa !23
  %64 = icmp eq void (float, float, float*, i8*)* %63, null
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %61
  %67 = load i8*, i8** %66, align 8, !tbaa !16
  call void %63(float %56, float %57, float* nonnull %3, i8* %67) #9
  %68 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %69

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8 [ %60, %59 ], [ %68, %65 ]
  %71 = add nuw nsw i64 %61, 1
  %72 = zext i8 %70 to i64
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %59, label %74

; <label>:74:                                     ; preds = %69
  %75 = load float, float* %3, align 4, !tbaa !30
  br label %76

; <label>:76:                                     ; preds = %74, %52
  %77 = phi i8 [ %70, %74 ], [ 0, %52 ]
  %78 = phi float [ %75, %74 ], [ 0x7FF8000000000000, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %79 = insertelement <16 x float> %55, float %78, i32 2
  %80 = extractelement <16 x float> %4, i32 3
  %81 = extractelement <16 x float> %5, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %82 = icmp eq i8 %77, 0
  br i1 %82, label %100, label %83

; <label>:83:                                     ; preds = %76, %93
  %84 = phi i8 [ %94, %93 ], [ %77, %76 ]
  %85 = phi i64 [ %95, %93 ], [ 0, %76 ]
  %86 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %85, i32 2
  %87 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %86, align 16, !tbaa !23
  %88 = icmp eq void (float, float, float*, i8*)* %87, null
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %85
  %91 = load i8*, i8** %90, align 8, !tbaa !16
  call void %87(float %80, float %81, float* nonnull %3, i8* %91) #9
  %92 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %93

; <label>:93:                                     ; preds = %89, %83
  %94 = phi i8 [ %84, %83 ], [ %92, %89 ]
  %95 = add nuw nsw i64 %85, 1
  %96 = zext i8 %94 to i64
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %83, label %98

; <label>:98:                                     ; preds = %93
  %99 = load float, float* %3, align 4, !tbaa !30
  br label %100

; <label>:100:                                    ; preds = %98, %76
  %101 = phi i8 [ %94, %98 ], [ 0, %76 ]
  %102 = phi float [ %99, %98 ], [ 0x7FF8000000000000, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %103 = insertelement <16 x float> %79, float %102, i32 3
  %104 = extractelement <16 x float> %4, i32 4
  %105 = extractelement <16 x float> %5, i32 4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %106 = icmp eq i8 %101, 0
  br i1 %106, label %124, label %107

; <label>:107:                                    ; preds = %100, %117
  %108 = phi i8 [ %118, %117 ], [ %101, %100 ]
  %109 = phi i64 [ %119, %117 ], [ 0, %100 ]
  %110 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %109, i32 2
  %111 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %110, align 16, !tbaa !23
  %112 = icmp eq void (float, float, float*, i8*)* %111, null
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %109
  %115 = load i8*, i8** %114, align 8, !tbaa !16
  call void %111(float %104, float %105, float* nonnull %3, i8* %115) #9
  %116 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %117

; <label>:117:                                    ; preds = %113, %107
  %118 = phi i8 [ %108, %107 ], [ %116, %113 ]
  %119 = add nuw nsw i64 %109, 1
  %120 = zext i8 %118 to i64
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %107, label %122

; <label>:122:                                    ; preds = %117
  %123 = load float, float* %3, align 4, !tbaa !30
  br label %124

; <label>:124:                                    ; preds = %122, %100
  %125 = phi i8 [ %118, %122 ], [ 0, %100 ]
  %126 = phi float [ %123, %122 ], [ 0x7FF8000000000000, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %127 = insertelement <16 x float> %103, float %126, i32 4
  %128 = extractelement <16 x float> %4, i32 5
  %129 = extractelement <16 x float> %5, i32 5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %130 = icmp eq i8 %125, 0
  br i1 %130, label %148, label %131

; <label>:131:                                    ; preds = %124, %141
  %132 = phi i8 [ %142, %141 ], [ %125, %124 ]
  %133 = phi i64 [ %143, %141 ], [ 0, %124 ]
  %134 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %133, i32 2
  %135 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %134, align 16, !tbaa !23
  %136 = icmp eq void (float, float, float*, i8*)* %135, null
  br i1 %136, label %141, label %137

; <label>:137:                                    ; preds = %131
  %138 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %133
  %139 = load i8*, i8** %138, align 8, !tbaa !16
  call void %135(float %128, float %129, float* nonnull %3, i8* %139) #9
  %140 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %141

; <label>:141:                                    ; preds = %137, %131
  %142 = phi i8 [ %132, %131 ], [ %140, %137 ]
  %143 = add nuw nsw i64 %133, 1
  %144 = zext i8 %142 to i64
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %131, label %146

; <label>:146:                                    ; preds = %141
  %147 = load float, float* %3, align 4, !tbaa !30
  br label %148

; <label>:148:                                    ; preds = %146, %124
  %149 = phi i8 [ %142, %146 ], [ 0, %124 ]
  %150 = phi float [ %147, %146 ], [ 0x7FF8000000000000, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %151 = insertelement <16 x float> %127, float %150, i32 5
  %152 = extractelement <16 x float> %4, i32 6
  %153 = extractelement <16 x float> %5, i32 6
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %154 = icmp eq i8 %149, 0
  br i1 %154, label %172, label %155

; <label>:155:                                    ; preds = %148, %165
  %156 = phi i8 [ %166, %165 ], [ %149, %148 ]
  %157 = phi i64 [ %167, %165 ], [ 0, %148 ]
  %158 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %157, i32 2
  %159 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %158, align 16, !tbaa !23
  %160 = icmp eq void (float, float, float*, i8*)* %159, null
  br i1 %160, label %165, label %161

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %157
  %163 = load i8*, i8** %162, align 8, !tbaa !16
  call void %159(float %152, float %153, float* nonnull %3, i8* %163) #9
  %164 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %165

; <label>:165:                                    ; preds = %161, %155
  %166 = phi i8 [ %156, %155 ], [ %164, %161 ]
  %167 = add nuw nsw i64 %157, 1
  %168 = zext i8 %166 to i64
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %155, label %170

; <label>:170:                                    ; preds = %165
  %171 = load float, float* %3, align 4, !tbaa !30
  br label %172

; <label>:172:                                    ; preds = %170, %148
  %173 = phi i8 [ %166, %170 ], [ 0, %148 ]
  %174 = phi float [ %171, %170 ], [ 0x7FF8000000000000, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %175 = insertelement <16 x float> %151, float %174, i32 6
  %176 = extractelement <16 x float> %4, i32 7
  %177 = extractelement <16 x float> %5, i32 7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %178 = icmp eq i8 %173, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %172, %189
  %180 = phi i8 [ %190, %189 ], [ %173, %172 ]
  %181 = phi i64 [ %191, %189 ], [ 0, %172 ]
  %182 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %181, i32 2
  %183 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %182, align 16, !tbaa !23
  %184 = icmp eq void (float, float, float*, i8*)* %183, null
  br i1 %184, label %189, label %185

; <label>:185:                                    ; preds = %179
  %186 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %181
  %187 = load i8*, i8** %186, align 8, !tbaa !16
  call void %183(float %176, float %177, float* nonnull %3, i8* %187) #9
  %188 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %189

; <label>:189:                                    ; preds = %185, %179
  %190 = phi i8 [ %180, %179 ], [ %188, %185 ]
  %191 = add nuw nsw i64 %181, 1
  %192 = zext i8 %190 to i64
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %179, label %194

; <label>:194:                                    ; preds = %189
  %195 = load float, float* %3, align 4, !tbaa !30
  br label %196

; <label>:196:                                    ; preds = %194, %172
  %197 = phi i8 [ %190, %194 ], [ 0, %172 ]
  %198 = phi float [ %195, %194 ], [ 0x7FF8000000000000, %172 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %199 = insertelement <16 x float> %175, float %198, i32 7
  %200 = extractelement <16 x float> %4, i32 8
  %201 = extractelement <16 x float> %5, i32 8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %202 = icmp eq i8 %197, 0
  br i1 %202, label %220, label %203

; <label>:203:                                    ; preds = %196, %213
  %204 = phi i8 [ %214, %213 ], [ %197, %196 ]
  %205 = phi i64 [ %215, %213 ], [ 0, %196 ]
  %206 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %205, i32 2
  %207 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %206, align 16, !tbaa !23
  %208 = icmp eq void (float, float, float*, i8*)* %207, null
  br i1 %208, label %213, label %209

; <label>:209:                                    ; preds = %203
  %210 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %205
  %211 = load i8*, i8** %210, align 8, !tbaa !16
  call void %207(float %200, float %201, float* nonnull %3, i8* %211) #9
  %212 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %213

; <label>:213:                                    ; preds = %209, %203
  %214 = phi i8 [ %204, %203 ], [ %212, %209 ]
  %215 = add nuw nsw i64 %205, 1
  %216 = zext i8 %214 to i64
  %217 = icmp ult i64 %215, %216
  br i1 %217, label %203, label %218

; <label>:218:                                    ; preds = %213
  %219 = load float, float* %3, align 4, !tbaa !30
  br label %220

; <label>:220:                                    ; preds = %218, %196
  %221 = phi i8 [ %214, %218 ], [ 0, %196 ]
  %222 = phi float [ %219, %218 ], [ 0x7FF8000000000000, %196 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %223 = insertelement <16 x float> %199, float %222, i32 8
  %224 = extractelement <16 x float> %4, i32 9
  %225 = extractelement <16 x float> %5, i32 9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %226 = icmp eq i8 %221, 0
  br i1 %226, label %244, label %227

; <label>:227:                                    ; preds = %220, %237
  %228 = phi i8 [ %238, %237 ], [ %221, %220 ]
  %229 = phi i64 [ %239, %237 ], [ 0, %220 ]
  %230 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %229, i32 2
  %231 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %230, align 16, !tbaa !23
  %232 = icmp eq void (float, float, float*, i8*)* %231, null
  br i1 %232, label %237, label %233

; <label>:233:                                    ; preds = %227
  %234 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %229
  %235 = load i8*, i8** %234, align 8, !tbaa !16
  call void %231(float %224, float %225, float* nonnull %3, i8* %235) #9
  %236 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %237

; <label>:237:                                    ; preds = %233, %227
  %238 = phi i8 [ %228, %227 ], [ %236, %233 ]
  %239 = add nuw nsw i64 %229, 1
  %240 = zext i8 %238 to i64
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %227, label %242

; <label>:242:                                    ; preds = %237
  %243 = load float, float* %3, align 4, !tbaa !30
  br label %244

; <label>:244:                                    ; preds = %242, %220
  %245 = phi i8 [ %238, %242 ], [ 0, %220 ]
  %246 = phi float [ %243, %242 ], [ 0x7FF8000000000000, %220 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %247 = insertelement <16 x float> %223, float %246, i32 9
  %248 = extractelement <16 x float> %4, i32 10
  %249 = extractelement <16 x float> %5, i32 10
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %250 = icmp eq i8 %245, 0
  br i1 %250, label %268, label %251

; <label>:251:                                    ; preds = %244, %261
  %252 = phi i8 [ %262, %261 ], [ %245, %244 ]
  %253 = phi i64 [ %263, %261 ], [ 0, %244 ]
  %254 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %253, i32 2
  %255 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %254, align 16, !tbaa !23
  %256 = icmp eq void (float, float, float*, i8*)* %255, null
  br i1 %256, label %261, label %257

; <label>:257:                                    ; preds = %251
  %258 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %253
  %259 = load i8*, i8** %258, align 8, !tbaa !16
  call void %255(float %248, float %249, float* nonnull %3, i8* %259) #9
  %260 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %261

; <label>:261:                                    ; preds = %257, %251
  %262 = phi i8 [ %252, %251 ], [ %260, %257 ]
  %263 = add nuw nsw i64 %253, 1
  %264 = zext i8 %262 to i64
  %265 = icmp ult i64 %263, %264
  br i1 %265, label %251, label %266

; <label>:266:                                    ; preds = %261
  %267 = load float, float* %3, align 4, !tbaa !30
  br label %268

; <label>:268:                                    ; preds = %266, %244
  %269 = phi i8 [ %262, %266 ], [ 0, %244 ]
  %270 = phi float [ %267, %266 ], [ 0x7FF8000000000000, %244 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %271 = insertelement <16 x float> %247, float %270, i32 10
  %272 = extractelement <16 x float> %4, i32 11
  %273 = extractelement <16 x float> %5, i32 11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %274 = icmp eq i8 %269, 0
  br i1 %274, label %292, label %275

; <label>:275:                                    ; preds = %268, %285
  %276 = phi i8 [ %286, %285 ], [ %269, %268 ]
  %277 = phi i64 [ %287, %285 ], [ 0, %268 ]
  %278 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %277, i32 2
  %279 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %278, align 16, !tbaa !23
  %280 = icmp eq void (float, float, float*, i8*)* %279, null
  br i1 %280, label %285, label %281

; <label>:281:                                    ; preds = %275
  %282 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %277
  %283 = load i8*, i8** %282, align 8, !tbaa !16
  call void %279(float %272, float %273, float* nonnull %3, i8* %283) #9
  %284 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %285

; <label>:285:                                    ; preds = %281, %275
  %286 = phi i8 [ %276, %275 ], [ %284, %281 ]
  %287 = add nuw nsw i64 %277, 1
  %288 = zext i8 %286 to i64
  %289 = icmp ult i64 %287, %288
  br i1 %289, label %275, label %290

; <label>:290:                                    ; preds = %285
  %291 = load float, float* %3, align 4, !tbaa !30
  br label %292

; <label>:292:                                    ; preds = %290, %268
  %293 = phi i8 [ %286, %290 ], [ 0, %268 ]
  %294 = phi float [ %291, %290 ], [ 0x7FF8000000000000, %268 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %295 = insertelement <16 x float> %271, float %294, i32 11
  %296 = extractelement <16 x float> %4, i32 12
  %297 = extractelement <16 x float> %5, i32 12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %298 = icmp eq i8 %293, 0
  br i1 %298, label %316, label %299

; <label>:299:                                    ; preds = %292, %309
  %300 = phi i8 [ %310, %309 ], [ %293, %292 ]
  %301 = phi i64 [ %311, %309 ], [ 0, %292 ]
  %302 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %301, i32 2
  %303 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %302, align 16, !tbaa !23
  %304 = icmp eq void (float, float, float*, i8*)* %303, null
  br i1 %304, label %309, label %305

; <label>:305:                                    ; preds = %299
  %306 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %301
  %307 = load i8*, i8** %306, align 8, !tbaa !16
  call void %303(float %296, float %297, float* nonnull %3, i8* %307) #9
  %308 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %309

; <label>:309:                                    ; preds = %305, %299
  %310 = phi i8 [ %300, %299 ], [ %308, %305 ]
  %311 = add nuw nsw i64 %301, 1
  %312 = zext i8 %310 to i64
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %299, label %314

; <label>:314:                                    ; preds = %309
  %315 = load float, float* %3, align 4, !tbaa !30
  br label %316

; <label>:316:                                    ; preds = %314, %292
  %317 = phi i8 [ %310, %314 ], [ 0, %292 ]
  %318 = phi float [ %315, %314 ], [ 0x7FF8000000000000, %292 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %319 = insertelement <16 x float> %295, float %318, i32 12
  %320 = extractelement <16 x float> %4, i32 13
  %321 = extractelement <16 x float> %5, i32 13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %322 = icmp eq i8 %317, 0
  br i1 %322, label %340, label %323

; <label>:323:                                    ; preds = %316, %333
  %324 = phi i8 [ %334, %333 ], [ %317, %316 ]
  %325 = phi i64 [ %335, %333 ], [ 0, %316 ]
  %326 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %325, i32 2
  %327 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %326, align 16, !tbaa !23
  %328 = icmp eq void (float, float, float*, i8*)* %327, null
  br i1 %328, label %333, label %329

; <label>:329:                                    ; preds = %323
  %330 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %325
  %331 = load i8*, i8** %330, align 8, !tbaa !16
  call void %327(float %320, float %321, float* nonnull %3, i8* %331) #9
  %332 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %333

; <label>:333:                                    ; preds = %329, %323
  %334 = phi i8 [ %324, %323 ], [ %332, %329 ]
  %335 = add nuw nsw i64 %325, 1
  %336 = zext i8 %334 to i64
  %337 = icmp ult i64 %335, %336
  br i1 %337, label %323, label %338

; <label>:338:                                    ; preds = %333
  %339 = load float, float* %3, align 4, !tbaa !30
  br label %340

; <label>:340:                                    ; preds = %338, %316
  %341 = phi i8 [ %334, %338 ], [ 0, %316 ]
  %342 = phi float [ %339, %338 ], [ 0x7FF8000000000000, %316 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %343 = insertelement <16 x float> %319, float %342, i32 13
  %344 = extractelement <16 x float> %4, i32 14
  %345 = extractelement <16 x float> %5, i32 14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %346 = icmp eq i8 %341, 0
  br i1 %346, label %364, label %347

; <label>:347:                                    ; preds = %340, %357
  %348 = phi i8 [ %358, %357 ], [ %341, %340 ]
  %349 = phi i64 [ %359, %357 ], [ 0, %340 ]
  %350 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %349, i32 2
  %351 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %350, align 16, !tbaa !23
  %352 = icmp eq void (float, float, float*, i8*)* %351, null
  br i1 %352, label %357, label %353

; <label>:353:                                    ; preds = %347
  %354 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %349
  %355 = load i8*, i8** %354, align 8, !tbaa !16
  call void %351(float %344, float %345, float* nonnull %3, i8* %355) #9
  %356 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %357

; <label>:357:                                    ; preds = %353, %347
  %358 = phi i8 [ %348, %347 ], [ %356, %353 ]
  %359 = add nuw nsw i64 %349, 1
  %360 = zext i8 %358 to i64
  %361 = icmp ult i64 %359, %360
  br i1 %361, label %347, label %362

; <label>:362:                                    ; preds = %357
  %363 = load float, float* %3, align 4, !tbaa !30
  br label %364

; <label>:364:                                    ; preds = %362, %340
  %365 = phi i8 [ %358, %362 ], [ 0, %340 ]
  %366 = phi float [ %363, %362 ], [ 0x7FF8000000000000, %340 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %367 = insertelement <16 x float> %343, float %366, i32 14
  %368 = extractelement <16 x float> %4, i32 15
  %369 = extractelement <16 x float> %5, i32 15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %370 = icmp eq i8 %365, 0
  br i1 %370, label %388, label %371

; <label>:371:                                    ; preds = %364, %381
  %372 = phi i8 [ %382, %381 ], [ %365, %364 ]
  %373 = phi i64 [ %383, %381 ], [ 0, %364 ]
  %374 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %373, i32 2
  %375 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %374, align 16, !tbaa !23
  %376 = icmp eq void (float, float, float*, i8*)* %375, null
  br i1 %376, label %381, label %377

; <label>:377:                                    ; preds = %371
  %378 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %373
  %379 = load i8*, i8** %378, align 8, !tbaa !16
  call void %375(float %368, float %369, float* nonnull %3, i8* %379) #9
  %380 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %381

; <label>:381:                                    ; preds = %377, %371
  %382 = phi i8 [ %372, %371 ], [ %380, %377 ]
  %383 = add nuw nsw i64 %373, 1
  %384 = zext i8 %382 to i64
  %385 = icmp ult i64 %383, %384
  br i1 %385, label %371, label %386

; <label>:386:                                    ; preds = %381
  %387 = load float, float* %3, align 4, !tbaa !30
  br label %388

; <label>:388:                                    ; preds = %386, %364
  %389 = phi float [ %387, %386 ], [ 0x7FF8000000000000, %364 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %390 = insertelement <16 x float> %367, float %389, i32 15
  ret <16 x float> %390
}

; Function Attrs: nounwind uwtable
define <16 x float> @_16xfloatdiv(<16 x float>* byval nocapture readonly align 64, <16 x float>* byval nocapture readonly align 64) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = load <16 x float>, <16 x float>* %0, align 64, !tbaa !17
  %5 = load <16 x float>, <16 x float>* %1, align 64, !tbaa !17
  %6 = bitcast float* %3 to i8*
  %7 = extractelement <16 x float> %4, i32 0
  %8 = extractelement <16 x float> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load float, float* %3, align 4, !tbaa !30
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 3
  %17 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %16, align 8, !tbaa !24
  %18 = icmp eq void (float, float, float*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(float %7, float %8, float* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi float [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %31 = insertelement <16 x float> undef, float %30, i32 0
  %32 = extractelement <16 x float> %4, i32 1
  %33 = extractelement <16 x float> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 3
  %39 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %38, align 8, !tbaa !24
  %40 = icmp eq void (float, float, float*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(float %32, float %33, float* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load float, float* %3, align 4, !tbaa !30
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi i8 [ %46, %50 ], [ 0, %28 ]
  %54 = phi float [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %55 = insertelement <16 x float> %31, float %54, i32 1
  %56 = extractelement <16 x float> %4, i32 2
  %57 = extractelement <16 x float> %5, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %58 = icmp eq i8 %53, 0
  br i1 %58, label %76, label %59

; <label>:59:                                     ; preds = %52, %69
  %60 = phi i8 [ %70, %69 ], [ %53, %52 ]
  %61 = phi i64 [ %71, %69 ], [ 0, %52 ]
  %62 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %61, i32 3
  %63 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %62, align 8, !tbaa !24
  %64 = icmp eq void (float, float, float*, i8*)* %63, null
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %61
  %67 = load i8*, i8** %66, align 8, !tbaa !16
  call void %63(float %56, float %57, float* nonnull %3, i8* %67) #9
  %68 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %69

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8 [ %60, %59 ], [ %68, %65 ]
  %71 = add nuw nsw i64 %61, 1
  %72 = zext i8 %70 to i64
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %59, label %74

; <label>:74:                                     ; preds = %69
  %75 = load float, float* %3, align 4, !tbaa !30
  br label %76

; <label>:76:                                     ; preds = %74, %52
  %77 = phi i8 [ %70, %74 ], [ 0, %52 ]
  %78 = phi float [ %75, %74 ], [ 0x7FF8000000000000, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %79 = insertelement <16 x float> %55, float %78, i32 2
  %80 = extractelement <16 x float> %4, i32 3
  %81 = extractelement <16 x float> %5, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %82 = icmp eq i8 %77, 0
  br i1 %82, label %100, label %83

; <label>:83:                                     ; preds = %76, %93
  %84 = phi i8 [ %94, %93 ], [ %77, %76 ]
  %85 = phi i64 [ %95, %93 ], [ 0, %76 ]
  %86 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %85, i32 3
  %87 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %86, align 8, !tbaa !24
  %88 = icmp eq void (float, float, float*, i8*)* %87, null
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %85
  %91 = load i8*, i8** %90, align 8, !tbaa !16
  call void %87(float %80, float %81, float* nonnull %3, i8* %91) #9
  %92 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %93

; <label>:93:                                     ; preds = %89, %83
  %94 = phi i8 [ %84, %83 ], [ %92, %89 ]
  %95 = add nuw nsw i64 %85, 1
  %96 = zext i8 %94 to i64
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %83, label %98

; <label>:98:                                     ; preds = %93
  %99 = load float, float* %3, align 4, !tbaa !30
  br label %100

; <label>:100:                                    ; preds = %98, %76
  %101 = phi i8 [ %94, %98 ], [ 0, %76 ]
  %102 = phi float [ %99, %98 ], [ 0x7FF8000000000000, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %103 = insertelement <16 x float> %79, float %102, i32 3
  %104 = extractelement <16 x float> %4, i32 4
  %105 = extractelement <16 x float> %5, i32 4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %106 = icmp eq i8 %101, 0
  br i1 %106, label %124, label %107

; <label>:107:                                    ; preds = %100, %117
  %108 = phi i8 [ %118, %117 ], [ %101, %100 ]
  %109 = phi i64 [ %119, %117 ], [ 0, %100 ]
  %110 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %109, i32 3
  %111 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %110, align 8, !tbaa !24
  %112 = icmp eq void (float, float, float*, i8*)* %111, null
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %109
  %115 = load i8*, i8** %114, align 8, !tbaa !16
  call void %111(float %104, float %105, float* nonnull %3, i8* %115) #9
  %116 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %117

; <label>:117:                                    ; preds = %113, %107
  %118 = phi i8 [ %108, %107 ], [ %116, %113 ]
  %119 = add nuw nsw i64 %109, 1
  %120 = zext i8 %118 to i64
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %107, label %122

; <label>:122:                                    ; preds = %117
  %123 = load float, float* %3, align 4, !tbaa !30
  br label %124

; <label>:124:                                    ; preds = %122, %100
  %125 = phi i8 [ %118, %122 ], [ 0, %100 ]
  %126 = phi float [ %123, %122 ], [ 0x7FF8000000000000, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %127 = insertelement <16 x float> %103, float %126, i32 4
  %128 = extractelement <16 x float> %4, i32 5
  %129 = extractelement <16 x float> %5, i32 5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %130 = icmp eq i8 %125, 0
  br i1 %130, label %148, label %131

; <label>:131:                                    ; preds = %124, %141
  %132 = phi i8 [ %142, %141 ], [ %125, %124 ]
  %133 = phi i64 [ %143, %141 ], [ 0, %124 ]
  %134 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %133, i32 3
  %135 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %134, align 8, !tbaa !24
  %136 = icmp eq void (float, float, float*, i8*)* %135, null
  br i1 %136, label %141, label %137

; <label>:137:                                    ; preds = %131
  %138 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %133
  %139 = load i8*, i8** %138, align 8, !tbaa !16
  call void %135(float %128, float %129, float* nonnull %3, i8* %139) #9
  %140 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %141

; <label>:141:                                    ; preds = %137, %131
  %142 = phi i8 [ %132, %131 ], [ %140, %137 ]
  %143 = add nuw nsw i64 %133, 1
  %144 = zext i8 %142 to i64
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %131, label %146

; <label>:146:                                    ; preds = %141
  %147 = load float, float* %3, align 4, !tbaa !30
  br label %148

; <label>:148:                                    ; preds = %146, %124
  %149 = phi i8 [ %142, %146 ], [ 0, %124 ]
  %150 = phi float [ %147, %146 ], [ 0x7FF8000000000000, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %151 = insertelement <16 x float> %127, float %150, i32 5
  %152 = extractelement <16 x float> %4, i32 6
  %153 = extractelement <16 x float> %5, i32 6
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %154 = icmp eq i8 %149, 0
  br i1 %154, label %172, label %155

; <label>:155:                                    ; preds = %148, %165
  %156 = phi i8 [ %166, %165 ], [ %149, %148 ]
  %157 = phi i64 [ %167, %165 ], [ 0, %148 ]
  %158 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %157, i32 3
  %159 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %158, align 8, !tbaa !24
  %160 = icmp eq void (float, float, float*, i8*)* %159, null
  br i1 %160, label %165, label %161

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %157
  %163 = load i8*, i8** %162, align 8, !tbaa !16
  call void %159(float %152, float %153, float* nonnull %3, i8* %163) #9
  %164 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %165

; <label>:165:                                    ; preds = %161, %155
  %166 = phi i8 [ %156, %155 ], [ %164, %161 ]
  %167 = add nuw nsw i64 %157, 1
  %168 = zext i8 %166 to i64
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %155, label %170

; <label>:170:                                    ; preds = %165
  %171 = load float, float* %3, align 4, !tbaa !30
  br label %172

; <label>:172:                                    ; preds = %170, %148
  %173 = phi i8 [ %166, %170 ], [ 0, %148 ]
  %174 = phi float [ %171, %170 ], [ 0x7FF8000000000000, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %175 = insertelement <16 x float> %151, float %174, i32 6
  %176 = extractelement <16 x float> %4, i32 7
  %177 = extractelement <16 x float> %5, i32 7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %178 = icmp eq i8 %173, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %172, %189
  %180 = phi i8 [ %190, %189 ], [ %173, %172 ]
  %181 = phi i64 [ %191, %189 ], [ 0, %172 ]
  %182 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %181, i32 3
  %183 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %182, align 8, !tbaa !24
  %184 = icmp eq void (float, float, float*, i8*)* %183, null
  br i1 %184, label %189, label %185

; <label>:185:                                    ; preds = %179
  %186 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %181
  %187 = load i8*, i8** %186, align 8, !tbaa !16
  call void %183(float %176, float %177, float* nonnull %3, i8* %187) #9
  %188 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %189

; <label>:189:                                    ; preds = %185, %179
  %190 = phi i8 [ %180, %179 ], [ %188, %185 ]
  %191 = add nuw nsw i64 %181, 1
  %192 = zext i8 %190 to i64
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %179, label %194

; <label>:194:                                    ; preds = %189
  %195 = load float, float* %3, align 4, !tbaa !30
  br label %196

; <label>:196:                                    ; preds = %194, %172
  %197 = phi i8 [ %190, %194 ], [ 0, %172 ]
  %198 = phi float [ %195, %194 ], [ 0x7FF8000000000000, %172 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %199 = insertelement <16 x float> %175, float %198, i32 7
  %200 = extractelement <16 x float> %4, i32 8
  %201 = extractelement <16 x float> %5, i32 8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %202 = icmp eq i8 %197, 0
  br i1 %202, label %220, label %203

; <label>:203:                                    ; preds = %196, %213
  %204 = phi i8 [ %214, %213 ], [ %197, %196 ]
  %205 = phi i64 [ %215, %213 ], [ 0, %196 ]
  %206 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %205, i32 3
  %207 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %206, align 8, !tbaa !24
  %208 = icmp eq void (float, float, float*, i8*)* %207, null
  br i1 %208, label %213, label %209

; <label>:209:                                    ; preds = %203
  %210 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %205
  %211 = load i8*, i8** %210, align 8, !tbaa !16
  call void %207(float %200, float %201, float* nonnull %3, i8* %211) #9
  %212 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %213

; <label>:213:                                    ; preds = %209, %203
  %214 = phi i8 [ %204, %203 ], [ %212, %209 ]
  %215 = add nuw nsw i64 %205, 1
  %216 = zext i8 %214 to i64
  %217 = icmp ult i64 %215, %216
  br i1 %217, label %203, label %218

; <label>:218:                                    ; preds = %213
  %219 = load float, float* %3, align 4, !tbaa !30
  br label %220

; <label>:220:                                    ; preds = %218, %196
  %221 = phi i8 [ %214, %218 ], [ 0, %196 ]
  %222 = phi float [ %219, %218 ], [ 0x7FF8000000000000, %196 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %223 = insertelement <16 x float> %199, float %222, i32 8
  %224 = extractelement <16 x float> %4, i32 9
  %225 = extractelement <16 x float> %5, i32 9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %226 = icmp eq i8 %221, 0
  br i1 %226, label %244, label %227

; <label>:227:                                    ; preds = %220, %237
  %228 = phi i8 [ %238, %237 ], [ %221, %220 ]
  %229 = phi i64 [ %239, %237 ], [ 0, %220 ]
  %230 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %229, i32 3
  %231 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %230, align 8, !tbaa !24
  %232 = icmp eq void (float, float, float*, i8*)* %231, null
  br i1 %232, label %237, label %233

; <label>:233:                                    ; preds = %227
  %234 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %229
  %235 = load i8*, i8** %234, align 8, !tbaa !16
  call void %231(float %224, float %225, float* nonnull %3, i8* %235) #9
  %236 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %237

; <label>:237:                                    ; preds = %233, %227
  %238 = phi i8 [ %228, %227 ], [ %236, %233 ]
  %239 = add nuw nsw i64 %229, 1
  %240 = zext i8 %238 to i64
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %227, label %242

; <label>:242:                                    ; preds = %237
  %243 = load float, float* %3, align 4, !tbaa !30
  br label %244

; <label>:244:                                    ; preds = %242, %220
  %245 = phi i8 [ %238, %242 ], [ 0, %220 ]
  %246 = phi float [ %243, %242 ], [ 0x7FF8000000000000, %220 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %247 = insertelement <16 x float> %223, float %246, i32 9
  %248 = extractelement <16 x float> %4, i32 10
  %249 = extractelement <16 x float> %5, i32 10
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %250 = icmp eq i8 %245, 0
  br i1 %250, label %268, label %251

; <label>:251:                                    ; preds = %244, %261
  %252 = phi i8 [ %262, %261 ], [ %245, %244 ]
  %253 = phi i64 [ %263, %261 ], [ 0, %244 ]
  %254 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %253, i32 3
  %255 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %254, align 8, !tbaa !24
  %256 = icmp eq void (float, float, float*, i8*)* %255, null
  br i1 %256, label %261, label %257

; <label>:257:                                    ; preds = %251
  %258 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %253
  %259 = load i8*, i8** %258, align 8, !tbaa !16
  call void %255(float %248, float %249, float* nonnull %3, i8* %259) #9
  %260 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %261

; <label>:261:                                    ; preds = %257, %251
  %262 = phi i8 [ %252, %251 ], [ %260, %257 ]
  %263 = add nuw nsw i64 %253, 1
  %264 = zext i8 %262 to i64
  %265 = icmp ult i64 %263, %264
  br i1 %265, label %251, label %266

; <label>:266:                                    ; preds = %261
  %267 = load float, float* %3, align 4, !tbaa !30
  br label %268

; <label>:268:                                    ; preds = %266, %244
  %269 = phi i8 [ %262, %266 ], [ 0, %244 ]
  %270 = phi float [ %267, %266 ], [ 0x7FF8000000000000, %244 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %271 = insertelement <16 x float> %247, float %270, i32 10
  %272 = extractelement <16 x float> %4, i32 11
  %273 = extractelement <16 x float> %5, i32 11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %274 = icmp eq i8 %269, 0
  br i1 %274, label %292, label %275

; <label>:275:                                    ; preds = %268, %285
  %276 = phi i8 [ %286, %285 ], [ %269, %268 ]
  %277 = phi i64 [ %287, %285 ], [ 0, %268 ]
  %278 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %277, i32 3
  %279 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %278, align 8, !tbaa !24
  %280 = icmp eq void (float, float, float*, i8*)* %279, null
  br i1 %280, label %285, label %281

; <label>:281:                                    ; preds = %275
  %282 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %277
  %283 = load i8*, i8** %282, align 8, !tbaa !16
  call void %279(float %272, float %273, float* nonnull %3, i8* %283) #9
  %284 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %285

; <label>:285:                                    ; preds = %281, %275
  %286 = phi i8 [ %276, %275 ], [ %284, %281 ]
  %287 = add nuw nsw i64 %277, 1
  %288 = zext i8 %286 to i64
  %289 = icmp ult i64 %287, %288
  br i1 %289, label %275, label %290

; <label>:290:                                    ; preds = %285
  %291 = load float, float* %3, align 4, !tbaa !30
  br label %292

; <label>:292:                                    ; preds = %290, %268
  %293 = phi i8 [ %286, %290 ], [ 0, %268 ]
  %294 = phi float [ %291, %290 ], [ 0x7FF8000000000000, %268 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %295 = insertelement <16 x float> %271, float %294, i32 11
  %296 = extractelement <16 x float> %4, i32 12
  %297 = extractelement <16 x float> %5, i32 12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %298 = icmp eq i8 %293, 0
  br i1 %298, label %316, label %299

; <label>:299:                                    ; preds = %292, %309
  %300 = phi i8 [ %310, %309 ], [ %293, %292 ]
  %301 = phi i64 [ %311, %309 ], [ 0, %292 ]
  %302 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %301, i32 3
  %303 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %302, align 8, !tbaa !24
  %304 = icmp eq void (float, float, float*, i8*)* %303, null
  br i1 %304, label %309, label %305

; <label>:305:                                    ; preds = %299
  %306 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %301
  %307 = load i8*, i8** %306, align 8, !tbaa !16
  call void %303(float %296, float %297, float* nonnull %3, i8* %307) #9
  %308 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %309

; <label>:309:                                    ; preds = %305, %299
  %310 = phi i8 [ %300, %299 ], [ %308, %305 ]
  %311 = add nuw nsw i64 %301, 1
  %312 = zext i8 %310 to i64
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %299, label %314

; <label>:314:                                    ; preds = %309
  %315 = load float, float* %3, align 4, !tbaa !30
  br label %316

; <label>:316:                                    ; preds = %314, %292
  %317 = phi i8 [ %310, %314 ], [ 0, %292 ]
  %318 = phi float [ %315, %314 ], [ 0x7FF8000000000000, %292 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %319 = insertelement <16 x float> %295, float %318, i32 12
  %320 = extractelement <16 x float> %4, i32 13
  %321 = extractelement <16 x float> %5, i32 13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %322 = icmp eq i8 %317, 0
  br i1 %322, label %340, label %323

; <label>:323:                                    ; preds = %316, %333
  %324 = phi i8 [ %334, %333 ], [ %317, %316 ]
  %325 = phi i64 [ %335, %333 ], [ 0, %316 ]
  %326 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %325, i32 3
  %327 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %326, align 8, !tbaa !24
  %328 = icmp eq void (float, float, float*, i8*)* %327, null
  br i1 %328, label %333, label %329

; <label>:329:                                    ; preds = %323
  %330 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %325
  %331 = load i8*, i8** %330, align 8, !tbaa !16
  call void %327(float %320, float %321, float* nonnull %3, i8* %331) #9
  %332 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %333

; <label>:333:                                    ; preds = %329, %323
  %334 = phi i8 [ %324, %323 ], [ %332, %329 ]
  %335 = add nuw nsw i64 %325, 1
  %336 = zext i8 %334 to i64
  %337 = icmp ult i64 %335, %336
  br i1 %337, label %323, label %338

; <label>:338:                                    ; preds = %333
  %339 = load float, float* %3, align 4, !tbaa !30
  br label %340

; <label>:340:                                    ; preds = %338, %316
  %341 = phi i8 [ %334, %338 ], [ 0, %316 ]
  %342 = phi float [ %339, %338 ], [ 0x7FF8000000000000, %316 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %343 = insertelement <16 x float> %319, float %342, i32 13
  %344 = extractelement <16 x float> %4, i32 14
  %345 = extractelement <16 x float> %5, i32 14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %346 = icmp eq i8 %341, 0
  br i1 %346, label %364, label %347

; <label>:347:                                    ; preds = %340, %357
  %348 = phi i8 [ %358, %357 ], [ %341, %340 ]
  %349 = phi i64 [ %359, %357 ], [ 0, %340 ]
  %350 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %349, i32 3
  %351 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %350, align 8, !tbaa !24
  %352 = icmp eq void (float, float, float*, i8*)* %351, null
  br i1 %352, label %357, label %353

; <label>:353:                                    ; preds = %347
  %354 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %349
  %355 = load i8*, i8** %354, align 8, !tbaa !16
  call void %351(float %344, float %345, float* nonnull %3, i8* %355) #9
  %356 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %357

; <label>:357:                                    ; preds = %353, %347
  %358 = phi i8 [ %348, %347 ], [ %356, %353 ]
  %359 = add nuw nsw i64 %349, 1
  %360 = zext i8 %358 to i64
  %361 = icmp ult i64 %359, %360
  br i1 %361, label %347, label %362

; <label>:362:                                    ; preds = %357
  %363 = load float, float* %3, align 4, !tbaa !30
  br label %364

; <label>:364:                                    ; preds = %362, %340
  %365 = phi i8 [ %358, %362 ], [ 0, %340 ]
  %366 = phi float [ %363, %362 ], [ 0x7FF8000000000000, %340 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %367 = insertelement <16 x float> %343, float %366, i32 14
  %368 = extractelement <16 x float> %4, i32 15
  %369 = extractelement <16 x float> %5, i32 15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store float 0x7FF8000000000000, float* %3, align 4, !tbaa !30
  %370 = icmp eq i8 %365, 0
  br i1 %370, label %388, label %371

; <label>:371:                                    ; preds = %364, %381
  %372 = phi i8 [ %382, %381 ], [ %365, %364 ]
  %373 = phi i64 [ %383, %381 ], [ 0, %364 ]
  %374 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %373, i32 3
  %375 = load void (float, float, float*, i8*)*, void (float, float, float*, i8*)** %374, align 8, !tbaa !24
  %376 = icmp eq void (float, float, float*, i8*)* %375, null
  br i1 %376, label %381, label %377

; <label>:377:                                    ; preds = %371
  %378 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %373
  %379 = load i8*, i8** %378, align 8, !tbaa !16
  call void %375(float %368, float %369, float* nonnull %3, i8* %379) #9
  %380 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %381

; <label>:381:                                    ; preds = %377, %371
  %382 = phi i8 [ %372, %371 ], [ %380, %377 ]
  %383 = add nuw nsw i64 %373, 1
  %384 = zext i8 %382 to i64
  %385 = icmp ult i64 %383, %384
  br i1 %385, label %371, label %386

; <label>:386:                                    ; preds = %381
  %387 = load float, float* %3, align 4, !tbaa !30
  br label %388

; <label>:388:                                    ; preds = %386, %364
  %389 = phi float [ %387, %386 ], [ 0x7FF8000000000000, %364 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %390 = insertelement <16 x float> %367, float %389, i32 15
  ret <16 x float> %390
}

; Function Attrs: nounwind uwtable
define <16 x double> @_16xdoubleadd(<16 x double>* byval nocapture readonly align 128, <16 x double>* byval nocapture readonly align 128) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = load <16 x double>, <16 x double>* %0, align 128, !tbaa !17
  %5 = load <16 x double>, <16 x double>* %1, align 128, !tbaa !17
  %6 = bitcast double* %3 to i8*
  %7 = extractelement <16 x double> %4, i32 0
  %8 = extractelement <16 x double> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load double, double* %3, align 8, !tbaa !32
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 5
  %17 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %16, align 8, !tbaa !25
  %18 = icmp eq void (double, double, double*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(double %7, double %8, double* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi double [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %31 = insertelement <16 x double> undef, double %30, i32 0
  %32 = extractelement <16 x double> %4, i32 1
  %33 = extractelement <16 x double> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 5
  %39 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %38, align 8, !tbaa !25
  %40 = icmp eq void (double, double, double*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(double %32, double %33, double* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load double, double* %3, align 8, !tbaa !32
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi i8 [ %46, %50 ], [ 0, %28 ]
  %54 = phi double [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %55 = insertelement <16 x double> %31, double %54, i32 1
  %56 = extractelement <16 x double> %4, i32 2
  %57 = extractelement <16 x double> %5, i32 2
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %58 = icmp eq i8 %53, 0
  br i1 %58, label %76, label %59

; <label>:59:                                     ; preds = %52, %69
  %60 = phi i8 [ %70, %69 ], [ %53, %52 ]
  %61 = phi i64 [ %71, %69 ], [ 0, %52 ]
  %62 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %61, i32 5
  %63 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %62, align 8, !tbaa !25
  %64 = icmp eq void (double, double, double*, i8*)* %63, null
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %61
  %67 = load i8*, i8** %66, align 8, !tbaa !16
  call void %63(double %56, double %57, double* nonnull %3, i8* %67) #9
  %68 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %69

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8 [ %60, %59 ], [ %68, %65 ]
  %71 = add nuw nsw i64 %61, 1
  %72 = zext i8 %70 to i64
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %59, label %74

; <label>:74:                                     ; preds = %69
  %75 = load double, double* %3, align 8, !tbaa !32
  br label %76

; <label>:76:                                     ; preds = %74, %52
  %77 = phi i8 [ %70, %74 ], [ 0, %52 ]
  %78 = phi double [ %75, %74 ], [ 0x7FF8000000000000, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %79 = insertelement <16 x double> %55, double %78, i32 2
  %80 = extractelement <16 x double> %4, i32 3
  %81 = extractelement <16 x double> %5, i32 3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %82 = icmp eq i8 %77, 0
  br i1 %82, label %100, label %83

; <label>:83:                                     ; preds = %76, %93
  %84 = phi i8 [ %94, %93 ], [ %77, %76 ]
  %85 = phi i64 [ %95, %93 ], [ 0, %76 ]
  %86 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %85, i32 5
  %87 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %86, align 8, !tbaa !25
  %88 = icmp eq void (double, double, double*, i8*)* %87, null
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %85
  %91 = load i8*, i8** %90, align 8, !tbaa !16
  call void %87(double %80, double %81, double* nonnull %3, i8* %91) #9
  %92 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %93

; <label>:93:                                     ; preds = %89, %83
  %94 = phi i8 [ %84, %83 ], [ %92, %89 ]
  %95 = add nuw nsw i64 %85, 1
  %96 = zext i8 %94 to i64
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %83, label %98

; <label>:98:                                     ; preds = %93
  %99 = load double, double* %3, align 8, !tbaa !32
  br label %100

; <label>:100:                                    ; preds = %98, %76
  %101 = phi i8 [ %94, %98 ], [ 0, %76 ]
  %102 = phi double [ %99, %98 ], [ 0x7FF8000000000000, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %103 = insertelement <16 x double> %79, double %102, i32 3
  %104 = extractelement <16 x double> %4, i32 4
  %105 = extractelement <16 x double> %5, i32 4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %106 = icmp eq i8 %101, 0
  br i1 %106, label %124, label %107

; <label>:107:                                    ; preds = %100, %117
  %108 = phi i8 [ %118, %117 ], [ %101, %100 ]
  %109 = phi i64 [ %119, %117 ], [ 0, %100 ]
  %110 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %109, i32 5
  %111 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %110, align 8, !tbaa !25
  %112 = icmp eq void (double, double, double*, i8*)* %111, null
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %109
  %115 = load i8*, i8** %114, align 8, !tbaa !16
  call void %111(double %104, double %105, double* nonnull %3, i8* %115) #9
  %116 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %117

; <label>:117:                                    ; preds = %113, %107
  %118 = phi i8 [ %108, %107 ], [ %116, %113 ]
  %119 = add nuw nsw i64 %109, 1
  %120 = zext i8 %118 to i64
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %107, label %122

; <label>:122:                                    ; preds = %117
  %123 = load double, double* %3, align 8, !tbaa !32
  br label %124

; <label>:124:                                    ; preds = %122, %100
  %125 = phi i8 [ %118, %122 ], [ 0, %100 ]
  %126 = phi double [ %123, %122 ], [ 0x7FF8000000000000, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %127 = insertelement <16 x double> %103, double %126, i32 4
  %128 = extractelement <16 x double> %4, i32 5
  %129 = extractelement <16 x double> %5, i32 5
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %130 = icmp eq i8 %125, 0
  br i1 %130, label %148, label %131

; <label>:131:                                    ; preds = %124, %141
  %132 = phi i8 [ %142, %141 ], [ %125, %124 ]
  %133 = phi i64 [ %143, %141 ], [ 0, %124 ]
  %134 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %133, i32 5
  %135 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %134, align 8, !tbaa !25
  %136 = icmp eq void (double, double, double*, i8*)* %135, null
  br i1 %136, label %141, label %137

; <label>:137:                                    ; preds = %131
  %138 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %133
  %139 = load i8*, i8** %138, align 8, !tbaa !16
  call void %135(double %128, double %129, double* nonnull %3, i8* %139) #9
  %140 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %141

; <label>:141:                                    ; preds = %137, %131
  %142 = phi i8 [ %132, %131 ], [ %140, %137 ]
  %143 = add nuw nsw i64 %133, 1
  %144 = zext i8 %142 to i64
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %131, label %146

; <label>:146:                                    ; preds = %141
  %147 = load double, double* %3, align 8, !tbaa !32
  br label %148

; <label>:148:                                    ; preds = %146, %124
  %149 = phi i8 [ %142, %146 ], [ 0, %124 ]
  %150 = phi double [ %147, %146 ], [ 0x7FF8000000000000, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %151 = insertelement <16 x double> %127, double %150, i32 5
  %152 = extractelement <16 x double> %4, i32 6
  %153 = extractelement <16 x double> %5, i32 6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %154 = icmp eq i8 %149, 0
  br i1 %154, label %172, label %155

; <label>:155:                                    ; preds = %148, %165
  %156 = phi i8 [ %166, %165 ], [ %149, %148 ]
  %157 = phi i64 [ %167, %165 ], [ 0, %148 ]
  %158 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %157, i32 5
  %159 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %158, align 8, !tbaa !25
  %160 = icmp eq void (double, double, double*, i8*)* %159, null
  br i1 %160, label %165, label %161

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %157
  %163 = load i8*, i8** %162, align 8, !tbaa !16
  call void %159(double %152, double %153, double* nonnull %3, i8* %163) #9
  %164 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %165

; <label>:165:                                    ; preds = %161, %155
  %166 = phi i8 [ %156, %155 ], [ %164, %161 ]
  %167 = add nuw nsw i64 %157, 1
  %168 = zext i8 %166 to i64
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %155, label %170

; <label>:170:                                    ; preds = %165
  %171 = load double, double* %3, align 8, !tbaa !32
  br label %172

; <label>:172:                                    ; preds = %170, %148
  %173 = phi i8 [ %166, %170 ], [ 0, %148 ]
  %174 = phi double [ %171, %170 ], [ 0x7FF8000000000000, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %175 = insertelement <16 x double> %151, double %174, i32 6
  %176 = extractelement <16 x double> %4, i32 7
  %177 = extractelement <16 x double> %5, i32 7
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %178 = icmp eq i8 %173, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %172, %189
  %180 = phi i8 [ %190, %189 ], [ %173, %172 ]
  %181 = phi i64 [ %191, %189 ], [ 0, %172 ]
  %182 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %181, i32 5
  %183 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %182, align 8, !tbaa !25
  %184 = icmp eq void (double, double, double*, i8*)* %183, null
  br i1 %184, label %189, label %185

; <label>:185:                                    ; preds = %179
  %186 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %181
  %187 = load i8*, i8** %186, align 8, !tbaa !16
  call void %183(double %176, double %177, double* nonnull %3, i8* %187) #9
  %188 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %189

; <label>:189:                                    ; preds = %185, %179
  %190 = phi i8 [ %180, %179 ], [ %188, %185 ]
  %191 = add nuw nsw i64 %181, 1
  %192 = zext i8 %190 to i64
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %179, label %194

; <label>:194:                                    ; preds = %189
  %195 = load double, double* %3, align 8, !tbaa !32
  br label %196

; <label>:196:                                    ; preds = %194, %172
  %197 = phi i8 [ %190, %194 ], [ 0, %172 ]
  %198 = phi double [ %195, %194 ], [ 0x7FF8000000000000, %172 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %199 = insertelement <16 x double> %175, double %198, i32 7
  %200 = extractelement <16 x double> %4, i32 8
  %201 = extractelement <16 x double> %5, i32 8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %202 = icmp eq i8 %197, 0
  br i1 %202, label %220, label %203

; <label>:203:                                    ; preds = %196, %213
  %204 = phi i8 [ %214, %213 ], [ %197, %196 ]
  %205 = phi i64 [ %215, %213 ], [ 0, %196 ]
  %206 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %205, i32 5
  %207 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %206, align 8, !tbaa !25
  %208 = icmp eq void (double, double, double*, i8*)* %207, null
  br i1 %208, label %213, label %209

; <label>:209:                                    ; preds = %203
  %210 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %205
  %211 = load i8*, i8** %210, align 8, !tbaa !16
  call void %207(double %200, double %201, double* nonnull %3, i8* %211) #9
  %212 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %213

; <label>:213:                                    ; preds = %209, %203
  %214 = phi i8 [ %204, %203 ], [ %212, %209 ]
  %215 = add nuw nsw i64 %205, 1
  %216 = zext i8 %214 to i64
  %217 = icmp ult i64 %215, %216
  br i1 %217, label %203, label %218

; <label>:218:                                    ; preds = %213
  %219 = load double, double* %3, align 8, !tbaa !32
  br label %220

; <label>:220:                                    ; preds = %218, %196
  %221 = phi i8 [ %214, %218 ], [ 0, %196 ]
  %222 = phi double [ %219, %218 ], [ 0x7FF8000000000000, %196 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %223 = insertelement <16 x double> %199, double %222, i32 8
  %224 = extractelement <16 x double> %4, i32 9
  %225 = extractelement <16 x double> %5, i32 9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %226 = icmp eq i8 %221, 0
  br i1 %226, label %244, label %227

; <label>:227:                                    ; preds = %220, %237
  %228 = phi i8 [ %238, %237 ], [ %221, %220 ]
  %229 = phi i64 [ %239, %237 ], [ 0, %220 ]
  %230 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %229, i32 5
  %231 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %230, align 8, !tbaa !25
  %232 = icmp eq void (double, double, double*, i8*)* %231, null
  br i1 %232, label %237, label %233

; <label>:233:                                    ; preds = %227
  %234 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %229
  %235 = load i8*, i8** %234, align 8, !tbaa !16
  call void %231(double %224, double %225, double* nonnull %3, i8* %235) #9
  %236 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %237

; <label>:237:                                    ; preds = %233, %227
  %238 = phi i8 [ %228, %227 ], [ %236, %233 ]
  %239 = add nuw nsw i64 %229, 1
  %240 = zext i8 %238 to i64
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %227, label %242

; <label>:242:                                    ; preds = %237
  %243 = load double, double* %3, align 8, !tbaa !32
  br label %244

; <label>:244:                                    ; preds = %242, %220
  %245 = phi i8 [ %238, %242 ], [ 0, %220 ]
  %246 = phi double [ %243, %242 ], [ 0x7FF8000000000000, %220 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %247 = insertelement <16 x double> %223, double %246, i32 9
  %248 = extractelement <16 x double> %4, i32 10
  %249 = extractelement <16 x double> %5, i32 10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %250 = icmp eq i8 %245, 0
  br i1 %250, label %268, label %251

; <label>:251:                                    ; preds = %244, %261
  %252 = phi i8 [ %262, %261 ], [ %245, %244 ]
  %253 = phi i64 [ %263, %261 ], [ 0, %244 ]
  %254 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %253, i32 5
  %255 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %254, align 8, !tbaa !25
  %256 = icmp eq void (double, double, double*, i8*)* %255, null
  br i1 %256, label %261, label %257

; <label>:257:                                    ; preds = %251
  %258 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %253
  %259 = load i8*, i8** %258, align 8, !tbaa !16
  call void %255(double %248, double %249, double* nonnull %3, i8* %259) #9
  %260 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %261

; <label>:261:                                    ; preds = %257, %251
  %262 = phi i8 [ %252, %251 ], [ %260, %257 ]
  %263 = add nuw nsw i64 %253, 1
  %264 = zext i8 %262 to i64
  %265 = icmp ult i64 %263, %264
  br i1 %265, label %251, label %266

; <label>:266:                                    ; preds = %261
  %267 = load double, double* %3, align 8, !tbaa !32
  br label %268

; <label>:268:                                    ; preds = %266, %244
  %269 = phi i8 [ %262, %266 ], [ 0, %244 ]
  %270 = phi double [ %267, %266 ], [ 0x7FF8000000000000, %244 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %271 = insertelement <16 x double> %247, double %270, i32 10
  %272 = extractelement <16 x double> %4, i32 11
  %273 = extractelement <16 x double> %5, i32 11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %274 = icmp eq i8 %269, 0
  br i1 %274, label %292, label %275

; <label>:275:                                    ; preds = %268, %285
  %276 = phi i8 [ %286, %285 ], [ %269, %268 ]
  %277 = phi i64 [ %287, %285 ], [ 0, %268 ]
  %278 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %277, i32 5
  %279 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %278, align 8, !tbaa !25
  %280 = icmp eq void (double, double, double*, i8*)* %279, null
  br i1 %280, label %285, label %281

; <label>:281:                                    ; preds = %275
  %282 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %277
  %283 = load i8*, i8** %282, align 8, !tbaa !16
  call void %279(double %272, double %273, double* nonnull %3, i8* %283) #9
  %284 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %285

; <label>:285:                                    ; preds = %281, %275
  %286 = phi i8 [ %276, %275 ], [ %284, %281 ]
  %287 = add nuw nsw i64 %277, 1
  %288 = zext i8 %286 to i64
  %289 = icmp ult i64 %287, %288
  br i1 %289, label %275, label %290

; <label>:290:                                    ; preds = %285
  %291 = load double, double* %3, align 8, !tbaa !32
  br label %292

; <label>:292:                                    ; preds = %290, %268
  %293 = phi i8 [ %286, %290 ], [ 0, %268 ]
  %294 = phi double [ %291, %290 ], [ 0x7FF8000000000000, %268 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %295 = insertelement <16 x double> %271, double %294, i32 11
  %296 = extractelement <16 x double> %4, i32 12
  %297 = extractelement <16 x double> %5, i32 12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %298 = icmp eq i8 %293, 0
  br i1 %298, label %316, label %299

; <label>:299:                                    ; preds = %292, %309
  %300 = phi i8 [ %310, %309 ], [ %293, %292 ]
  %301 = phi i64 [ %311, %309 ], [ 0, %292 ]
  %302 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %301, i32 5
  %303 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %302, align 8, !tbaa !25
  %304 = icmp eq void (double, double, double*, i8*)* %303, null
  br i1 %304, label %309, label %305

; <label>:305:                                    ; preds = %299
  %306 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %301
  %307 = load i8*, i8** %306, align 8, !tbaa !16
  call void %303(double %296, double %297, double* nonnull %3, i8* %307) #9
  %308 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %309

; <label>:309:                                    ; preds = %305, %299
  %310 = phi i8 [ %300, %299 ], [ %308, %305 ]
  %311 = add nuw nsw i64 %301, 1
  %312 = zext i8 %310 to i64
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %299, label %314

; <label>:314:                                    ; preds = %309
  %315 = load double, double* %3, align 8, !tbaa !32
  br label %316

; <label>:316:                                    ; preds = %314, %292
  %317 = phi i8 [ %310, %314 ], [ 0, %292 ]
  %318 = phi double [ %315, %314 ], [ 0x7FF8000000000000, %292 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %319 = insertelement <16 x double> %295, double %318, i32 12
  %320 = extractelement <16 x double> %4, i32 13
  %321 = extractelement <16 x double> %5, i32 13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %322 = icmp eq i8 %317, 0
  br i1 %322, label %340, label %323

; <label>:323:                                    ; preds = %316, %333
  %324 = phi i8 [ %334, %333 ], [ %317, %316 ]
  %325 = phi i64 [ %335, %333 ], [ 0, %316 ]
  %326 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %325, i32 5
  %327 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %326, align 8, !tbaa !25
  %328 = icmp eq void (double, double, double*, i8*)* %327, null
  br i1 %328, label %333, label %329

; <label>:329:                                    ; preds = %323
  %330 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %325
  %331 = load i8*, i8** %330, align 8, !tbaa !16
  call void %327(double %320, double %321, double* nonnull %3, i8* %331) #9
  %332 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %333

; <label>:333:                                    ; preds = %329, %323
  %334 = phi i8 [ %324, %323 ], [ %332, %329 ]
  %335 = add nuw nsw i64 %325, 1
  %336 = zext i8 %334 to i64
  %337 = icmp ult i64 %335, %336
  br i1 %337, label %323, label %338

; <label>:338:                                    ; preds = %333
  %339 = load double, double* %3, align 8, !tbaa !32
  br label %340

; <label>:340:                                    ; preds = %338, %316
  %341 = phi i8 [ %334, %338 ], [ 0, %316 ]
  %342 = phi double [ %339, %338 ], [ 0x7FF8000000000000, %316 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %343 = insertelement <16 x double> %319, double %342, i32 13
  %344 = extractelement <16 x double> %4, i32 14
  %345 = extractelement <16 x double> %5, i32 14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %346 = icmp eq i8 %341, 0
  br i1 %346, label %364, label %347

; <label>:347:                                    ; preds = %340, %357
  %348 = phi i8 [ %358, %357 ], [ %341, %340 ]
  %349 = phi i64 [ %359, %357 ], [ 0, %340 ]
  %350 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %349, i32 5
  %351 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %350, align 8, !tbaa !25
  %352 = icmp eq void (double, double, double*, i8*)* %351, null
  br i1 %352, label %357, label %353

; <label>:353:                                    ; preds = %347
  %354 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %349
  %355 = load i8*, i8** %354, align 8, !tbaa !16
  call void %351(double %344, double %345, double* nonnull %3, i8* %355) #9
  %356 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %357

; <label>:357:                                    ; preds = %353, %347
  %358 = phi i8 [ %348, %347 ], [ %356, %353 ]
  %359 = add nuw nsw i64 %349, 1
  %360 = zext i8 %358 to i64
  %361 = icmp ult i64 %359, %360
  br i1 %361, label %347, label %362

; <label>:362:                                    ; preds = %357
  %363 = load double, double* %3, align 8, !tbaa !32
  br label %364

; <label>:364:                                    ; preds = %362, %340
  %365 = phi i8 [ %358, %362 ], [ 0, %340 ]
  %366 = phi double [ %363, %362 ], [ 0x7FF8000000000000, %340 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %367 = insertelement <16 x double> %343, double %366, i32 14
  %368 = extractelement <16 x double> %4, i32 15
  %369 = extractelement <16 x double> %5, i32 15
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %370 = icmp eq i8 %365, 0
  br i1 %370, label %388, label %371

; <label>:371:                                    ; preds = %364, %381
  %372 = phi i8 [ %382, %381 ], [ %365, %364 ]
  %373 = phi i64 [ %383, %381 ], [ 0, %364 ]
  %374 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %373, i32 5
  %375 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %374, align 8, !tbaa !25
  %376 = icmp eq void (double, double, double*, i8*)* %375, null
  br i1 %376, label %381, label %377

; <label>:377:                                    ; preds = %371
  %378 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %373
  %379 = load i8*, i8** %378, align 8, !tbaa !16
  call void %375(double %368, double %369, double* nonnull %3, i8* %379) #9
  %380 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %381

; <label>:381:                                    ; preds = %377, %371
  %382 = phi i8 [ %372, %371 ], [ %380, %377 ]
  %383 = add nuw nsw i64 %373, 1
  %384 = zext i8 %382 to i64
  %385 = icmp ult i64 %383, %384
  br i1 %385, label %371, label %386

; <label>:386:                                    ; preds = %381
  %387 = load double, double* %3, align 8, !tbaa !32
  br label %388

; <label>:388:                                    ; preds = %386, %364
  %389 = phi double [ %387, %386 ], [ 0x7FF8000000000000, %364 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %390 = insertelement <16 x double> %367, double %389, i32 15
  ret <16 x double> %390
}

; Function Attrs: nounwind uwtable
define <16 x double> @_16xdoublesub(<16 x double>* byval nocapture readonly align 128, <16 x double>* byval nocapture readonly align 128) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = load <16 x double>, <16 x double>* %0, align 128, !tbaa !17
  %5 = load <16 x double>, <16 x double>* %1, align 128, !tbaa !17
  %6 = bitcast double* %3 to i8*
  %7 = extractelement <16 x double> %4, i32 0
  %8 = extractelement <16 x double> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load double, double* %3, align 8, !tbaa !32
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 6
  %17 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %16, align 16, !tbaa !26
  %18 = icmp eq void (double, double, double*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(double %7, double %8, double* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi double [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %31 = insertelement <16 x double> undef, double %30, i32 0
  %32 = extractelement <16 x double> %4, i32 1
  %33 = extractelement <16 x double> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 6
  %39 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %38, align 16, !tbaa !26
  %40 = icmp eq void (double, double, double*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(double %32, double %33, double* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load double, double* %3, align 8, !tbaa !32
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi i8 [ %46, %50 ], [ 0, %28 ]
  %54 = phi double [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %55 = insertelement <16 x double> %31, double %54, i32 1
  %56 = extractelement <16 x double> %4, i32 2
  %57 = extractelement <16 x double> %5, i32 2
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %58 = icmp eq i8 %53, 0
  br i1 %58, label %76, label %59

; <label>:59:                                     ; preds = %52, %69
  %60 = phi i8 [ %70, %69 ], [ %53, %52 ]
  %61 = phi i64 [ %71, %69 ], [ 0, %52 ]
  %62 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %61, i32 6
  %63 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %62, align 16, !tbaa !26
  %64 = icmp eq void (double, double, double*, i8*)* %63, null
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %61
  %67 = load i8*, i8** %66, align 8, !tbaa !16
  call void %63(double %56, double %57, double* nonnull %3, i8* %67) #9
  %68 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %69

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8 [ %60, %59 ], [ %68, %65 ]
  %71 = add nuw nsw i64 %61, 1
  %72 = zext i8 %70 to i64
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %59, label %74

; <label>:74:                                     ; preds = %69
  %75 = load double, double* %3, align 8, !tbaa !32
  br label %76

; <label>:76:                                     ; preds = %74, %52
  %77 = phi i8 [ %70, %74 ], [ 0, %52 ]
  %78 = phi double [ %75, %74 ], [ 0x7FF8000000000000, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %79 = insertelement <16 x double> %55, double %78, i32 2
  %80 = extractelement <16 x double> %4, i32 3
  %81 = extractelement <16 x double> %5, i32 3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %82 = icmp eq i8 %77, 0
  br i1 %82, label %100, label %83

; <label>:83:                                     ; preds = %76, %93
  %84 = phi i8 [ %94, %93 ], [ %77, %76 ]
  %85 = phi i64 [ %95, %93 ], [ 0, %76 ]
  %86 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %85, i32 6
  %87 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %86, align 16, !tbaa !26
  %88 = icmp eq void (double, double, double*, i8*)* %87, null
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %85
  %91 = load i8*, i8** %90, align 8, !tbaa !16
  call void %87(double %80, double %81, double* nonnull %3, i8* %91) #9
  %92 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %93

; <label>:93:                                     ; preds = %89, %83
  %94 = phi i8 [ %84, %83 ], [ %92, %89 ]
  %95 = add nuw nsw i64 %85, 1
  %96 = zext i8 %94 to i64
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %83, label %98

; <label>:98:                                     ; preds = %93
  %99 = load double, double* %3, align 8, !tbaa !32
  br label %100

; <label>:100:                                    ; preds = %98, %76
  %101 = phi i8 [ %94, %98 ], [ 0, %76 ]
  %102 = phi double [ %99, %98 ], [ 0x7FF8000000000000, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %103 = insertelement <16 x double> %79, double %102, i32 3
  %104 = extractelement <16 x double> %4, i32 4
  %105 = extractelement <16 x double> %5, i32 4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %106 = icmp eq i8 %101, 0
  br i1 %106, label %124, label %107

; <label>:107:                                    ; preds = %100, %117
  %108 = phi i8 [ %118, %117 ], [ %101, %100 ]
  %109 = phi i64 [ %119, %117 ], [ 0, %100 ]
  %110 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %109, i32 6
  %111 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %110, align 16, !tbaa !26
  %112 = icmp eq void (double, double, double*, i8*)* %111, null
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %109
  %115 = load i8*, i8** %114, align 8, !tbaa !16
  call void %111(double %104, double %105, double* nonnull %3, i8* %115) #9
  %116 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %117

; <label>:117:                                    ; preds = %113, %107
  %118 = phi i8 [ %108, %107 ], [ %116, %113 ]
  %119 = add nuw nsw i64 %109, 1
  %120 = zext i8 %118 to i64
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %107, label %122

; <label>:122:                                    ; preds = %117
  %123 = load double, double* %3, align 8, !tbaa !32
  br label %124

; <label>:124:                                    ; preds = %122, %100
  %125 = phi i8 [ %118, %122 ], [ 0, %100 ]
  %126 = phi double [ %123, %122 ], [ 0x7FF8000000000000, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %127 = insertelement <16 x double> %103, double %126, i32 4
  %128 = extractelement <16 x double> %4, i32 5
  %129 = extractelement <16 x double> %5, i32 5
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %130 = icmp eq i8 %125, 0
  br i1 %130, label %148, label %131

; <label>:131:                                    ; preds = %124, %141
  %132 = phi i8 [ %142, %141 ], [ %125, %124 ]
  %133 = phi i64 [ %143, %141 ], [ 0, %124 ]
  %134 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %133, i32 6
  %135 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %134, align 16, !tbaa !26
  %136 = icmp eq void (double, double, double*, i8*)* %135, null
  br i1 %136, label %141, label %137

; <label>:137:                                    ; preds = %131
  %138 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %133
  %139 = load i8*, i8** %138, align 8, !tbaa !16
  call void %135(double %128, double %129, double* nonnull %3, i8* %139) #9
  %140 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %141

; <label>:141:                                    ; preds = %137, %131
  %142 = phi i8 [ %132, %131 ], [ %140, %137 ]
  %143 = add nuw nsw i64 %133, 1
  %144 = zext i8 %142 to i64
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %131, label %146

; <label>:146:                                    ; preds = %141
  %147 = load double, double* %3, align 8, !tbaa !32
  br label %148

; <label>:148:                                    ; preds = %146, %124
  %149 = phi i8 [ %142, %146 ], [ 0, %124 ]
  %150 = phi double [ %147, %146 ], [ 0x7FF8000000000000, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %151 = insertelement <16 x double> %127, double %150, i32 5
  %152 = extractelement <16 x double> %4, i32 6
  %153 = extractelement <16 x double> %5, i32 6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %154 = icmp eq i8 %149, 0
  br i1 %154, label %172, label %155

; <label>:155:                                    ; preds = %148, %165
  %156 = phi i8 [ %166, %165 ], [ %149, %148 ]
  %157 = phi i64 [ %167, %165 ], [ 0, %148 ]
  %158 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %157, i32 6
  %159 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %158, align 16, !tbaa !26
  %160 = icmp eq void (double, double, double*, i8*)* %159, null
  br i1 %160, label %165, label %161

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %157
  %163 = load i8*, i8** %162, align 8, !tbaa !16
  call void %159(double %152, double %153, double* nonnull %3, i8* %163) #9
  %164 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %165

; <label>:165:                                    ; preds = %161, %155
  %166 = phi i8 [ %156, %155 ], [ %164, %161 ]
  %167 = add nuw nsw i64 %157, 1
  %168 = zext i8 %166 to i64
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %155, label %170

; <label>:170:                                    ; preds = %165
  %171 = load double, double* %3, align 8, !tbaa !32
  br label %172

; <label>:172:                                    ; preds = %170, %148
  %173 = phi i8 [ %166, %170 ], [ 0, %148 ]
  %174 = phi double [ %171, %170 ], [ 0x7FF8000000000000, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %175 = insertelement <16 x double> %151, double %174, i32 6
  %176 = extractelement <16 x double> %4, i32 7
  %177 = extractelement <16 x double> %5, i32 7
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %178 = icmp eq i8 %173, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %172, %189
  %180 = phi i8 [ %190, %189 ], [ %173, %172 ]
  %181 = phi i64 [ %191, %189 ], [ 0, %172 ]
  %182 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %181, i32 6
  %183 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %182, align 16, !tbaa !26
  %184 = icmp eq void (double, double, double*, i8*)* %183, null
  br i1 %184, label %189, label %185

; <label>:185:                                    ; preds = %179
  %186 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %181
  %187 = load i8*, i8** %186, align 8, !tbaa !16
  call void %183(double %176, double %177, double* nonnull %3, i8* %187) #9
  %188 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %189

; <label>:189:                                    ; preds = %185, %179
  %190 = phi i8 [ %180, %179 ], [ %188, %185 ]
  %191 = add nuw nsw i64 %181, 1
  %192 = zext i8 %190 to i64
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %179, label %194

; <label>:194:                                    ; preds = %189
  %195 = load double, double* %3, align 8, !tbaa !32
  br label %196

; <label>:196:                                    ; preds = %194, %172
  %197 = phi i8 [ %190, %194 ], [ 0, %172 ]
  %198 = phi double [ %195, %194 ], [ 0x7FF8000000000000, %172 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %199 = insertelement <16 x double> %175, double %198, i32 7
  %200 = extractelement <16 x double> %4, i32 8
  %201 = extractelement <16 x double> %5, i32 8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %202 = icmp eq i8 %197, 0
  br i1 %202, label %220, label %203

; <label>:203:                                    ; preds = %196, %213
  %204 = phi i8 [ %214, %213 ], [ %197, %196 ]
  %205 = phi i64 [ %215, %213 ], [ 0, %196 ]
  %206 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %205, i32 6
  %207 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %206, align 16, !tbaa !26
  %208 = icmp eq void (double, double, double*, i8*)* %207, null
  br i1 %208, label %213, label %209

; <label>:209:                                    ; preds = %203
  %210 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %205
  %211 = load i8*, i8** %210, align 8, !tbaa !16
  call void %207(double %200, double %201, double* nonnull %3, i8* %211) #9
  %212 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %213

; <label>:213:                                    ; preds = %209, %203
  %214 = phi i8 [ %204, %203 ], [ %212, %209 ]
  %215 = add nuw nsw i64 %205, 1
  %216 = zext i8 %214 to i64
  %217 = icmp ult i64 %215, %216
  br i1 %217, label %203, label %218

; <label>:218:                                    ; preds = %213
  %219 = load double, double* %3, align 8, !tbaa !32
  br label %220

; <label>:220:                                    ; preds = %218, %196
  %221 = phi i8 [ %214, %218 ], [ 0, %196 ]
  %222 = phi double [ %219, %218 ], [ 0x7FF8000000000000, %196 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %223 = insertelement <16 x double> %199, double %222, i32 8
  %224 = extractelement <16 x double> %4, i32 9
  %225 = extractelement <16 x double> %5, i32 9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %226 = icmp eq i8 %221, 0
  br i1 %226, label %244, label %227

; <label>:227:                                    ; preds = %220, %237
  %228 = phi i8 [ %238, %237 ], [ %221, %220 ]
  %229 = phi i64 [ %239, %237 ], [ 0, %220 ]
  %230 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %229, i32 6
  %231 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %230, align 16, !tbaa !26
  %232 = icmp eq void (double, double, double*, i8*)* %231, null
  br i1 %232, label %237, label %233

; <label>:233:                                    ; preds = %227
  %234 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %229
  %235 = load i8*, i8** %234, align 8, !tbaa !16
  call void %231(double %224, double %225, double* nonnull %3, i8* %235) #9
  %236 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %237

; <label>:237:                                    ; preds = %233, %227
  %238 = phi i8 [ %228, %227 ], [ %236, %233 ]
  %239 = add nuw nsw i64 %229, 1
  %240 = zext i8 %238 to i64
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %227, label %242

; <label>:242:                                    ; preds = %237
  %243 = load double, double* %3, align 8, !tbaa !32
  br label %244

; <label>:244:                                    ; preds = %242, %220
  %245 = phi i8 [ %238, %242 ], [ 0, %220 ]
  %246 = phi double [ %243, %242 ], [ 0x7FF8000000000000, %220 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %247 = insertelement <16 x double> %223, double %246, i32 9
  %248 = extractelement <16 x double> %4, i32 10
  %249 = extractelement <16 x double> %5, i32 10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %250 = icmp eq i8 %245, 0
  br i1 %250, label %268, label %251

; <label>:251:                                    ; preds = %244, %261
  %252 = phi i8 [ %262, %261 ], [ %245, %244 ]
  %253 = phi i64 [ %263, %261 ], [ 0, %244 ]
  %254 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %253, i32 6
  %255 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %254, align 16, !tbaa !26
  %256 = icmp eq void (double, double, double*, i8*)* %255, null
  br i1 %256, label %261, label %257

; <label>:257:                                    ; preds = %251
  %258 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %253
  %259 = load i8*, i8** %258, align 8, !tbaa !16
  call void %255(double %248, double %249, double* nonnull %3, i8* %259) #9
  %260 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %261

; <label>:261:                                    ; preds = %257, %251
  %262 = phi i8 [ %252, %251 ], [ %260, %257 ]
  %263 = add nuw nsw i64 %253, 1
  %264 = zext i8 %262 to i64
  %265 = icmp ult i64 %263, %264
  br i1 %265, label %251, label %266

; <label>:266:                                    ; preds = %261
  %267 = load double, double* %3, align 8, !tbaa !32
  br label %268

; <label>:268:                                    ; preds = %266, %244
  %269 = phi i8 [ %262, %266 ], [ 0, %244 ]
  %270 = phi double [ %267, %266 ], [ 0x7FF8000000000000, %244 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %271 = insertelement <16 x double> %247, double %270, i32 10
  %272 = extractelement <16 x double> %4, i32 11
  %273 = extractelement <16 x double> %5, i32 11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %274 = icmp eq i8 %269, 0
  br i1 %274, label %292, label %275

; <label>:275:                                    ; preds = %268, %285
  %276 = phi i8 [ %286, %285 ], [ %269, %268 ]
  %277 = phi i64 [ %287, %285 ], [ 0, %268 ]
  %278 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %277, i32 6
  %279 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %278, align 16, !tbaa !26
  %280 = icmp eq void (double, double, double*, i8*)* %279, null
  br i1 %280, label %285, label %281

; <label>:281:                                    ; preds = %275
  %282 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %277
  %283 = load i8*, i8** %282, align 8, !tbaa !16
  call void %279(double %272, double %273, double* nonnull %3, i8* %283) #9
  %284 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %285

; <label>:285:                                    ; preds = %281, %275
  %286 = phi i8 [ %276, %275 ], [ %284, %281 ]
  %287 = add nuw nsw i64 %277, 1
  %288 = zext i8 %286 to i64
  %289 = icmp ult i64 %287, %288
  br i1 %289, label %275, label %290

; <label>:290:                                    ; preds = %285
  %291 = load double, double* %3, align 8, !tbaa !32
  br label %292

; <label>:292:                                    ; preds = %290, %268
  %293 = phi i8 [ %286, %290 ], [ 0, %268 ]
  %294 = phi double [ %291, %290 ], [ 0x7FF8000000000000, %268 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %295 = insertelement <16 x double> %271, double %294, i32 11
  %296 = extractelement <16 x double> %4, i32 12
  %297 = extractelement <16 x double> %5, i32 12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %298 = icmp eq i8 %293, 0
  br i1 %298, label %316, label %299

; <label>:299:                                    ; preds = %292, %309
  %300 = phi i8 [ %310, %309 ], [ %293, %292 ]
  %301 = phi i64 [ %311, %309 ], [ 0, %292 ]
  %302 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %301, i32 6
  %303 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %302, align 16, !tbaa !26
  %304 = icmp eq void (double, double, double*, i8*)* %303, null
  br i1 %304, label %309, label %305

; <label>:305:                                    ; preds = %299
  %306 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %301
  %307 = load i8*, i8** %306, align 8, !tbaa !16
  call void %303(double %296, double %297, double* nonnull %3, i8* %307) #9
  %308 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %309

; <label>:309:                                    ; preds = %305, %299
  %310 = phi i8 [ %300, %299 ], [ %308, %305 ]
  %311 = add nuw nsw i64 %301, 1
  %312 = zext i8 %310 to i64
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %299, label %314

; <label>:314:                                    ; preds = %309
  %315 = load double, double* %3, align 8, !tbaa !32
  br label %316

; <label>:316:                                    ; preds = %314, %292
  %317 = phi i8 [ %310, %314 ], [ 0, %292 ]
  %318 = phi double [ %315, %314 ], [ 0x7FF8000000000000, %292 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %319 = insertelement <16 x double> %295, double %318, i32 12
  %320 = extractelement <16 x double> %4, i32 13
  %321 = extractelement <16 x double> %5, i32 13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %322 = icmp eq i8 %317, 0
  br i1 %322, label %340, label %323

; <label>:323:                                    ; preds = %316, %333
  %324 = phi i8 [ %334, %333 ], [ %317, %316 ]
  %325 = phi i64 [ %335, %333 ], [ 0, %316 ]
  %326 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %325, i32 6
  %327 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %326, align 16, !tbaa !26
  %328 = icmp eq void (double, double, double*, i8*)* %327, null
  br i1 %328, label %333, label %329

; <label>:329:                                    ; preds = %323
  %330 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %325
  %331 = load i8*, i8** %330, align 8, !tbaa !16
  call void %327(double %320, double %321, double* nonnull %3, i8* %331) #9
  %332 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %333

; <label>:333:                                    ; preds = %329, %323
  %334 = phi i8 [ %324, %323 ], [ %332, %329 ]
  %335 = add nuw nsw i64 %325, 1
  %336 = zext i8 %334 to i64
  %337 = icmp ult i64 %335, %336
  br i1 %337, label %323, label %338

; <label>:338:                                    ; preds = %333
  %339 = load double, double* %3, align 8, !tbaa !32
  br label %340

; <label>:340:                                    ; preds = %338, %316
  %341 = phi i8 [ %334, %338 ], [ 0, %316 ]
  %342 = phi double [ %339, %338 ], [ 0x7FF8000000000000, %316 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %343 = insertelement <16 x double> %319, double %342, i32 13
  %344 = extractelement <16 x double> %4, i32 14
  %345 = extractelement <16 x double> %5, i32 14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %346 = icmp eq i8 %341, 0
  br i1 %346, label %364, label %347

; <label>:347:                                    ; preds = %340, %357
  %348 = phi i8 [ %358, %357 ], [ %341, %340 ]
  %349 = phi i64 [ %359, %357 ], [ 0, %340 ]
  %350 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %349, i32 6
  %351 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %350, align 16, !tbaa !26
  %352 = icmp eq void (double, double, double*, i8*)* %351, null
  br i1 %352, label %357, label %353

; <label>:353:                                    ; preds = %347
  %354 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %349
  %355 = load i8*, i8** %354, align 8, !tbaa !16
  call void %351(double %344, double %345, double* nonnull %3, i8* %355) #9
  %356 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %357

; <label>:357:                                    ; preds = %353, %347
  %358 = phi i8 [ %348, %347 ], [ %356, %353 ]
  %359 = add nuw nsw i64 %349, 1
  %360 = zext i8 %358 to i64
  %361 = icmp ult i64 %359, %360
  br i1 %361, label %347, label %362

; <label>:362:                                    ; preds = %357
  %363 = load double, double* %3, align 8, !tbaa !32
  br label %364

; <label>:364:                                    ; preds = %362, %340
  %365 = phi i8 [ %358, %362 ], [ 0, %340 ]
  %366 = phi double [ %363, %362 ], [ 0x7FF8000000000000, %340 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %367 = insertelement <16 x double> %343, double %366, i32 14
  %368 = extractelement <16 x double> %4, i32 15
  %369 = extractelement <16 x double> %5, i32 15
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %370 = icmp eq i8 %365, 0
  br i1 %370, label %388, label %371

; <label>:371:                                    ; preds = %364, %381
  %372 = phi i8 [ %382, %381 ], [ %365, %364 ]
  %373 = phi i64 [ %383, %381 ], [ 0, %364 ]
  %374 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %373, i32 6
  %375 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %374, align 16, !tbaa !26
  %376 = icmp eq void (double, double, double*, i8*)* %375, null
  br i1 %376, label %381, label %377

; <label>:377:                                    ; preds = %371
  %378 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %373
  %379 = load i8*, i8** %378, align 8, !tbaa !16
  call void %375(double %368, double %369, double* nonnull %3, i8* %379) #9
  %380 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %381

; <label>:381:                                    ; preds = %377, %371
  %382 = phi i8 [ %372, %371 ], [ %380, %377 ]
  %383 = add nuw nsw i64 %373, 1
  %384 = zext i8 %382 to i64
  %385 = icmp ult i64 %383, %384
  br i1 %385, label %371, label %386

; <label>:386:                                    ; preds = %381
  %387 = load double, double* %3, align 8, !tbaa !32
  br label %388

; <label>:388:                                    ; preds = %386, %364
  %389 = phi double [ %387, %386 ], [ 0x7FF8000000000000, %364 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %390 = insertelement <16 x double> %367, double %389, i32 15
  ret <16 x double> %390
}

; Function Attrs: nounwind uwtable
define <16 x double> @_16xdoublemul(<16 x double>* byval nocapture readonly align 128, <16 x double>* byval nocapture readonly align 128) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = load <16 x double>, <16 x double>* %0, align 128, !tbaa !17
  %5 = load <16 x double>, <16 x double>* %1, align 128, !tbaa !17
  %6 = bitcast double* %3 to i8*
  %7 = extractelement <16 x double> %4, i32 0
  %8 = extractelement <16 x double> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load double, double* %3, align 8, !tbaa !32
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 7
  %17 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %16, align 8, !tbaa !27
  %18 = icmp eq void (double, double, double*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(double %7, double %8, double* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi double [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %31 = insertelement <16 x double> undef, double %30, i32 0
  %32 = extractelement <16 x double> %4, i32 1
  %33 = extractelement <16 x double> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 7
  %39 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %38, align 8, !tbaa !27
  %40 = icmp eq void (double, double, double*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(double %32, double %33, double* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load double, double* %3, align 8, !tbaa !32
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi i8 [ %46, %50 ], [ 0, %28 ]
  %54 = phi double [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %55 = insertelement <16 x double> %31, double %54, i32 1
  %56 = extractelement <16 x double> %4, i32 2
  %57 = extractelement <16 x double> %5, i32 2
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %58 = icmp eq i8 %53, 0
  br i1 %58, label %76, label %59

; <label>:59:                                     ; preds = %52, %69
  %60 = phi i8 [ %70, %69 ], [ %53, %52 ]
  %61 = phi i64 [ %71, %69 ], [ 0, %52 ]
  %62 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %61, i32 7
  %63 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %62, align 8, !tbaa !27
  %64 = icmp eq void (double, double, double*, i8*)* %63, null
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %61
  %67 = load i8*, i8** %66, align 8, !tbaa !16
  call void %63(double %56, double %57, double* nonnull %3, i8* %67) #9
  %68 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %69

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8 [ %60, %59 ], [ %68, %65 ]
  %71 = add nuw nsw i64 %61, 1
  %72 = zext i8 %70 to i64
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %59, label %74

; <label>:74:                                     ; preds = %69
  %75 = load double, double* %3, align 8, !tbaa !32
  br label %76

; <label>:76:                                     ; preds = %74, %52
  %77 = phi i8 [ %70, %74 ], [ 0, %52 ]
  %78 = phi double [ %75, %74 ], [ 0x7FF8000000000000, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %79 = insertelement <16 x double> %55, double %78, i32 2
  %80 = extractelement <16 x double> %4, i32 3
  %81 = extractelement <16 x double> %5, i32 3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %82 = icmp eq i8 %77, 0
  br i1 %82, label %100, label %83

; <label>:83:                                     ; preds = %76, %93
  %84 = phi i8 [ %94, %93 ], [ %77, %76 ]
  %85 = phi i64 [ %95, %93 ], [ 0, %76 ]
  %86 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %85, i32 7
  %87 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %86, align 8, !tbaa !27
  %88 = icmp eq void (double, double, double*, i8*)* %87, null
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %85
  %91 = load i8*, i8** %90, align 8, !tbaa !16
  call void %87(double %80, double %81, double* nonnull %3, i8* %91) #9
  %92 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %93

; <label>:93:                                     ; preds = %89, %83
  %94 = phi i8 [ %84, %83 ], [ %92, %89 ]
  %95 = add nuw nsw i64 %85, 1
  %96 = zext i8 %94 to i64
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %83, label %98

; <label>:98:                                     ; preds = %93
  %99 = load double, double* %3, align 8, !tbaa !32
  br label %100

; <label>:100:                                    ; preds = %98, %76
  %101 = phi i8 [ %94, %98 ], [ 0, %76 ]
  %102 = phi double [ %99, %98 ], [ 0x7FF8000000000000, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %103 = insertelement <16 x double> %79, double %102, i32 3
  %104 = extractelement <16 x double> %4, i32 4
  %105 = extractelement <16 x double> %5, i32 4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %106 = icmp eq i8 %101, 0
  br i1 %106, label %124, label %107

; <label>:107:                                    ; preds = %100, %117
  %108 = phi i8 [ %118, %117 ], [ %101, %100 ]
  %109 = phi i64 [ %119, %117 ], [ 0, %100 ]
  %110 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %109, i32 7
  %111 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %110, align 8, !tbaa !27
  %112 = icmp eq void (double, double, double*, i8*)* %111, null
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %109
  %115 = load i8*, i8** %114, align 8, !tbaa !16
  call void %111(double %104, double %105, double* nonnull %3, i8* %115) #9
  %116 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %117

; <label>:117:                                    ; preds = %113, %107
  %118 = phi i8 [ %108, %107 ], [ %116, %113 ]
  %119 = add nuw nsw i64 %109, 1
  %120 = zext i8 %118 to i64
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %107, label %122

; <label>:122:                                    ; preds = %117
  %123 = load double, double* %3, align 8, !tbaa !32
  br label %124

; <label>:124:                                    ; preds = %122, %100
  %125 = phi i8 [ %118, %122 ], [ 0, %100 ]
  %126 = phi double [ %123, %122 ], [ 0x7FF8000000000000, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %127 = insertelement <16 x double> %103, double %126, i32 4
  %128 = extractelement <16 x double> %4, i32 5
  %129 = extractelement <16 x double> %5, i32 5
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %130 = icmp eq i8 %125, 0
  br i1 %130, label %148, label %131

; <label>:131:                                    ; preds = %124, %141
  %132 = phi i8 [ %142, %141 ], [ %125, %124 ]
  %133 = phi i64 [ %143, %141 ], [ 0, %124 ]
  %134 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %133, i32 7
  %135 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %134, align 8, !tbaa !27
  %136 = icmp eq void (double, double, double*, i8*)* %135, null
  br i1 %136, label %141, label %137

; <label>:137:                                    ; preds = %131
  %138 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %133
  %139 = load i8*, i8** %138, align 8, !tbaa !16
  call void %135(double %128, double %129, double* nonnull %3, i8* %139) #9
  %140 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %141

; <label>:141:                                    ; preds = %137, %131
  %142 = phi i8 [ %132, %131 ], [ %140, %137 ]
  %143 = add nuw nsw i64 %133, 1
  %144 = zext i8 %142 to i64
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %131, label %146

; <label>:146:                                    ; preds = %141
  %147 = load double, double* %3, align 8, !tbaa !32
  br label %148

; <label>:148:                                    ; preds = %146, %124
  %149 = phi i8 [ %142, %146 ], [ 0, %124 ]
  %150 = phi double [ %147, %146 ], [ 0x7FF8000000000000, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %151 = insertelement <16 x double> %127, double %150, i32 5
  %152 = extractelement <16 x double> %4, i32 6
  %153 = extractelement <16 x double> %5, i32 6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %154 = icmp eq i8 %149, 0
  br i1 %154, label %172, label %155

; <label>:155:                                    ; preds = %148, %165
  %156 = phi i8 [ %166, %165 ], [ %149, %148 ]
  %157 = phi i64 [ %167, %165 ], [ 0, %148 ]
  %158 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %157, i32 7
  %159 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %158, align 8, !tbaa !27
  %160 = icmp eq void (double, double, double*, i8*)* %159, null
  br i1 %160, label %165, label %161

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %157
  %163 = load i8*, i8** %162, align 8, !tbaa !16
  call void %159(double %152, double %153, double* nonnull %3, i8* %163) #9
  %164 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %165

; <label>:165:                                    ; preds = %161, %155
  %166 = phi i8 [ %156, %155 ], [ %164, %161 ]
  %167 = add nuw nsw i64 %157, 1
  %168 = zext i8 %166 to i64
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %155, label %170

; <label>:170:                                    ; preds = %165
  %171 = load double, double* %3, align 8, !tbaa !32
  br label %172

; <label>:172:                                    ; preds = %170, %148
  %173 = phi i8 [ %166, %170 ], [ 0, %148 ]
  %174 = phi double [ %171, %170 ], [ 0x7FF8000000000000, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %175 = insertelement <16 x double> %151, double %174, i32 6
  %176 = extractelement <16 x double> %4, i32 7
  %177 = extractelement <16 x double> %5, i32 7
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %178 = icmp eq i8 %173, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %172, %189
  %180 = phi i8 [ %190, %189 ], [ %173, %172 ]
  %181 = phi i64 [ %191, %189 ], [ 0, %172 ]
  %182 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %181, i32 7
  %183 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %182, align 8, !tbaa !27
  %184 = icmp eq void (double, double, double*, i8*)* %183, null
  br i1 %184, label %189, label %185

; <label>:185:                                    ; preds = %179
  %186 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %181
  %187 = load i8*, i8** %186, align 8, !tbaa !16
  call void %183(double %176, double %177, double* nonnull %3, i8* %187) #9
  %188 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %189

; <label>:189:                                    ; preds = %185, %179
  %190 = phi i8 [ %180, %179 ], [ %188, %185 ]
  %191 = add nuw nsw i64 %181, 1
  %192 = zext i8 %190 to i64
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %179, label %194

; <label>:194:                                    ; preds = %189
  %195 = load double, double* %3, align 8, !tbaa !32
  br label %196

; <label>:196:                                    ; preds = %194, %172
  %197 = phi i8 [ %190, %194 ], [ 0, %172 ]
  %198 = phi double [ %195, %194 ], [ 0x7FF8000000000000, %172 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %199 = insertelement <16 x double> %175, double %198, i32 7
  %200 = extractelement <16 x double> %4, i32 8
  %201 = extractelement <16 x double> %5, i32 8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %202 = icmp eq i8 %197, 0
  br i1 %202, label %220, label %203

; <label>:203:                                    ; preds = %196, %213
  %204 = phi i8 [ %214, %213 ], [ %197, %196 ]
  %205 = phi i64 [ %215, %213 ], [ 0, %196 ]
  %206 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %205, i32 7
  %207 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %206, align 8, !tbaa !27
  %208 = icmp eq void (double, double, double*, i8*)* %207, null
  br i1 %208, label %213, label %209

; <label>:209:                                    ; preds = %203
  %210 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %205
  %211 = load i8*, i8** %210, align 8, !tbaa !16
  call void %207(double %200, double %201, double* nonnull %3, i8* %211) #9
  %212 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %213

; <label>:213:                                    ; preds = %209, %203
  %214 = phi i8 [ %204, %203 ], [ %212, %209 ]
  %215 = add nuw nsw i64 %205, 1
  %216 = zext i8 %214 to i64
  %217 = icmp ult i64 %215, %216
  br i1 %217, label %203, label %218

; <label>:218:                                    ; preds = %213
  %219 = load double, double* %3, align 8, !tbaa !32
  br label %220

; <label>:220:                                    ; preds = %218, %196
  %221 = phi i8 [ %214, %218 ], [ 0, %196 ]
  %222 = phi double [ %219, %218 ], [ 0x7FF8000000000000, %196 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %223 = insertelement <16 x double> %199, double %222, i32 8
  %224 = extractelement <16 x double> %4, i32 9
  %225 = extractelement <16 x double> %5, i32 9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %226 = icmp eq i8 %221, 0
  br i1 %226, label %244, label %227

; <label>:227:                                    ; preds = %220, %237
  %228 = phi i8 [ %238, %237 ], [ %221, %220 ]
  %229 = phi i64 [ %239, %237 ], [ 0, %220 ]
  %230 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %229, i32 7
  %231 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %230, align 8, !tbaa !27
  %232 = icmp eq void (double, double, double*, i8*)* %231, null
  br i1 %232, label %237, label %233

; <label>:233:                                    ; preds = %227
  %234 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %229
  %235 = load i8*, i8** %234, align 8, !tbaa !16
  call void %231(double %224, double %225, double* nonnull %3, i8* %235) #9
  %236 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %237

; <label>:237:                                    ; preds = %233, %227
  %238 = phi i8 [ %228, %227 ], [ %236, %233 ]
  %239 = add nuw nsw i64 %229, 1
  %240 = zext i8 %238 to i64
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %227, label %242

; <label>:242:                                    ; preds = %237
  %243 = load double, double* %3, align 8, !tbaa !32
  br label %244

; <label>:244:                                    ; preds = %242, %220
  %245 = phi i8 [ %238, %242 ], [ 0, %220 ]
  %246 = phi double [ %243, %242 ], [ 0x7FF8000000000000, %220 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %247 = insertelement <16 x double> %223, double %246, i32 9
  %248 = extractelement <16 x double> %4, i32 10
  %249 = extractelement <16 x double> %5, i32 10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %250 = icmp eq i8 %245, 0
  br i1 %250, label %268, label %251

; <label>:251:                                    ; preds = %244, %261
  %252 = phi i8 [ %262, %261 ], [ %245, %244 ]
  %253 = phi i64 [ %263, %261 ], [ 0, %244 ]
  %254 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %253, i32 7
  %255 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %254, align 8, !tbaa !27
  %256 = icmp eq void (double, double, double*, i8*)* %255, null
  br i1 %256, label %261, label %257

; <label>:257:                                    ; preds = %251
  %258 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %253
  %259 = load i8*, i8** %258, align 8, !tbaa !16
  call void %255(double %248, double %249, double* nonnull %3, i8* %259) #9
  %260 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %261

; <label>:261:                                    ; preds = %257, %251
  %262 = phi i8 [ %252, %251 ], [ %260, %257 ]
  %263 = add nuw nsw i64 %253, 1
  %264 = zext i8 %262 to i64
  %265 = icmp ult i64 %263, %264
  br i1 %265, label %251, label %266

; <label>:266:                                    ; preds = %261
  %267 = load double, double* %3, align 8, !tbaa !32
  br label %268

; <label>:268:                                    ; preds = %266, %244
  %269 = phi i8 [ %262, %266 ], [ 0, %244 ]
  %270 = phi double [ %267, %266 ], [ 0x7FF8000000000000, %244 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %271 = insertelement <16 x double> %247, double %270, i32 10
  %272 = extractelement <16 x double> %4, i32 11
  %273 = extractelement <16 x double> %5, i32 11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %274 = icmp eq i8 %269, 0
  br i1 %274, label %292, label %275

; <label>:275:                                    ; preds = %268, %285
  %276 = phi i8 [ %286, %285 ], [ %269, %268 ]
  %277 = phi i64 [ %287, %285 ], [ 0, %268 ]
  %278 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %277, i32 7
  %279 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %278, align 8, !tbaa !27
  %280 = icmp eq void (double, double, double*, i8*)* %279, null
  br i1 %280, label %285, label %281

; <label>:281:                                    ; preds = %275
  %282 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %277
  %283 = load i8*, i8** %282, align 8, !tbaa !16
  call void %279(double %272, double %273, double* nonnull %3, i8* %283) #9
  %284 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %285

; <label>:285:                                    ; preds = %281, %275
  %286 = phi i8 [ %276, %275 ], [ %284, %281 ]
  %287 = add nuw nsw i64 %277, 1
  %288 = zext i8 %286 to i64
  %289 = icmp ult i64 %287, %288
  br i1 %289, label %275, label %290

; <label>:290:                                    ; preds = %285
  %291 = load double, double* %3, align 8, !tbaa !32
  br label %292

; <label>:292:                                    ; preds = %290, %268
  %293 = phi i8 [ %286, %290 ], [ 0, %268 ]
  %294 = phi double [ %291, %290 ], [ 0x7FF8000000000000, %268 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %295 = insertelement <16 x double> %271, double %294, i32 11
  %296 = extractelement <16 x double> %4, i32 12
  %297 = extractelement <16 x double> %5, i32 12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %298 = icmp eq i8 %293, 0
  br i1 %298, label %316, label %299

; <label>:299:                                    ; preds = %292, %309
  %300 = phi i8 [ %310, %309 ], [ %293, %292 ]
  %301 = phi i64 [ %311, %309 ], [ 0, %292 ]
  %302 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %301, i32 7
  %303 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %302, align 8, !tbaa !27
  %304 = icmp eq void (double, double, double*, i8*)* %303, null
  br i1 %304, label %309, label %305

; <label>:305:                                    ; preds = %299
  %306 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %301
  %307 = load i8*, i8** %306, align 8, !tbaa !16
  call void %303(double %296, double %297, double* nonnull %3, i8* %307) #9
  %308 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %309

; <label>:309:                                    ; preds = %305, %299
  %310 = phi i8 [ %300, %299 ], [ %308, %305 ]
  %311 = add nuw nsw i64 %301, 1
  %312 = zext i8 %310 to i64
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %299, label %314

; <label>:314:                                    ; preds = %309
  %315 = load double, double* %3, align 8, !tbaa !32
  br label %316

; <label>:316:                                    ; preds = %314, %292
  %317 = phi i8 [ %310, %314 ], [ 0, %292 ]
  %318 = phi double [ %315, %314 ], [ 0x7FF8000000000000, %292 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %319 = insertelement <16 x double> %295, double %318, i32 12
  %320 = extractelement <16 x double> %4, i32 13
  %321 = extractelement <16 x double> %5, i32 13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %322 = icmp eq i8 %317, 0
  br i1 %322, label %340, label %323

; <label>:323:                                    ; preds = %316, %333
  %324 = phi i8 [ %334, %333 ], [ %317, %316 ]
  %325 = phi i64 [ %335, %333 ], [ 0, %316 ]
  %326 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %325, i32 7
  %327 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %326, align 8, !tbaa !27
  %328 = icmp eq void (double, double, double*, i8*)* %327, null
  br i1 %328, label %333, label %329

; <label>:329:                                    ; preds = %323
  %330 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %325
  %331 = load i8*, i8** %330, align 8, !tbaa !16
  call void %327(double %320, double %321, double* nonnull %3, i8* %331) #9
  %332 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %333

; <label>:333:                                    ; preds = %329, %323
  %334 = phi i8 [ %324, %323 ], [ %332, %329 ]
  %335 = add nuw nsw i64 %325, 1
  %336 = zext i8 %334 to i64
  %337 = icmp ult i64 %335, %336
  br i1 %337, label %323, label %338

; <label>:338:                                    ; preds = %333
  %339 = load double, double* %3, align 8, !tbaa !32
  br label %340

; <label>:340:                                    ; preds = %338, %316
  %341 = phi i8 [ %334, %338 ], [ 0, %316 ]
  %342 = phi double [ %339, %338 ], [ 0x7FF8000000000000, %316 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %343 = insertelement <16 x double> %319, double %342, i32 13
  %344 = extractelement <16 x double> %4, i32 14
  %345 = extractelement <16 x double> %5, i32 14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %346 = icmp eq i8 %341, 0
  br i1 %346, label %364, label %347

; <label>:347:                                    ; preds = %340, %357
  %348 = phi i8 [ %358, %357 ], [ %341, %340 ]
  %349 = phi i64 [ %359, %357 ], [ 0, %340 ]
  %350 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %349, i32 7
  %351 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %350, align 8, !tbaa !27
  %352 = icmp eq void (double, double, double*, i8*)* %351, null
  br i1 %352, label %357, label %353

; <label>:353:                                    ; preds = %347
  %354 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %349
  %355 = load i8*, i8** %354, align 8, !tbaa !16
  call void %351(double %344, double %345, double* nonnull %3, i8* %355) #9
  %356 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %357

; <label>:357:                                    ; preds = %353, %347
  %358 = phi i8 [ %348, %347 ], [ %356, %353 ]
  %359 = add nuw nsw i64 %349, 1
  %360 = zext i8 %358 to i64
  %361 = icmp ult i64 %359, %360
  br i1 %361, label %347, label %362

; <label>:362:                                    ; preds = %357
  %363 = load double, double* %3, align 8, !tbaa !32
  br label %364

; <label>:364:                                    ; preds = %362, %340
  %365 = phi i8 [ %358, %362 ], [ 0, %340 ]
  %366 = phi double [ %363, %362 ], [ 0x7FF8000000000000, %340 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %367 = insertelement <16 x double> %343, double %366, i32 14
  %368 = extractelement <16 x double> %4, i32 15
  %369 = extractelement <16 x double> %5, i32 15
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %370 = icmp eq i8 %365, 0
  br i1 %370, label %388, label %371

; <label>:371:                                    ; preds = %364, %381
  %372 = phi i8 [ %382, %381 ], [ %365, %364 ]
  %373 = phi i64 [ %383, %381 ], [ 0, %364 ]
  %374 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %373, i32 7
  %375 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %374, align 8, !tbaa !27
  %376 = icmp eq void (double, double, double*, i8*)* %375, null
  br i1 %376, label %381, label %377

; <label>:377:                                    ; preds = %371
  %378 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %373
  %379 = load i8*, i8** %378, align 8, !tbaa !16
  call void %375(double %368, double %369, double* nonnull %3, i8* %379) #9
  %380 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %381

; <label>:381:                                    ; preds = %377, %371
  %382 = phi i8 [ %372, %371 ], [ %380, %377 ]
  %383 = add nuw nsw i64 %373, 1
  %384 = zext i8 %382 to i64
  %385 = icmp ult i64 %383, %384
  br i1 %385, label %371, label %386

; <label>:386:                                    ; preds = %381
  %387 = load double, double* %3, align 8, !tbaa !32
  br label %388

; <label>:388:                                    ; preds = %386, %364
  %389 = phi double [ %387, %386 ], [ 0x7FF8000000000000, %364 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %390 = insertelement <16 x double> %367, double %389, i32 15
  ret <16 x double> %390
}

; Function Attrs: nounwind uwtable
define <16 x double> @_16xdoublediv(<16 x double>* byval nocapture readonly align 128, <16 x double>* byval nocapture readonly align 128) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = load <16 x double>, <16 x double>* %0, align 128, !tbaa !17
  %5 = load <16 x double>, <16 x double>* %1, align 128, !tbaa !17
  %6 = bitcast double* %3 to i8*
  %7 = extractelement <16 x double> %4, i32 0
  %8 = extractelement <16 x double> %5, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %9 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %13

; <label>:11:                                     ; preds = %23
  %12 = load double, double* %3, align 8, !tbaa !32
  br label %28

; <label>:13:                                     ; preds = %2, %23
  %14 = phi i8 [ %24, %23 ], [ %9, %2 ]
  %15 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %16 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %15, i32 8
  %17 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %16, align 16, !tbaa !28
  %18 = icmp eq void (double, double, double*, i8*)* %17, null
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %15
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  call void %17(double %7, double %8, double* nonnull %3, i8* %21) #9
  %22 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %23

; <label>:23:                                     ; preds = %19, %13
  %24 = phi i8 [ %14, %13 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %15, 1
  %26 = zext i8 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %11

; <label>:28:                                     ; preds = %2, %11
  %29 = phi i8 [ %24, %11 ], [ 0, %2 ]
  %30 = phi double [ %12, %11 ], [ 0x7FF8000000000000, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %31 = insertelement <16 x double> undef, double %30, i32 0
  %32 = extractelement <16 x double> %4, i32 1
  %33 = extractelement <16 x double> %5, i32 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %34 = icmp eq i8 %29, 0
  br i1 %34, label %52, label %35

; <label>:35:                                     ; preds = %28, %45
  %36 = phi i8 [ %46, %45 ], [ %29, %28 ]
  %37 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %38 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %37, i32 8
  %39 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %38, align 16, !tbaa !28
  %40 = icmp eq void (double, double, double*, i8*)* %39, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %37
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  call void %39(double %32, double %33, double* nonnull %3, i8* %43) #9
  %44 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %45

; <label>:45:                                     ; preds = %41, %35
  %46 = phi i8 [ %36, %35 ], [ %44, %41 ]
  %47 = add nuw nsw i64 %37, 1
  %48 = zext i8 %46 to i64
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %35, label %50

; <label>:50:                                     ; preds = %45
  %51 = load double, double* %3, align 8, !tbaa !32
  br label %52

; <label>:52:                                     ; preds = %50, %28
  %53 = phi i8 [ %46, %50 ], [ 0, %28 ]
  %54 = phi double [ %51, %50 ], [ 0x7FF8000000000000, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %55 = insertelement <16 x double> %31, double %54, i32 1
  %56 = extractelement <16 x double> %4, i32 2
  %57 = extractelement <16 x double> %5, i32 2
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %58 = icmp eq i8 %53, 0
  br i1 %58, label %76, label %59

; <label>:59:                                     ; preds = %52, %69
  %60 = phi i8 [ %70, %69 ], [ %53, %52 ]
  %61 = phi i64 [ %71, %69 ], [ 0, %52 ]
  %62 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %61, i32 8
  %63 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %62, align 16, !tbaa !28
  %64 = icmp eq void (double, double, double*, i8*)* %63, null
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %61
  %67 = load i8*, i8** %66, align 8, !tbaa !16
  call void %63(double %56, double %57, double* nonnull %3, i8* %67) #9
  %68 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %69

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8 [ %60, %59 ], [ %68, %65 ]
  %71 = add nuw nsw i64 %61, 1
  %72 = zext i8 %70 to i64
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %59, label %74

; <label>:74:                                     ; preds = %69
  %75 = load double, double* %3, align 8, !tbaa !32
  br label %76

; <label>:76:                                     ; preds = %74, %52
  %77 = phi i8 [ %70, %74 ], [ 0, %52 ]
  %78 = phi double [ %75, %74 ], [ 0x7FF8000000000000, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %79 = insertelement <16 x double> %55, double %78, i32 2
  %80 = extractelement <16 x double> %4, i32 3
  %81 = extractelement <16 x double> %5, i32 3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %82 = icmp eq i8 %77, 0
  br i1 %82, label %100, label %83

; <label>:83:                                     ; preds = %76, %93
  %84 = phi i8 [ %94, %93 ], [ %77, %76 ]
  %85 = phi i64 [ %95, %93 ], [ 0, %76 ]
  %86 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %85, i32 8
  %87 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %86, align 16, !tbaa !28
  %88 = icmp eq void (double, double, double*, i8*)* %87, null
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %85
  %91 = load i8*, i8** %90, align 8, !tbaa !16
  call void %87(double %80, double %81, double* nonnull %3, i8* %91) #9
  %92 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %93

; <label>:93:                                     ; preds = %89, %83
  %94 = phi i8 [ %84, %83 ], [ %92, %89 ]
  %95 = add nuw nsw i64 %85, 1
  %96 = zext i8 %94 to i64
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %83, label %98

; <label>:98:                                     ; preds = %93
  %99 = load double, double* %3, align 8, !tbaa !32
  br label %100

; <label>:100:                                    ; preds = %98, %76
  %101 = phi i8 [ %94, %98 ], [ 0, %76 ]
  %102 = phi double [ %99, %98 ], [ 0x7FF8000000000000, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %103 = insertelement <16 x double> %79, double %102, i32 3
  %104 = extractelement <16 x double> %4, i32 4
  %105 = extractelement <16 x double> %5, i32 4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %106 = icmp eq i8 %101, 0
  br i1 %106, label %124, label %107

; <label>:107:                                    ; preds = %100, %117
  %108 = phi i8 [ %118, %117 ], [ %101, %100 ]
  %109 = phi i64 [ %119, %117 ], [ 0, %100 ]
  %110 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %109, i32 8
  %111 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %110, align 16, !tbaa !28
  %112 = icmp eq void (double, double, double*, i8*)* %111, null
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %109
  %115 = load i8*, i8** %114, align 8, !tbaa !16
  call void %111(double %104, double %105, double* nonnull %3, i8* %115) #9
  %116 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %117

; <label>:117:                                    ; preds = %113, %107
  %118 = phi i8 [ %108, %107 ], [ %116, %113 ]
  %119 = add nuw nsw i64 %109, 1
  %120 = zext i8 %118 to i64
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %107, label %122

; <label>:122:                                    ; preds = %117
  %123 = load double, double* %3, align 8, !tbaa !32
  br label %124

; <label>:124:                                    ; preds = %122, %100
  %125 = phi i8 [ %118, %122 ], [ 0, %100 ]
  %126 = phi double [ %123, %122 ], [ 0x7FF8000000000000, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %127 = insertelement <16 x double> %103, double %126, i32 4
  %128 = extractelement <16 x double> %4, i32 5
  %129 = extractelement <16 x double> %5, i32 5
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %130 = icmp eq i8 %125, 0
  br i1 %130, label %148, label %131

; <label>:131:                                    ; preds = %124, %141
  %132 = phi i8 [ %142, %141 ], [ %125, %124 ]
  %133 = phi i64 [ %143, %141 ], [ 0, %124 ]
  %134 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %133, i32 8
  %135 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %134, align 16, !tbaa !28
  %136 = icmp eq void (double, double, double*, i8*)* %135, null
  br i1 %136, label %141, label %137

; <label>:137:                                    ; preds = %131
  %138 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %133
  %139 = load i8*, i8** %138, align 8, !tbaa !16
  call void %135(double %128, double %129, double* nonnull %3, i8* %139) #9
  %140 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %141

; <label>:141:                                    ; preds = %137, %131
  %142 = phi i8 [ %132, %131 ], [ %140, %137 ]
  %143 = add nuw nsw i64 %133, 1
  %144 = zext i8 %142 to i64
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %131, label %146

; <label>:146:                                    ; preds = %141
  %147 = load double, double* %3, align 8, !tbaa !32
  br label %148

; <label>:148:                                    ; preds = %146, %124
  %149 = phi i8 [ %142, %146 ], [ 0, %124 ]
  %150 = phi double [ %147, %146 ], [ 0x7FF8000000000000, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %151 = insertelement <16 x double> %127, double %150, i32 5
  %152 = extractelement <16 x double> %4, i32 6
  %153 = extractelement <16 x double> %5, i32 6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %154 = icmp eq i8 %149, 0
  br i1 %154, label %172, label %155

; <label>:155:                                    ; preds = %148, %165
  %156 = phi i8 [ %166, %165 ], [ %149, %148 ]
  %157 = phi i64 [ %167, %165 ], [ 0, %148 ]
  %158 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %157, i32 8
  %159 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %158, align 16, !tbaa !28
  %160 = icmp eq void (double, double, double*, i8*)* %159, null
  br i1 %160, label %165, label %161

; <label>:161:                                    ; preds = %155
  %162 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %157
  %163 = load i8*, i8** %162, align 8, !tbaa !16
  call void %159(double %152, double %153, double* nonnull %3, i8* %163) #9
  %164 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %165

; <label>:165:                                    ; preds = %161, %155
  %166 = phi i8 [ %156, %155 ], [ %164, %161 ]
  %167 = add nuw nsw i64 %157, 1
  %168 = zext i8 %166 to i64
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %155, label %170

; <label>:170:                                    ; preds = %165
  %171 = load double, double* %3, align 8, !tbaa !32
  br label %172

; <label>:172:                                    ; preds = %170, %148
  %173 = phi i8 [ %166, %170 ], [ 0, %148 ]
  %174 = phi double [ %171, %170 ], [ 0x7FF8000000000000, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %175 = insertelement <16 x double> %151, double %174, i32 6
  %176 = extractelement <16 x double> %4, i32 7
  %177 = extractelement <16 x double> %5, i32 7
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %178 = icmp eq i8 %173, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %172, %189
  %180 = phi i8 [ %190, %189 ], [ %173, %172 ]
  %181 = phi i64 [ %191, %189 ], [ 0, %172 ]
  %182 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %181, i32 8
  %183 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %182, align 16, !tbaa !28
  %184 = icmp eq void (double, double, double*, i8*)* %183, null
  br i1 %184, label %189, label %185

; <label>:185:                                    ; preds = %179
  %186 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %181
  %187 = load i8*, i8** %186, align 8, !tbaa !16
  call void %183(double %176, double %177, double* nonnull %3, i8* %187) #9
  %188 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %189

; <label>:189:                                    ; preds = %185, %179
  %190 = phi i8 [ %180, %179 ], [ %188, %185 ]
  %191 = add nuw nsw i64 %181, 1
  %192 = zext i8 %190 to i64
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %179, label %194

; <label>:194:                                    ; preds = %189
  %195 = load double, double* %3, align 8, !tbaa !32
  br label %196

; <label>:196:                                    ; preds = %194, %172
  %197 = phi i8 [ %190, %194 ], [ 0, %172 ]
  %198 = phi double [ %195, %194 ], [ 0x7FF8000000000000, %172 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %199 = insertelement <16 x double> %175, double %198, i32 7
  %200 = extractelement <16 x double> %4, i32 8
  %201 = extractelement <16 x double> %5, i32 8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %202 = icmp eq i8 %197, 0
  br i1 %202, label %220, label %203

; <label>:203:                                    ; preds = %196, %213
  %204 = phi i8 [ %214, %213 ], [ %197, %196 ]
  %205 = phi i64 [ %215, %213 ], [ 0, %196 ]
  %206 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %205, i32 8
  %207 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %206, align 16, !tbaa !28
  %208 = icmp eq void (double, double, double*, i8*)* %207, null
  br i1 %208, label %213, label %209

; <label>:209:                                    ; preds = %203
  %210 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %205
  %211 = load i8*, i8** %210, align 8, !tbaa !16
  call void %207(double %200, double %201, double* nonnull %3, i8* %211) #9
  %212 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %213

; <label>:213:                                    ; preds = %209, %203
  %214 = phi i8 [ %204, %203 ], [ %212, %209 ]
  %215 = add nuw nsw i64 %205, 1
  %216 = zext i8 %214 to i64
  %217 = icmp ult i64 %215, %216
  br i1 %217, label %203, label %218

; <label>:218:                                    ; preds = %213
  %219 = load double, double* %3, align 8, !tbaa !32
  br label %220

; <label>:220:                                    ; preds = %218, %196
  %221 = phi i8 [ %214, %218 ], [ 0, %196 ]
  %222 = phi double [ %219, %218 ], [ 0x7FF8000000000000, %196 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %223 = insertelement <16 x double> %199, double %222, i32 8
  %224 = extractelement <16 x double> %4, i32 9
  %225 = extractelement <16 x double> %5, i32 9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %226 = icmp eq i8 %221, 0
  br i1 %226, label %244, label %227

; <label>:227:                                    ; preds = %220, %237
  %228 = phi i8 [ %238, %237 ], [ %221, %220 ]
  %229 = phi i64 [ %239, %237 ], [ 0, %220 ]
  %230 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %229, i32 8
  %231 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %230, align 16, !tbaa !28
  %232 = icmp eq void (double, double, double*, i8*)* %231, null
  br i1 %232, label %237, label %233

; <label>:233:                                    ; preds = %227
  %234 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %229
  %235 = load i8*, i8** %234, align 8, !tbaa !16
  call void %231(double %224, double %225, double* nonnull %3, i8* %235) #9
  %236 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %237

; <label>:237:                                    ; preds = %233, %227
  %238 = phi i8 [ %228, %227 ], [ %236, %233 ]
  %239 = add nuw nsw i64 %229, 1
  %240 = zext i8 %238 to i64
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %227, label %242

; <label>:242:                                    ; preds = %237
  %243 = load double, double* %3, align 8, !tbaa !32
  br label %244

; <label>:244:                                    ; preds = %242, %220
  %245 = phi i8 [ %238, %242 ], [ 0, %220 ]
  %246 = phi double [ %243, %242 ], [ 0x7FF8000000000000, %220 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %247 = insertelement <16 x double> %223, double %246, i32 9
  %248 = extractelement <16 x double> %4, i32 10
  %249 = extractelement <16 x double> %5, i32 10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %250 = icmp eq i8 %245, 0
  br i1 %250, label %268, label %251

; <label>:251:                                    ; preds = %244, %261
  %252 = phi i8 [ %262, %261 ], [ %245, %244 ]
  %253 = phi i64 [ %263, %261 ], [ 0, %244 ]
  %254 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %253, i32 8
  %255 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %254, align 16, !tbaa !28
  %256 = icmp eq void (double, double, double*, i8*)* %255, null
  br i1 %256, label %261, label %257

; <label>:257:                                    ; preds = %251
  %258 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %253
  %259 = load i8*, i8** %258, align 8, !tbaa !16
  call void %255(double %248, double %249, double* nonnull %3, i8* %259) #9
  %260 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %261

; <label>:261:                                    ; preds = %257, %251
  %262 = phi i8 [ %252, %251 ], [ %260, %257 ]
  %263 = add nuw nsw i64 %253, 1
  %264 = zext i8 %262 to i64
  %265 = icmp ult i64 %263, %264
  br i1 %265, label %251, label %266

; <label>:266:                                    ; preds = %261
  %267 = load double, double* %3, align 8, !tbaa !32
  br label %268

; <label>:268:                                    ; preds = %266, %244
  %269 = phi i8 [ %262, %266 ], [ 0, %244 ]
  %270 = phi double [ %267, %266 ], [ 0x7FF8000000000000, %244 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %271 = insertelement <16 x double> %247, double %270, i32 10
  %272 = extractelement <16 x double> %4, i32 11
  %273 = extractelement <16 x double> %5, i32 11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %274 = icmp eq i8 %269, 0
  br i1 %274, label %292, label %275

; <label>:275:                                    ; preds = %268, %285
  %276 = phi i8 [ %286, %285 ], [ %269, %268 ]
  %277 = phi i64 [ %287, %285 ], [ 0, %268 ]
  %278 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %277, i32 8
  %279 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %278, align 16, !tbaa !28
  %280 = icmp eq void (double, double, double*, i8*)* %279, null
  br i1 %280, label %285, label %281

; <label>:281:                                    ; preds = %275
  %282 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %277
  %283 = load i8*, i8** %282, align 8, !tbaa !16
  call void %279(double %272, double %273, double* nonnull %3, i8* %283) #9
  %284 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %285

; <label>:285:                                    ; preds = %281, %275
  %286 = phi i8 [ %276, %275 ], [ %284, %281 ]
  %287 = add nuw nsw i64 %277, 1
  %288 = zext i8 %286 to i64
  %289 = icmp ult i64 %287, %288
  br i1 %289, label %275, label %290

; <label>:290:                                    ; preds = %285
  %291 = load double, double* %3, align 8, !tbaa !32
  br label %292

; <label>:292:                                    ; preds = %290, %268
  %293 = phi i8 [ %286, %290 ], [ 0, %268 ]
  %294 = phi double [ %291, %290 ], [ 0x7FF8000000000000, %268 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %295 = insertelement <16 x double> %271, double %294, i32 11
  %296 = extractelement <16 x double> %4, i32 12
  %297 = extractelement <16 x double> %5, i32 12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %298 = icmp eq i8 %293, 0
  br i1 %298, label %316, label %299

; <label>:299:                                    ; preds = %292, %309
  %300 = phi i8 [ %310, %309 ], [ %293, %292 ]
  %301 = phi i64 [ %311, %309 ], [ 0, %292 ]
  %302 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %301, i32 8
  %303 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %302, align 16, !tbaa !28
  %304 = icmp eq void (double, double, double*, i8*)* %303, null
  br i1 %304, label %309, label %305

; <label>:305:                                    ; preds = %299
  %306 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %301
  %307 = load i8*, i8** %306, align 8, !tbaa !16
  call void %303(double %296, double %297, double* nonnull %3, i8* %307) #9
  %308 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %309

; <label>:309:                                    ; preds = %305, %299
  %310 = phi i8 [ %300, %299 ], [ %308, %305 ]
  %311 = add nuw nsw i64 %301, 1
  %312 = zext i8 %310 to i64
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %299, label %314

; <label>:314:                                    ; preds = %309
  %315 = load double, double* %3, align 8, !tbaa !32
  br label %316

; <label>:316:                                    ; preds = %314, %292
  %317 = phi i8 [ %310, %314 ], [ 0, %292 ]
  %318 = phi double [ %315, %314 ], [ 0x7FF8000000000000, %292 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %319 = insertelement <16 x double> %295, double %318, i32 12
  %320 = extractelement <16 x double> %4, i32 13
  %321 = extractelement <16 x double> %5, i32 13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %322 = icmp eq i8 %317, 0
  br i1 %322, label %340, label %323

; <label>:323:                                    ; preds = %316, %333
  %324 = phi i8 [ %334, %333 ], [ %317, %316 ]
  %325 = phi i64 [ %335, %333 ], [ 0, %316 ]
  %326 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %325, i32 8
  %327 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %326, align 16, !tbaa !28
  %328 = icmp eq void (double, double, double*, i8*)* %327, null
  br i1 %328, label %333, label %329

; <label>:329:                                    ; preds = %323
  %330 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %325
  %331 = load i8*, i8** %330, align 8, !tbaa !16
  call void %327(double %320, double %321, double* nonnull %3, i8* %331) #9
  %332 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %333

; <label>:333:                                    ; preds = %329, %323
  %334 = phi i8 [ %324, %323 ], [ %332, %329 ]
  %335 = add nuw nsw i64 %325, 1
  %336 = zext i8 %334 to i64
  %337 = icmp ult i64 %335, %336
  br i1 %337, label %323, label %338

; <label>:338:                                    ; preds = %333
  %339 = load double, double* %3, align 8, !tbaa !32
  br label %340

; <label>:340:                                    ; preds = %338, %316
  %341 = phi i8 [ %334, %338 ], [ 0, %316 ]
  %342 = phi double [ %339, %338 ], [ 0x7FF8000000000000, %316 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %343 = insertelement <16 x double> %319, double %342, i32 13
  %344 = extractelement <16 x double> %4, i32 14
  %345 = extractelement <16 x double> %5, i32 14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %346 = icmp eq i8 %341, 0
  br i1 %346, label %364, label %347

; <label>:347:                                    ; preds = %340, %357
  %348 = phi i8 [ %358, %357 ], [ %341, %340 ]
  %349 = phi i64 [ %359, %357 ], [ 0, %340 ]
  %350 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %349, i32 8
  %351 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %350, align 16, !tbaa !28
  %352 = icmp eq void (double, double, double*, i8*)* %351, null
  br i1 %352, label %357, label %353

; <label>:353:                                    ; preds = %347
  %354 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %349
  %355 = load i8*, i8** %354, align 8, !tbaa !16
  call void %351(double %344, double %345, double* nonnull %3, i8* %355) #9
  %356 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %357

; <label>:357:                                    ; preds = %353, %347
  %358 = phi i8 [ %348, %347 ], [ %356, %353 ]
  %359 = add nuw nsw i64 %349, 1
  %360 = zext i8 %358 to i64
  %361 = icmp ult i64 %359, %360
  br i1 %361, label %347, label %362

; <label>:362:                                    ; preds = %357
  %363 = load double, double* %3, align 8, !tbaa !32
  br label %364

; <label>:364:                                    ; preds = %362, %340
  %365 = phi i8 [ %358, %362 ], [ 0, %340 ]
  %366 = phi double [ %363, %362 ], [ 0x7FF8000000000000, %340 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %367 = insertelement <16 x double> %343, double %366, i32 14
  %368 = extractelement <16 x double> %4, i32 15
  %369 = extractelement <16 x double> %5, i32 15
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store double 0x7FF8000000000000, double* %3, align 8, !tbaa !32
  %370 = icmp eq i8 %365, 0
  br i1 %370, label %388, label %371

; <label>:371:                                    ; preds = %364, %381
  %372 = phi i8 [ %382, %381 ], [ %365, %364 ]
  %373 = phi i64 [ %383, %381 ], [ 0, %364 ]
  %374 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %373, i32 8
  %375 = load void (double, double, double*, i8*)*, void (double, double, double*, i8*)** %374, align 16, !tbaa !28
  %376 = icmp eq void (double, double, double*, i8*)* %375, null
  br i1 %376, label %381, label %377

; <label>:377:                                    ; preds = %371
  %378 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %373
  %379 = load i8*, i8** %378, align 8, !tbaa !16
  call void %375(double %368, double %369, double* nonnull %3, i8* %379) #9
  %380 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %381

; <label>:381:                                    ; preds = %377, %371
  %382 = phi i8 [ %372, %371 ], [ %380, %377 ]
  %383 = add nuw nsw i64 %373, 1
  %384 = zext i8 %382 to i64
  %385 = icmp ult i64 %383, %384
  br i1 %385, label %371, label %386

; <label>:386:                                    ; preds = %381
  %387 = load double, double* %3, align 8, !tbaa !32
  br label %388

; <label>:388:                                    ; preds = %386, %364
  %389 = phi double [ %387, %386 ], [ 0x7FF8000000000000, %364 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  %390 = insertelement <16 x double> %367, double %389, i32 15
  ret <16 x double> %390
}

; Function Attrs: nounwind uwtable
define double @_2xfloatcmp(i32, double, double) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = bitcast double %1 to <2 x float>
  %6 = bitcast double %2 to <2 x float>
  %7 = bitcast i32* %4 to i8*
  %8 = extractelement <2 x float> %5, i32 0
  %9 = extractelement <2 x float> %6, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %10 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %29, label %14

; <label>:12:                                     ; preds = %24
  %13 = load i32, i32* %4, align 4, !tbaa !11
  br label %29

; <label>:14:                                     ; preds = %3, %24
  %15 = phi i8 [ %25, %24 ], [ %10, %3 ]
  %16 = phi i64 [ %26, %24 ], [ 0, %3 ]
  %17 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %16, i32 4
  %18 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %17, align 16, !tbaa !34
  %19 = icmp eq void (i32, float, float, i32*, i8*)* %18, null
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %16
  %22 = load i8*, i8** %21, align 8, !tbaa !16
  call void %18(i32 %0, float %8, float %9, i32* nonnull %4, i8* %22) #9
  %23 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %24

; <label>:24:                                     ; preds = %20, %14
  %25 = phi i8 [ %15, %14 ], [ %23, %20 ]
  %26 = add nuw nsw i64 %16, 1
  %27 = zext i8 %25 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %14, label %12

; <label>:29:                                     ; preds = %3, %12
  %30 = phi i8 [ %25, %12 ], [ 0, %3 ]
  %31 = phi i32 [ %13, %12 ], [ undef, %3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %32 = insertelement <2 x i32> undef, i32 %31, i32 0
  %33 = extractelement <2 x float> %5, i32 1
  %34 = extractelement <2 x float> %6, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %35 = icmp eq i8 %30, 0
  br i1 %35, label %53, label %36

; <label>:36:                                     ; preds = %29, %46
  %37 = phi i8 [ %47, %46 ], [ %30, %29 ]
  %38 = phi i64 [ %48, %46 ], [ 0, %29 ]
  %39 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %38, i32 4
  %40 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %39, align 16, !tbaa !34
  %41 = icmp eq void (i32, float, float, i32*, i8*)* %40, null
  br i1 %41, label %46, label %42

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %38
  %44 = load i8*, i8** %43, align 8, !tbaa !16
  call void %40(i32 %0, float %33, float %34, i32* nonnull %4, i8* %44) #9
  %45 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %46

; <label>:46:                                     ; preds = %42, %36
  %47 = phi i8 [ %37, %36 ], [ %45, %42 ]
  %48 = add nuw nsw i64 %38, 1
  %49 = zext i8 %47 to i64
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %36, label %51

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %4, align 4, !tbaa !11
  br label %53

; <label>:53:                                     ; preds = %51, %29
  %54 = phi i32 [ %52, %51 ], [ undef, %29 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %55 = insertelement <2 x i32> %32, i32 %54, i32 1
  %56 = bitcast <2 x i32> %55 to double
  ret double %56
}

; Function Attrs: nounwind uwtable
define double @_2xdoublecmp(i32, <2 x double>, <2 x double>) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*
  %6 = extractelement <2 x double> %1, i32 0
  %7 = extractelement <2 x double> %2, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %8 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %12

; <label>:10:                                     ; preds = %22
  %11 = load i32, i32* %4, align 4, !tbaa !11
  br label %27

; <label>:12:                                     ; preds = %3, %22
  %13 = phi i8 [ %23, %22 ], [ %8, %3 ]
  %14 = phi i64 [ %24, %22 ], [ 0, %3 ]
  %15 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %14, i32 9
  %16 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %15, align 8, !tbaa !35
  %17 = icmp eq void (i32, double, double, i32*, i8*)* %16, null
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %14
  %20 = load i8*, i8** %19, align 8, !tbaa !16
  call void %16(i32 %0, double %6, double %7, i32* nonnull %4, i8* %20) #9
  %21 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %22

; <label>:22:                                     ; preds = %18, %12
  %23 = phi i8 [ %13, %12 ], [ %21, %18 ]
  %24 = add nuw nsw i64 %14, 1
  %25 = zext i8 %23 to i64
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %12, label %10

; <label>:27:                                     ; preds = %3, %10
  %28 = phi i8 [ %23, %10 ], [ 0, %3 ]
  %29 = phi i32 [ %11, %10 ], [ undef, %3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %30 = insertelement <2 x i32> undef, i32 %29, i32 0
  %31 = extractelement <2 x double> %1, i32 1
  %32 = extractelement <2 x double> %2, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %33 = icmp eq i8 %28, 0
  br i1 %33, label %51, label %34

; <label>:34:                                     ; preds = %27, %44
  %35 = phi i8 [ %45, %44 ], [ %28, %27 ]
  %36 = phi i64 [ %46, %44 ], [ 0, %27 ]
  %37 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %36, i32 9
  %38 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %37, align 8, !tbaa !35
  %39 = icmp eq void (i32, double, double, i32*, i8*)* %38, null
  br i1 %39, label %44, label %40

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %36
  %42 = load i8*, i8** %41, align 8, !tbaa !16
  call void %38(i32 %0, double %31, double %32, i32* nonnull %4, i8* %42) #9
  %43 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %44

; <label>:44:                                     ; preds = %40, %34
  %45 = phi i8 [ %35, %34 ], [ %43, %40 ]
  %46 = add nuw nsw i64 %36, 1
  %47 = zext i8 %45 to i64
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %34, label %49

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* %4, align 4, !tbaa !11
  br label %51

; <label>:51:                                     ; preds = %49, %27
  %52 = phi i32 [ %50, %49 ], [ undef, %27 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %53 = insertelement <2 x i32> %30, i32 %52, i32 1
  %54 = bitcast <2 x i32> %53 to double
  ret double %54
}

; Function Attrs: nounwind uwtable
define <4 x i32> @_4xfloatcmp(i32, <4 x float>, <4 x float>) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*
  %6 = extractelement <4 x float> %1, i32 0
  %7 = extractelement <4 x float> %2, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %8 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %12

; <label>:10:                                     ; preds = %22
  %11 = load i32, i32* %4, align 4, !tbaa !11
  br label %27

; <label>:12:                                     ; preds = %3, %22
  %13 = phi i8 [ %23, %22 ], [ %8, %3 ]
  %14 = phi i64 [ %24, %22 ], [ 0, %3 ]
  %15 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %14, i32 4
  %16 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %15, align 16, !tbaa !34
  %17 = icmp eq void (i32, float, float, i32*, i8*)* %16, null
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %14
  %20 = load i8*, i8** %19, align 8, !tbaa !16
  call void %16(i32 %0, float %6, float %7, i32* nonnull %4, i8* %20) #9
  %21 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %22

; <label>:22:                                     ; preds = %18, %12
  %23 = phi i8 [ %13, %12 ], [ %21, %18 ]
  %24 = add nuw nsw i64 %14, 1
  %25 = zext i8 %23 to i64
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %12, label %10

; <label>:27:                                     ; preds = %3, %10
  %28 = phi i8 [ %23, %10 ], [ 0, %3 ]
  %29 = phi i32 [ %11, %10 ], [ undef, %3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %30 = insertelement <4 x i32> undef, i32 %29, i32 0
  %31 = extractelement <4 x float> %1, i32 1
  %32 = extractelement <4 x float> %2, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %33 = icmp eq i8 %28, 0
  br i1 %33, label %51, label %34

; <label>:34:                                     ; preds = %27, %44
  %35 = phi i8 [ %45, %44 ], [ %28, %27 ]
  %36 = phi i64 [ %46, %44 ], [ 0, %27 ]
  %37 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %36, i32 4
  %38 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %37, align 16, !tbaa !34
  %39 = icmp eq void (i32, float, float, i32*, i8*)* %38, null
  br i1 %39, label %44, label %40

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %36
  %42 = load i8*, i8** %41, align 8, !tbaa !16
  call void %38(i32 %0, float %31, float %32, i32* nonnull %4, i8* %42) #9
  %43 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %44

; <label>:44:                                     ; preds = %40, %34
  %45 = phi i8 [ %35, %34 ], [ %43, %40 ]
  %46 = add nuw nsw i64 %36, 1
  %47 = zext i8 %45 to i64
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %34, label %49

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* %4, align 4, !tbaa !11
  br label %51

; <label>:51:                                     ; preds = %49, %27
  %52 = phi i8 [ %45, %49 ], [ 0, %27 ]
  %53 = phi i32 [ %50, %49 ], [ undef, %27 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %54 = insertelement <4 x i32> %30, i32 %53, i32 1
  %55 = extractelement <4 x float> %1, i32 2
  %56 = extractelement <4 x float> %2, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %57 = icmp eq i8 %52, 0
  br i1 %57, label %75, label %58

; <label>:58:                                     ; preds = %51, %68
  %59 = phi i8 [ %69, %68 ], [ %52, %51 ]
  %60 = phi i64 [ %70, %68 ], [ 0, %51 ]
  %61 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %60, i32 4
  %62 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %61, align 16, !tbaa !34
  %63 = icmp eq void (i32, float, float, i32*, i8*)* %62, null
  br i1 %63, label %68, label %64

; <label>:64:                                     ; preds = %58
  %65 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %60
  %66 = load i8*, i8** %65, align 8, !tbaa !16
  call void %62(i32 %0, float %55, float %56, i32* nonnull %4, i8* %66) #9
  %67 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %68

; <label>:68:                                     ; preds = %64, %58
  %69 = phi i8 [ %59, %58 ], [ %67, %64 ]
  %70 = add nuw nsw i64 %60, 1
  %71 = zext i8 %69 to i64
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %58, label %73

; <label>:73:                                     ; preds = %68
  %74 = load i32, i32* %4, align 4, !tbaa !11
  br label %75

; <label>:75:                                     ; preds = %73, %51
  %76 = phi i8 [ %69, %73 ], [ 0, %51 ]
  %77 = phi i32 [ %74, %73 ], [ undef, %51 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %78 = insertelement <4 x i32> %54, i32 %77, i32 2
  %79 = extractelement <4 x float> %1, i32 3
  %80 = extractelement <4 x float> %2, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %81 = icmp eq i8 %76, 0
  br i1 %81, label %99, label %82

; <label>:82:                                     ; preds = %75, %92
  %83 = phi i8 [ %93, %92 ], [ %76, %75 ]
  %84 = phi i64 [ %94, %92 ], [ 0, %75 ]
  %85 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %84, i32 4
  %86 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %85, align 16, !tbaa !34
  %87 = icmp eq void (i32, float, float, i32*, i8*)* %86, null
  br i1 %87, label %92, label %88

; <label>:88:                                     ; preds = %82
  %89 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %84
  %90 = load i8*, i8** %89, align 8, !tbaa !16
  call void %86(i32 %0, float %79, float %80, i32* nonnull %4, i8* %90) #9
  %91 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %92

; <label>:92:                                     ; preds = %88, %82
  %93 = phi i8 [ %83, %82 ], [ %91, %88 ]
  %94 = add nuw nsw i64 %84, 1
  %95 = zext i8 %93 to i64
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %82, label %97

; <label>:97:                                     ; preds = %92
  %98 = load i32, i32* %4, align 4, !tbaa !11
  br label %99

; <label>:99:                                     ; preds = %97, %75
  %100 = phi i32 [ %98, %97 ], [ undef, %75 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %101 = insertelement <4 x i32> %78, i32 %100, i32 3
  ret <4 x i32> %101
}

; Function Attrs: nounwind uwtable
define <4 x i32> @_4xdoublecmp(i32, <4 x double>, <4 x double>) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*
  %6 = extractelement <4 x double> %1, i32 0
  %7 = extractelement <4 x double> %2, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %8 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %12

; <label>:10:                                     ; preds = %22
  %11 = load i32, i32* %4, align 4, !tbaa !11
  br label %27

; <label>:12:                                     ; preds = %3, %22
  %13 = phi i8 [ %23, %22 ], [ %8, %3 ]
  %14 = phi i64 [ %24, %22 ], [ 0, %3 ]
  %15 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %14, i32 9
  %16 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %15, align 8, !tbaa !35
  %17 = icmp eq void (i32, double, double, i32*, i8*)* %16, null
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %14
  %20 = load i8*, i8** %19, align 8, !tbaa !16
  call void %16(i32 %0, double %6, double %7, i32* nonnull %4, i8* %20) #9
  %21 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %22

; <label>:22:                                     ; preds = %18, %12
  %23 = phi i8 [ %13, %12 ], [ %21, %18 ]
  %24 = add nuw nsw i64 %14, 1
  %25 = zext i8 %23 to i64
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %12, label %10

; <label>:27:                                     ; preds = %3, %10
  %28 = phi i8 [ %23, %10 ], [ 0, %3 ]
  %29 = phi i32 [ %11, %10 ], [ undef, %3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %30 = insertelement <4 x i32> undef, i32 %29, i32 0
  %31 = extractelement <4 x double> %1, i32 1
  %32 = extractelement <4 x double> %2, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %33 = icmp eq i8 %28, 0
  br i1 %33, label %51, label %34

; <label>:34:                                     ; preds = %27, %44
  %35 = phi i8 [ %45, %44 ], [ %28, %27 ]
  %36 = phi i64 [ %46, %44 ], [ 0, %27 ]
  %37 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %36, i32 9
  %38 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %37, align 8, !tbaa !35
  %39 = icmp eq void (i32, double, double, i32*, i8*)* %38, null
  br i1 %39, label %44, label %40

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %36
  %42 = load i8*, i8** %41, align 8, !tbaa !16
  call void %38(i32 %0, double %31, double %32, i32* nonnull %4, i8* %42) #9
  %43 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %44

; <label>:44:                                     ; preds = %40, %34
  %45 = phi i8 [ %35, %34 ], [ %43, %40 ]
  %46 = add nuw nsw i64 %36, 1
  %47 = zext i8 %45 to i64
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %34, label %49

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* %4, align 4, !tbaa !11
  br label %51

; <label>:51:                                     ; preds = %49, %27
  %52 = phi i8 [ %45, %49 ], [ 0, %27 ]
  %53 = phi i32 [ %50, %49 ], [ undef, %27 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %54 = insertelement <4 x i32> %30, i32 %53, i32 1
  %55 = extractelement <4 x double> %1, i32 2
  %56 = extractelement <4 x double> %2, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %57 = icmp eq i8 %52, 0
  br i1 %57, label %75, label %58

; <label>:58:                                     ; preds = %51, %68
  %59 = phi i8 [ %69, %68 ], [ %52, %51 ]
  %60 = phi i64 [ %70, %68 ], [ 0, %51 ]
  %61 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %60, i32 9
  %62 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %61, align 8, !tbaa !35
  %63 = icmp eq void (i32, double, double, i32*, i8*)* %62, null
  br i1 %63, label %68, label %64

; <label>:64:                                     ; preds = %58
  %65 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %60
  %66 = load i8*, i8** %65, align 8, !tbaa !16
  call void %62(i32 %0, double %55, double %56, i32* nonnull %4, i8* %66) #9
  %67 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %68

; <label>:68:                                     ; preds = %64, %58
  %69 = phi i8 [ %59, %58 ], [ %67, %64 ]
  %70 = add nuw nsw i64 %60, 1
  %71 = zext i8 %69 to i64
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %58, label %73

; <label>:73:                                     ; preds = %68
  %74 = load i32, i32* %4, align 4, !tbaa !11
  br label %75

; <label>:75:                                     ; preds = %73, %51
  %76 = phi i8 [ %69, %73 ], [ 0, %51 ]
  %77 = phi i32 [ %74, %73 ], [ undef, %51 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %78 = insertelement <4 x i32> %54, i32 %77, i32 2
  %79 = extractelement <4 x double> %1, i32 3
  %80 = extractelement <4 x double> %2, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %81 = icmp eq i8 %76, 0
  br i1 %81, label %99, label %82

; <label>:82:                                     ; preds = %75, %92
  %83 = phi i8 [ %93, %92 ], [ %76, %75 ]
  %84 = phi i64 [ %94, %92 ], [ 0, %75 ]
  %85 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %84, i32 9
  %86 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %85, align 8, !tbaa !35
  %87 = icmp eq void (i32, double, double, i32*, i8*)* %86, null
  br i1 %87, label %92, label %88

; <label>:88:                                     ; preds = %82
  %89 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %84
  %90 = load i8*, i8** %89, align 8, !tbaa !16
  call void %86(i32 %0, double %79, double %80, i32* nonnull %4, i8* %90) #9
  %91 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %92

; <label>:92:                                     ; preds = %88, %82
  %93 = phi i8 [ %83, %82 ], [ %91, %88 ]
  %94 = add nuw nsw i64 %84, 1
  %95 = zext i8 %93 to i64
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %82, label %97

; <label>:97:                                     ; preds = %92
  %98 = load i32, i32* %4, align 4, !tbaa !11
  br label %99

; <label>:99:                                     ; preds = %97, %75
  %100 = phi i32 [ %98, %97 ], [ undef, %75 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %101 = insertelement <4 x i32> %78, i32 %100, i32 3
  ret <4 x i32> %101
}

; Function Attrs: nounwind uwtable
define <8 x i32> @_8xfloatcmp(i32, <8 x float>, <8 x float>) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*
  %6 = extractelement <8 x float> %1, i32 0
  %7 = extractelement <8 x float> %2, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %8 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %12

; <label>:10:                                     ; preds = %22
  %11 = load i32, i32* %4, align 4, !tbaa !11
  br label %27

; <label>:12:                                     ; preds = %3, %22
  %13 = phi i8 [ %23, %22 ], [ %8, %3 ]
  %14 = phi i64 [ %24, %22 ], [ 0, %3 ]
  %15 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %14, i32 4
  %16 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %15, align 16, !tbaa !34
  %17 = icmp eq void (i32, float, float, i32*, i8*)* %16, null
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %14
  %20 = load i8*, i8** %19, align 8, !tbaa !16
  call void %16(i32 %0, float %6, float %7, i32* nonnull %4, i8* %20) #9
  %21 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %22

; <label>:22:                                     ; preds = %18, %12
  %23 = phi i8 [ %13, %12 ], [ %21, %18 ]
  %24 = add nuw nsw i64 %14, 1
  %25 = zext i8 %23 to i64
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %12, label %10

; <label>:27:                                     ; preds = %3, %10
  %28 = phi i8 [ %23, %10 ], [ 0, %3 ]
  %29 = phi i32 [ %11, %10 ], [ undef, %3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %30 = insertelement <8 x i32> undef, i32 %29, i32 0
  %31 = extractelement <8 x float> %1, i32 1
  %32 = extractelement <8 x float> %2, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %33 = icmp eq i8 %28, 0
  br i1 %33, label %51, label %34

; <label>:34:                                     ; preds = %27, %44
  %35 = phi i8 [ %45, %44 ], [ %28, %27 ]
  %36 = phi i64 [ %46, %44 ], [ 0, %27 ]
  %37 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %36, i32 4
  %38 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %37, align 16, !tbaa !34
  %39 = icmp eq void (i32, float, float, i32*, i8*)* %38, null
  br i1 %39, label %44, label %40

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %36
  %42 = load i8*, i8** %41, align 8, !tbaa !16
  call void %38(i32 %0, float %31, float %32, i32* nonnull %4, i8* %42) #9
  %43 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %44

; <label>:44:                                     ; preds = %40, %34
  %45 = phi i8 [ %35, %34 ], [ %43, %40 ]
  %46 = add nuw nsw i64 %36, 1
  %47 = zext i8 %45 to i64
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %34, label %49

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* %4, align 4, !tbaa !11
  br label %51

; <label>:51:                                     ; preds = %49, %27
  %52 = phi i8 [ %45, %49 ], [ 0, %27 ]
  %53 = phi i32 [ %50, %49 ], [ undef, %27 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %54 = insertelement <8 x i32> %30, i32 %53, i32 1
  %55 = extractelement <8 x float> %1, i32 2
  %56 = extractelement <8 x float> %2, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %57 = icmp eq i8 %52, 0
  br i1 %57, label %75, label %58

; <label>:58:                                     ; preds = %51, %68
  %59 = phi i8 [ %69, %68 ], [ %52, %51 ]
  %60 = phi i64 [ %70, %68 ], [ 0, %51 ]
  %61 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %60, i32 4
  %62 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %61, align 16, !tbaa !34
  %63 = icmp eq void (i32, float, float, i32*, i8*)* %62, null
  br i1 %63, label %68, label %64

; <label>:64:                                     ; preds = %58
  %65 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %60
  %66 = load i8*, i8** %65, align 8, !tbaa !16
  call void %62(i32 %0, float %55, float %56, i32* nonnull %4, i8* %66) #9
  %67 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %68

; <label>:68:                                     ; preds = %64, %58
  %69 = phi i8 [ %59, %58 ], [ %67, %64 ]
  %70 = add nuw nsw i64 %60, 1
  %71 = zext i8 %69 to i64
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %58, label %73

; <label>:73:                                     ; preds = %68
  %74 = load i32, i32* %4, align 4, !tbaa !11
  br label %75

; <label>:75:                                     ; preds = %73, %51
  %76 = phi i8 [ %69, %73 ], [ 0, %51 ]
  %77 = phi i32 [ %74, %73 ], [ undef, %51 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %78 = insertelement <8 x i32> %54, i32 %77, i32 2
  %79 = extractelement <8 x float> %1, i32 3
  %80 = extractelement <8 x float> %2, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %81 = icmp eq i8 %76, 0
  br i1 %81, label %99, label %82

; <label>:82:                                     ; preds = %75, %92
  %83 = phi i8 [ %93, %92 ], [ %76, %75 ]
  %84 = phi i64 [ %94, %92 ], [ 0, %75 ]
  %85 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %84, i32 4
  %86 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %85, align 16, !tbaa !34
  %87 = icmp eq void (i32, float, float, i32*, i8*)* %86, null
  br i1 %87, label %92, label %88

; <label>:88:                                     ; preds = %82
  %89 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %84
  %90 = load i8*, i8** %89, align 8, !tbaa !16
  call void %86(i32 %0, float %79, float %80, i32* nonnull %4, i8* %90) #9
  %91 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %92

; <label>:92:                                     ; preds = %88, %82
  %93 = phi i8 [ %83, %82 ], [ %91, %88 ]
  %94 = add nuw nsw i64 %84, 1
  %95 = zext i8 %93 to i64
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %82, label %97

; <label>:97:                                     ; preds = %92
  %98 = load i32, i32* %4, align 4, !tbaa !11
  br label %99

; <label>:99:                                     ; preds = %97, %75
  %100 = phi i8 [ %93, %97 ], [ 0, %75 ]
  %101 = phi i32 [ %98, %97 ], [ undef, %75 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %102 = insertelement <8 x i32> %78, i32 %101, i32 3
  %103 = extractelement <8 x float> %1, i32 4
  %104 = extractelement <8 x float> %2, i32 4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %105 = icmp eq i8 %100, 0
  br i1 %105, label %123, label %106

; <label>:106:                                    ; preds = %99, %116
  %107 = phi i8 [ %117, %116 ], [ %100, %99 ]
  %108 = phi i64 [ %118, %116 ], [ 0, %99 ]
  %109 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %108, i32 4
  %110 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %109, align 16, !tbaa !34
  %111 = icmp eq void (i32, float, float, i32*, i8*)* %110, null
  br i1 %111, label %116, label %112

; <label>:112:                                    ; preds = %106
  %113 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %108
  %114 = load i8*, i8** %113, align 8, !tbaa !16
  call void %110(i32 %0, float %103, float %104, i32* nonnull %4, i8* %114) #9
  %115 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %116

; <label>:116:                                    ; preds = %112, %106
  %117 = phi i8 [ %107, %106 ], [ %115, %112 ]
  %118 = add nuw nsw i64 %108, 1
  %119 = zext i8 %117 to i64
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %106, label %121

; <label>:121:                                    ; preds = %116
  %122 = load i32, i32* %4, align 4, !tbaa !11
  br label %123

; <label>:123:                                    ; preds = %121, %99
  %124 = phi i8 [ %117, %121 ], [ 0, %99 ]
  %125 = phi i32 [ %122, %121 ], [ undef, %99 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %126 = insertelement <8 x i32> %102, i32 %125, i32 4
  %127 = extractelement <8 x float> %1, i32 5
  %128 = extractelement <8 x float> %2, i32 5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %129 = icmp eq i8 %124, 0
  br i1 %129, label %147, label %130

; <label>:130:                                    ; preds = %123, %140
  %131 = phi i8 [ %141, %140 ], [ %124, %123 ]
  %132 = phi i64 [ %142, %140 ], [ 0, %123 ]
  %133 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %132, i32 4
  %134 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %133, align 16, !tbaa !34
  %135 = icmp eq void (i32, float, float, i32*, i8*)* %134, null
  br i1 %135, label %140, label %136

; <label>:136:                                    ; preds = %130
  %137 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %132
  %138 = load i8*, i8** %137, align 8, !tbaa !16
  call void %134(i32 %0, float %127, float %128, i32* nonnull %4, i8* %138) #9
  %139 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %140

; <label>:140:                                    ; preds = %136, %130
  %141 = phi i8 [ %131, %130 ], [ %139, %136 ]
  %142 = add nuw nsw i64 %132, 1
  %143 = zext i8 %141 to i64
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %130, label %145

; <label>:145:                                    ; preds = %140
  %146 = load i32, i32* %4, align 4, !tbaa !11
  br label %147

; <label>:147:                                    ; preds = %145, %123
  %148 = phi i8 [ %141, %145 ], [ 0, %123 ]
  %149 = phi i32 [ %146, %145 ], [ undef, %123 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %150 = insertelement <8 x i32> %126, i32 %149, i32 5
  %151 = extractelement <8 x float> %1, i32 6
  %152 = extractelement <8 x float> %2, i32 6
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %153 = icmp eq i8 %148, 0
  br i1 %153, label %171, label %154

; <label>:154:                                    ; preds = %147, %164
  %155 = phi i8 [ %165, %164 ], [ %148, %147 ]
  %156 = phi i64 [ %166, %164 ], [ 0, %147 ]
  %157 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %156, i32 4
  %158 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %157, align 16, !tbaa !34
  %159 = icmp eq void (i32, float, float, i32*, i8*)* %158, null
  br i1 %159, label %164, label %160

; <label>:160:                                    ; preds = %154
  %161 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %156
  %162 = load i8*, i8** %161, align 8, !tbaa !16
  call void %158(i32 %0, float %151, float %152, i32* nonnull %4, i8* %162) #9
  %163 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %164

; <label>:164:                                    ; preds = %160, %154
  %165 = phi i8 [ %155, %154 ], [ %163, %160 ]
  %166 = add nuw nsw i64 %156, 1
  %167 = zext i8 %165 to i64
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %154, label %169

; <label>:169:                                    ; preds = %164
  %170 = load i32, i32* %4, align 4, !tbaa !11
  br label %171

; <label>:171:                                    ; preds = %169, %147
  %172 = phi i8 [ %165, %169 ], [ 0, %147 ]
  %173 = phi i32 [ %170, %169 ], [ undef, %147 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %174 = insertelement <8 x i32> %150, i32 %173, i32 6
  %175 = extractelement <8 x float> %1, i32 7
  %176 = extractelement <8 x float> %2, i32 7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %177 = icmp eq i8 %172, 0
  br i1 %177, label %195, label %178

; <label>:178:                                    ; preds = %171, %188
  %179 = phi i8 [ %189, %188 ], [ %172, %171 ]
  %180 = phi i64 [ %190, %188 ], [ 0, %171 ]
  %181 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %180, i32 4
  %182 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %181, align 16, !tbaa !34
  %183 = icmp eq void (i32, float, float, i32*, i8*)* %182, null
  br i1 %183, label %188, label %184

; <label>:184:                                    ; preds = %178
  %185 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %180
  %186 = load i8*, i8** %185, align 8, !tbaa !16
  call void %182(i32 %0, float %175, float %176, i32* nonnull %4, i8* %186) #9
  %187 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %188

; <label>:188:                                    ; preds = %184, %178
  %189 = phi i8 [ %179, %178 ], [ %187, %184 ]
  %190 = add nuw nsw i64 %180, 1
  %191 = zext i8 %189 to i64
  %192 = icmp ult i64 %190, %191
  br i1 %192, label %178, label %193

; <label>:193:                                    ; preds = %188
  %194 = load i32, i32* %4, align 4, !tbaa !11
  br label %195

; <label>:195:                                    ; preds = %193, %171
  %196 = phi i32 [ %194, %193 ], [ undef, %171 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  %197 = insertelement <8 x i32> %174, i32 %196, i32 7
  ret <8 x i32> %197
}

; Function Attrs: nounwind uwtable
define <8 x i32> @_8xdoublecmp(i32, <8 x double>* byval nocapture readonly align 64, <8 x double>* byval nocapture readonly align 64) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = load <8 x double>, <8 x double>* %1, align 64, !tbaa !17
  %6 = load <8 x double>, <8 x double>* %2, align 64, !tbaa !17
  %7 = bitcast i32* %4 to i8*
  %8 = extractelement <8 x double> %5, i32 0
  %9 = extractelement <8 x double> %6, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %10 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %29, label %14

; <label>:12:                                     ; preds = %24
  %13 = load i32, i32* %4, align 4, !tbaa !11
  br label %29

; <label>:14:                                     ; preds = %3, %24
  %15 = phi i8 [ %25, %24 ], [ %10, %3 ]
  %16 = phi i64 [ %26, %24 ], [ 0, %3 ]
  %17 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %16, i32 9
  %18 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %17, align 8, !tbaa !35
  %19 = icmp eq void (i32, double, double, i32*, i8*)* %18, null
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %16
  %22 = load i8*, i8** %21, align 8, !tbaa !16
  call void %18(i32 %0, double %8, double %9, i32* nonnull %4, i8* %22) #9
  %23 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %24

; <label>:24:                                     ; preds = %20, %14
  %25 = phi i8 [ %15, %14 ], [ %23, %20 ]
  %26 = add nuw nsw i64 %16, 1
  %27 = zext i8 %25 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %14, label %12

; <label>:29:                                     ; preds = %3, %12
  %30 = phi i8 [ %25, %12 ], [ 0, %3 ]
  %31 = phi i32 [ %13, %12 ], [ undef, %3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %32 = insertelement <8 x i32> undef, i32 %31, i32 0
  %33 = extractelement <8 x double> %5, i32 1
  %34 = extractelement <8 x double> %6, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %35 = icmp eq i8 %30, 0
  br i1 %35, label %53, label %36

; <label>:36:                                     ; preds = %29, %46
  %37 = phi i8 [ %47, %46 ], [ %30, %29 ]
  %38 = phi i64 [ %48, %46 ], [ 0, %29 ]
  %39 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %38, i32 9
  %40 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %39, align 8, !tbaa !35
  %41 = icmp eq void (i32, double, double, i32*, i8*)* %40, null
  br i1 %41, label %46, label %42

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %38
  %44 = load i8*, i8** %43, align 8, !tbaa !16
  call void %40(i32 %0, double %33, double %34, i32* nonnull %4, i8* %44) #9
  %45 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %46

; <label>:46:                                     ; preds = %42, %36
  %47 = phi i8 [ %37, %36 ], [ %45, %42 ]
  %48 = add nuw nsw i64 %38, 1
  %49 = zext i8 %47 to i64
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %36, label %51

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %4, align 4, !tbaa !11
  br label %53

; <label>:53:                                     ; preds = %51, %29
  %54 = phi i8 [ %47, %51 ], [ 0, %29 ]
  %55 = phi i32 [ %52, %51 ], [ undef, %29 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %56 = insertelement <8 x i32> %32, i32 %55, i32 1
  %57 = extractelement <8 x double> %5, i32 2
  %58 = extractelement <8 x double> %6, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %59 = icmp eq i8 %54, 0
  br i1 %59, label %77, label %60

; <label>:60:                                     ; preds = %53, %70
  %61 = phi i8 [ %71, %70 ], [ %54, %53 ]
  %62 = phi i64 [ %72, %70 ], [ 0, %53 ]
  %63 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %62, i32 9
  %64 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %63, align 8, !tbaa !35
  %65 = icmp eq void (i32, double, double, i32*, i8*)* %64, null
  br i1 %65, label %70, label %66

; <label>:66:                                     ; preds = %60
  %67 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %62
  %68 = load i8*, i8** %67, align 8, !tbaa !16
  call void %64(i32 %0, double %57, double %58, i32* nonnull %4, i8* %68) #9
  %69 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %70

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8 [ %61, %60 ], [ %69, %66 ]
  %72 = add nuw nsw i64 %62, 1
  %73 = zext i8 %71 to i64
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %60, label %75

; <label>:75:                                     ; preds = %70
  %76 = load i32, i32* %4, align 4, !tbaa !11
  br label %77

; <label>:77:                                     ; preds = %75, %53
  %78 = phi i8 [ %71, %75 ], [ 0, %53 ]
  %79 = phi i32 [ %76, %75 ], [ undef, %53 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %80 = insertelement <8 x i32> %56, i32 %79, i32 2
  %81 = extractelement <8 x double> %5, i32 3
  %82 = extractelement <8 x double> %6, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %83 = icmp eq i8 %78, 0
  br i1 %83, label %101, label %84

; <label>:84:                                     ; preds = %77, %94
  %85 = phi i8 [ %95, %94 ], [ %78, %77 ]
  %86 = phi i64 [ %96, %94 ], [ 0, %77 ]
  %87 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %86, i32 9
  %88 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %87, align 8, !tbaa !35
  %89 = icmp eq void (i32, double, double, i32*, i8*)* %88, null
  br i1 %89, label %94, label %90

; <label>:90:                                     ; preds = %84
  %91 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %86
  %92 = load i8*, i8** %91, align 8, !tbaa !16
  call void %88(i32 %0, double %81, double %82, i32* nonnull %4, i8* %92) #9
  %93 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %94

; <label>:94:                                     ; preds = %90, %84
  %95 = phi i8 [ %85, %84 ], [ %93, %90 ]
  %96 = add nuw nsw i64 %86, 1
  %97 = zext i8 %95 to i64
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %84, label %99

; <label>:99:                                     ; preds = %94
  %100 = load i32, i32* %4, align 4, !tbaa !11
  br label %101

; <label>:101:                                    ; preds = %99, %77
  %102 = phi i8 [ %95, %99 ], [ 0, %77 ]
  %103 = phi i32 [ %100, %99 ], [ undef, %77 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %104 = insertelement <8 x i32> %80, i32 %103, i32 3
  %105 = extractelement <8 x double> %5, i32 4
  %106 = extractelement <8 x double> %6, i32 4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %107 = icmp eq i8 %102, 0
  br i1 %107, label %125, label %108

; <label>:108:                                    ; preds = %101, %118
  %109 = phi i8 [ %119, %118 ], [ %102, %101 ]
  %110 = phi i64 [ %120, %118 ], [ 0, %101 ]
  %111 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %110, i32 9
  %112 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %111, align 8, !tbaa !35
  %113 = icmp eq void (i32, double, double, i32*, i8*)* %112, null
  br i1 %113, label %118, label %114

; <label>:114:                                    ; preds = %108
  %115 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %110
  %116 = load i8*, i8** %115, align 8, !tbaa !16
  call void %112(i32 %0, double %105, double %106, i32* nonnull %4, i8* %116) #9
  %117 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %118

; <label>:118:                                    ; preds = %114, %108
  %119 = phi i8 [ %109, %108 ], [ %117, %114 ]
  %120 = add nuw nsw i64 %110, 1
  %121 = zext i8 %119 to i64
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %108, label %123

; <label>:123:                                    ; preds = %118
  %124 = load i32, i32* %4, align 4, !tbaa !11
  br label %125

; <label>:125:                                    ; preds = %123, %101
  %126 = phi i8 [ %119, %123 ], [ 0, %101 ]
  %127 = phi i32 [ %124, %123 ], [ undef, %101 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %128 = insertelement <8 x i32> %104, i32 %127, i32 4
  %129 = extractelement <8 x double> %5, i32 5
  %130 = extractelement <8 x double> %6, i32 5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %131 = icmp eq i8 %126, 0
  br i1 %131, label %149, label %132

; <label>:132:                                    ; preds = %125, %142
  %133 = phi i8 [ %143, %142 ], [ %126, %125 ]
  %134 = phi i64 [ %144, %142 ], [ 0, %125 ]
  %135 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %134, i32 9
  %136 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %135, align 8, !tbaa !35
  %137 = icmp eq void (i32, double, double, i32*, i8*)* %136, null
  br i1 %137, label %142, label %138

; <label>:138:                                    ; preds = %132
  %139 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %134
  %140 = load i8*, i8** %139, align 8, !tbaa !16
  call void %136(i32 %0, double %129, double %130, i32* nonnull %4, i8* %140) #9
  %141 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %142

; <label>:142:                                    ; preds = %138, %132
  %143 = phi i8 [ %133, %132 ], [ %141, %138 ]
  %144 = add nuw nsw i64 %134, 1
  %145 = zext i8 %143 to i64
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %132, label %147

; <label>:147:                                    ; preds = %142
  %148 = load i32, i32* %4, align 4, !tbaa !11
  br label %149

; <label>:149:                                    ; preds = %147, %125
  %150 = phi i8 [ %143, %147 ], [ 0, %125 ]
  %151 = phi i32 [ %148, %147 ], [ undef, %125 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %152 = insertelement <8 x i32> %128, i32 %151, i32 5
  %153 = extractelement <8 x double> %5, i32 6
  %154 = extractelement <8 x double> %6, i32 6
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %155 = icmp eq i8 %150, 0
  br i1 %155, label %173, label %156

; <label>:156:                                    ; preds = %149, %166
  %157 = phi i8 [ %167, %166 ], [ %150, %149 ]
  %158 = phi i64 [ %168, %166 ], [ 0, %149 ]
  %159 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %158, i32 9
  %160 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %159, align 8, !tbaa !35
  %161 = icmp eq void (i32, double, double, i32*, i8*)* %160, null
  br i1 %161, label %166, label %162

; <label>:162:                                    ; preds = %156
  %163 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %158
  %164 = load i8*, i8** %163, align 8, !tbaa !16
  call void %160(i32 %0, double %153, double %154, i32* nonnull %4, i8* %164) #9
  %165 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %166

; <label>:166:                                    ; preds = %162, %156
  %167 = phi i8 [ %157, %156 ], [ %165, %162 ]
  %168 = add nuw nsw i64 %158, 1
  %169 = zext i8 %167 to i64
  %170 = icmp ult i64 %168, %169
  br i1 %170, label %156, label %171

; <label>:171:                                    ; preds = %166
  %172 = load i32, i32* %4, align 4, !tbaa !11
  br label %173

; <label>:173:                                    ; preds = %171, %149
  %174 = phi i8 [ %167, %171 ], [ 0, %149 ]
  %175 = phi i32 [ %172, %171 ], [ undef, %149 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %176 = insertelement <8 x i32> %152, i32 %175, i32 6
  %177 = extractelement <8 x double> %5, i32 7
  %178 = extractelement <8 x double> %6, i32 7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %179 = icmp eq i8 %174, 0
  br i1 %179, label %197, label %180

; <label>:180:                                    ; preds = %173, %190
  %181 = phi i8 [ %191, %190 ], [ %174, %173 ]
  %182 = phi i64 [ %192, %190 ], [ 0, %173 ]
  %183 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %182, i32 9
  %184 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %183, align 8, !tbaa !35
  %185 = icmp eq void (i32, double, double, i32*, i8*)* %184, null
  br i1 %185, label %190, label %186

; <label>:186:                                    ; preds = %180
  %187 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %182
  %188 = load i8*, i8** %187, align 8, !tbaa !16
  call void %184(i32 %0, double %177, double %178, i32* nonnull %4, i8* %188) #9
  %189 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %190

; <label>:190:                                    ; preds = %186, %180
  %191 = phi i8 [ %181, %180 ], [ %189, %186 ]
  %192 = add nuw nsw i64 %182, 1
  %193 = zext i8 %191 to i64
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %180, label %195

; <label>:195:                                    ; preds = %190
  %196 = load i32, i32* %4, align 4, !tbaa !11
  br label %197

; <label>:197:                                    ; preds = %195, %173
  %198 = phi i32 [ %196, %195 ], [ undef, %173 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %199 = insertelement <8 x i32> %176, i32 %198, i32 7
  ret <8 x i32> %199
}

; Function Attrs: nounwind uwtable
define <16 x i32> @_16xfloatcmp(i32, <16 x float>* byval nocapture readonly align 64, <16 x float>* byval nocapture readonly align 64) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = load <16 x float>, <16 x float>* %1, align 64, !tbaa !17
  %6 = load <16 x float>, <16 x float>* %2, align 64, !tbaa !17
  %7 = bitcast i32* %4 to i8*
  %8 = extractelement <16 x float> %5, i32 0
  %9 = extractelement <16 x float> %6, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %10 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %29, label %14

; <label>:12:                                     ; preds = %24
  %13 = load i32, i32* %4, align 4, !tbaa !11
  br label %29

; <label>:14:                                     ; preds = %3, %24
  %15 = phi i8 [ %25, %24 ], [ %10, %3 ]
  %16 = phi i64 [ %26, %24 ], [ 0, %3 ]
  %17 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %16, i32 4
  %18 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %17, align 16, !tbaa !34
  %19 = icmp eq void (i32, float, float, i32*, i8*)* %18, null
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %16
  %22 = load i8*, i8** %21, align 8, !tbaa !16
  call void %18(i32 %0, float %8, float %9, i32* nonnull %4, i8* %22) #9
  %23 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %24

; <label>:24:                                     ; preds = %20, %14
  %25 = phi i8 [ %15, %14 ], [ %23, %20 ]
  %26 = add nuw nsw i64 %16, 1
  %27 = zext i8 %25 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %14, label %12

; <label>:29:                                     ; preds = %3, %12
  %30 = phi i8 [ %25, %12 ], [ 0, %3 ]
  %31 = phi i32 [ %13, %12 ], [ undef, %3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %32 = insertelement <16 x i32> undef, i32 %31, i32 0
  %33 = extractelement <16 x float> %5, i32 1
  %34 = extractelement <16 x float> %6, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %35 = icmp eq i8 %30, 0
  br i1 %35, label %53, label %36

; <label>:36:                                     ; preds = %29, %46
  %37 = phi i8 [ %47, %46 ], [ %30, %29 ]
  %38 = phi i64 [ %48, %46 ], [ 0, %29 ]
  %39 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %38, i32 4
  %40 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %39, align 16, !tbaa !34
  %41 = icmp eq void (i32, float, float, i32*, i8*)* %40, null
  br i1 %41, label %46, label %42

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %38
  %44 = load i8*, i8** %43, align 8, !tbaa !16
  call void %40(i32 %0, float %33, float %34, i32* nonnull %4, i8* %44) #9
  %45 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %46

; <label>:46:                                     ; preds = %42, %36
  %47 = phi i8 [ %37, %36 ], [ %45, %42 ]
  %48 = add nuw nsw i64 %38, 1
  %49 = zext i8 %47 to i64
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %36, label %51

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %4, align 4, !tbaa !11
  br label %53

; <label>:53:                                     ; preds = %51, %29
  %54 = phi i8 [ %47, %51 ], [ 0, %29 ]
  %55 = phi i32 [ %52, %51 ], [ undef, %29 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %56 = insertelement <16 x i32> %32, i32 %55, i32 1
  %57 = extractelement <16 x float> %5, i32 2
  %58 = extractelement <16 x float> %6, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %59 = icmp eq i8 %54, 0
  br i1 %59, label %77, label %60

; <label>:60:                                     ; preds = %53, %70
  %61 = phi i8 [ %71, %70 ], [ %54, %53 ]
  %62 = phi i64 [ %72, %70 ], [ 0, %53 ]
  %63 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %62, i32 4
  %64 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %63, align 16, !tbaa !34
  %65 = icmp eq void (i32, float, float, i32*, i8*)* %64, null
  br i1 %65, label %70, label %66

; <label>:66:                                     ; preds = %60
  %67 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %62
  %68 = load i8*, i8** %67, align 8, !tbaa !16
  call void %64(i32 %0, float %57, float %58, i32* nonnull %4, i8* %68) #9
  %69 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %70

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8 [ %61, %60 ], [ %69, %66 ]
  %72 = add nuw nsw i64 %62, 1
  %73 = zext i8 %71 to i64
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %60, label %75

; <label>:75:                                     ; preds = %70
  %76 = load i32, i32* %4, align 4, !tbaa !11
  br label %77

; <label>:77:                                     ; preds = %75, %53
  %78 = phi i8 [ %71, %75 ], [ 0, %53 ]
  %79 = phi i32 [ %76, %75 ], [ undef, %53 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %80 = insertelement <16 x i32> %56, i32 %79, i32 2
  %81 = extractelement <16 x float> %5, i32 3
  %82 = extractelement <16 x float> %6, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %83 = icmp eq i8 %78, 0
  br i1 %83, label %101, label %84

; <label>:84:                                     ; preds = %77, %94
  %85 = phi i8 [ %95, %94 ], [ %78, %77 ]
  %86 = phi i64 [ %96, %94 ], [ 0, %77 ]
  %87 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %86, i32 4
  %88 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %87, align 16, !tbaa !34
  %89 = icmp eq void (i32, float, float, i32*, i8*)* %88, null
  br i1 %89, label %94, label %90

; <label>:90:                                     ; preds = %84
  %91 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %86
  %92 = load i8*, i8** %91, align 8, !tbaa !16
  call void %88(i32 %0, float %81, float %82, i32* nonnull %4, i8* %92) #9
  %93 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %94

; <label>:94:                                     ; preds = %90, %84
  %95 = phi i8 [ %85, %84 ], [ %93, %90 ]
  %96 = add nuw nsw i64 %86, 1
  %97 = zext i8 %95 to i64
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %84, label %99

; <label>:99:                                     ; preds = %94
  %100 = load i32, i32* %4, align 4, !tbaa !11
  br label %101

; <label>:101:                                    ; preds = %99, %77
  %102 = phi i8 [ %95, %99 ], [ 0, %77 ]
  %103 = phi i32 [ %100, %99 ], [ undef, %77 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %104 = insertelement <16 x i32> %80, i32 %103, i32 3
  %105 = extractelement <16 x float> %5, i32 4
  %106 = extractelement <16 x float> %6, i32 4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %107 = icmp eq i8 %102, 0
  br i1 %107, label %125, label %108

; <label>:108:                                    ; preds = %101, %118
  %109 = phi i8 [ %119, %118 ], [ %102, %101 ]
  %110 = phi i64 [ %120, %118 ], [ 0, %101 ]
  %111 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %110, i32 4
  %112 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %111, align 16, !tbaa !34
  %113 = icmp eq void (i32, float, float, i32*, i8*)* %112, null
  br i1 %113, label %118, label %114

; <label>:114:                                    ; preds = %108
  %115 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %110
  %116 = load i8*, i8** %115, align 8, !tbaa !16
  call void %112(i32 %0, float %105, float %106, i32* nonnull %4, i8* %116) #9
  %117 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %118

; <label>:118:                                    ; preds = %114, %108
  %119 = phi i8 [ %109, %108 ], [ %117, %114 ]
  %120 = add nuw nsw i64 %110, 1
  %121 = zext i8 %119 to i64
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %108, label %123

; <label>:123:                                    ; preds = %118
  %124 = load i32, i32* %4, align 4, !tbaa !11
  br label %125

; <label>:125:                                    ; preds = %123, %101
  %126 = phi i8 [ %119, %123 ], [ 0, %101 ]
  %127 = phi i32 [ %124, %123 ], [ undef, %101 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %128 = insertelement <16 x i32> %104, i32 %127, i32 4
  %129 = extractelement <16 x float> %5, i32 5
  %130 = extractelement <16 x float> %6, i32 5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %131 = icmp eq i8 %126, 0
  br i1 %131, label %149, label %132

; <label>:132:                                    ; preds = %125, %142
  %133 = phi i8 [ %143, %142 ], [ %126, %125 ]
  %134 = phi i64 [ %144, %142 ], [ 0, %125 ]
  %135 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %134, i32 4
  %136 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %135, align 16, !tbaa !34
  %137 = icmp eq void (i32, float, float, i32*, i8*)* %136, null
  br i1 %137, label %142, label %138

; <label>:138:                                    ; preds = %132
  %139 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %134
  %140 = load i8*, i8** %139, align 8, !tbaa !16
  call void %136(i32 %0, float %129, float %130, i32* nonnull %4, i8* %140) #9
  %141 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %142

; <label>:142:                                    ; preds = %138, %132
  %143 = phi i8 [ %133, %132 ], [ %141, %138 ]
  %144 = add nuw nsw i64 %134, 1
  %145 = zext i8 %143 to i64
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %132, label %147

; <label>:147:                                    ; preds = %142
  %148 = load i32, i32* %4, align 4, !tbaa !11
  br label %149

; <label>:149:                                    ; preds = %147, %125
  %150 = phi i8 [ %143, %147 ], [ 0, %125 ]
  %151 = phi i32 [ %148, %147 ], [ undef, %125 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %152 = insertelement <16 x i32> %128, i32 %151, i32 5
  %153 = extractelement <16 x float> %5, i32 6
  %154 = extractelement <16 x float> %6, i32 6
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %155 = icmp eq i8 %150, 0
  br i1 %155, label %173, label %156

; <label>:156:                                    ; preds = %149, %166
  %157 = phi i8 [ %167, %166 ], [ %150, %149 ]
  %158 = phi i64 [ %168, %166 ], [ 0, %149 ]
  %159 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %158, i32 4
  %160 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %159, align 16, !tbaa !34
  %161 = icmp eq void (i32, float, float, i32*, i8*)* %160, null
  br i1 %161, label %166, label %162

; <label>:162:                                    ; preds = %156
  %163 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %158
  %164 = load i8*, i8** %163, align 8, !tbaa !16
  call void %160(i32 %0, float %153, float %154, i32* nonnull %4, i8* %164) #9
  %165 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %166

; <label>:166:                                    ; preds = %162, %156
  %167 = phi i8 [ %157, %156 ], [ %165, %162 ]
  %168 = add nuw nsw i64 %158, 1
  %169 = zext i8 %167 to i64
  %170 = icmp ult i64 %168, %169
  br i1 %170, label %156, label %171

; <label>:171:                                    ; preds = %166
  %172 = load i32, i32* %4, align 4, !tbaa !11
  br label %173

; <label>:173:                                    ; preds = %171, %149
  %174 = phi i8 [ %167, %171 ], [ 0, %149 ]
  %175 = phi i32 [ %172, %171 ], [ undef, %149 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %176 = insertelement <16 x i32> %152, i32 %175, i32 6
  %177 = extractelement <16 x float> %5, i32 7
  %178 = extractelement <16 x float> %6, i32 7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %179 = icmp eq i8 %174, 0
  br i1 %179, label %197, label %180

; <label>:180:                                    ; preds = %173, %190
  %181 = phi i8 [ %191, %190 ], [ %174, %173 ]
  %182 = phi i64 [ %192, %190 ], [ 0, %173 ]
  %183 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %182, i32 4
  %184 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %183, align 16, !tbaa !34
  %185 = icmp eq void (i32, float, float, i32*, i8*)* %184, null
  br i1 %185, label %190, label %186

; <label>:186:                                    ; preds = %180
  %187 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %182
  %188 = load i8*, i8** %187, align 8, !tbaa !16
  call void %184(i32 %0, float %177, float %178, i32* nonnull %4, i8* %188) #9
  %189 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %190

; <label>:190:                                    ; preds = %186, %180
  %191 = phi i8 [ %181, %180 ], [ %189, %186 ]
  %192 = add nuw nsw i64 %182, 1
  %193 = zext i8 %191 to i64
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %180, label %195

; <label>:195:                                    ; preds = %190
  %196 = load i32, i32* %4, align 4, !tbaa !11
  br label %197

; <label>:197:                                    ; preds = %195, %173
  %198 = phi i8 [ %191, %195 ], [ 0, %173 ]
  %199 = phi i32 [ %196, %195 ], [ undef, %173 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %200 = insertelement <16 x i32> %176, i32 %199, i32 7
  %201 = extractelement <16 x float> %5, i32 8
  %202 = extractelement <16 x float> %6, i32 8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %203 = icmp eq i8 %198, 0
  br i1 %203, label %221, label %204

; <label>:204:                                    ; preds = %197, %214
  %205 = phi i8 [ %215, %214 ], [ %198, %197 ]
  %206 = phi i64 [ %216, %214 ], [ 0, %197 ]
  %207 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %206, i32 4
  %208 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %207, align 16, !tbaa !34
  %209 = icmp eq void (i32, float, float, i32*, i8*)* %208, null
  br i1 %209, label %214, label %210

; <label>:210:                                    ; preds = %204
  %211 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %206
  %212 = load i8*, i8** %211, align 8, !tbaa !16
  call void %208(i32 %0, float %201, float %202, i32* nonnull %4, i8* %212) #9
  %213 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %214

; <label>:214:                                    ; preds = %210, %204
  %215 = phi i8 [ %205, %204 ], [ %213, %210 ]
  %216 = add nuw nsw i64 %206, 1
  %217 = zext i8 %215 to i64
  %218 = icmp ult i64 %216, %217
  br i1 %218, label %204, label %219

; <label>:219:                                    ; preds = %214
  %220 = load i32, i32* %4, align 4, !tbaa !11
  br label %221

; <label>:221:                                    ; preds = %219, %197
  %222 = phi i8 [ %215, %219 ], [ 0, %197 ]
  %223 = phi i32 [ %220, %219 ], [ undef, %197 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %224 = insertelement <16 x i32> %200, i32 %223, i32 8
  %225 = extractelement <16 x float> %5, i32 9
  %226 = extractelement <16 x float> %6, i32 9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %227 = icmp eq i8 %222, 0
  br i1 %227, label %245, label %228

; <label>:228:                                    ; preds = %221, %238
  %229 = phi i8 [ %239, %238 ], [ %222, %221 ]
  %230 = phi i64 [ %240, %238 ], [ 0, %221 ]
  %231 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %230, i32 4
  %232 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %231, align 16, !tbaa !34
  %233 = icmp eq void (i32, float, float, i32*, i8*)* %232, null
  br i1 %233, label %238, label %234

; <label>:234:                                    ; preds = %228
  %235 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %230
  %236 = load i8*, i8** %235, align 8, !tbaa !16
  call void %232(i32 %0, float %225, float %226, i32* nonnull %4, i8* %236) #9
  %237 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %238

; <label>:238:                                    ; preds = %234, %228
  %239 = phi i8 [ %229, %228 ], [ %237, %234 ]
  %240 = add nuw nsw i64 %230, 1
  %241 = zext i8 %239 to i64
  %242 = icmp ult i64 %240, %241
  br i1 %242, label %228, label %243

; <label>:243:                                    ; preds = %238
  %244 = load i32, i32* %4, align 4, !tbaa !11
  br label %245

; <label>:245:                                    ; preds = %243, %221
  %246 = phi i8 [ %239, %243 ], [ 0, %221 ]
  %247 = phi i32 [ %244, %243 ], [ undef, %221 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %248 = insertelement <16 x i32> %224, i32 %247, i32 9
  %249 = extractelement <16 x float> %5, i32 10
  %250 = extractelement <16 x float> %6, i32 10
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %251 = icmp eq i8 %246, 0
  br i1 %251, label %269, label %252

; <label>:252:                                    ; preds = %245, %262
  %253 = phi i8 [ %263, %262 ], [ %246, %245 ]
  %254 = phi i64 [ %264, %262 ], [ 0, %245 ]
  %255 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %254, i32 4
  %256 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %255, align 16, !tbaa !34
  %257 = icmp eq void (i32, float, float, i32*, i8*)* %256, null
  br i1 %257, label %262, label %258

; <label>:258:                                    ; preds = %252
  %259 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %254
  %260 = load i8*, i8** %259, align 8, !tbaa !16
  call void %256(i32 %0, float %249, float %250, i32* nonnull %4, i8* %260) #9
  %261 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %262

; <label>:262:                                    ; preds = %258, %252
  %263 = phi i8 [ %253, %252 ], [ %261, %258 ]
  %264 = add nuw nsw i64 %254, 1
  %265 = zext i8 %263 to i64
  %266 = icmp ult i64 %264, %265
  br i1 %266, label %252, label %267

; <label>:267:                                    ; preds = %262
  %268 = load i32, i32* %4, align 4, !tbaa !11
  br label %269

; <label>:269:                                    ; preds = %267, %245
  %270 = phi i8 [ %263, %267 ], [ 0, %245 ]
  %271 = phi i32 [ %268, %267 ], [ undef, %245 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %272 = insertelement <16 x i32> %248, i32 %271, i32 10
  %273 = extractelement <16 x float> %5, i32 11
  %274 = extractelement <16 x float> %6, i32 11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %275 = icmp eq i8 %270, 0
  br i1 %275, label %293, label %276

; <label>:276:                                    ; preds = %269, %286
  %277 = phi i8 [ %287, %286 ], [ %270, %269 ]
  %278 = phi i64 [ %288, %286 ], [ 0, %269 ]
  %279 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %278, i32 4
  %280 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %279, align 16, !tbaa !34
  %281 = icmp eq void (i32, float, float, i32*, i8*)* %280, null
  br i1 %281, label %286, label %282

; <label>:282:                                    ; preds = %276
  %283 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %278
  %284 = load i8*, i8** %283, align 8, !tbaa !16
  call void %280(i32 %0, float %273, float %274, i32* nonnull %4, i8* %284) #9
  %285 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %286

; <label>:286:                                    ; preds = %282, %276
  %287 = phi i8 [ %277, %276 ], [ %285, %282 ]
  %288 = add nuw nsw i64 %278, 1
  %289 = zext i8 %287 to i64
  %290 = icmp ult i64 %288, %289
  br i1 %290, label %276, label %291

; <label>:291:                                    ; preds = %286
  %292 = load i32, i32* %4, align 4, !tbaa !11
  br label %293

; <label>:293:                                    ; preds = %291, %269
  %294 = phi i8 [ %287, %291 ], [ 0, %269 ]
  %295 = phi i32 [ %292, %291 ], [ undef, %269 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %296 = insertelement <16 x i32> %272, i32 %295, i32 11
  %297 = extractelement <16 x float> %5, i32 12
  %298 = extractelement <16 x float> %6, i32 12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %299 = icmp eq i8 %294, 0
  br i1 %299, label %317, label %300

; <label>:300:                                    ; preds = %293, %310
  %301 = phi i8 [ %311, %310 ], [ %294, %293 ]
  %302 = phi i64 [ %312, %310 ], [ 0, %293 ]
  %303 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %302, i32 4
  %304 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %303, align 16, !tbaa !34
  %305 = icmp eq void (i32, float, float, i32*, i8*)* %304, null
  br i1 %305, label %310, label %306

; <label>:306:                                    ; preds = %300
  %307 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %302
  %308 = load i8*, i8** %307, align 8, !tbaa !16
  call void %304(i32 %0, float %297, float %298, i32* nonnull %4, i8* %308) #9
  %309 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %310

; <label>:310:                                    ; preds = %306, %300
  %311 = phi i8 [ %301, %300 ], [ %309, %306 ]
  %312 = add nuw nsw i64 %302, 1
  %313 = zext i8 %311 to i64
  %314 = icmp ult i64 %312, %313
  br i1 %314, label %300, label %315

; <label>:315:                                    ; preds = %310
  %316 = load i32, i32* %4, align 4, !tbaa !11
  br label %317

; <label>:317:                                    ; preds = %315, %293
  %318 = phi i8 [ %311, %315 ], [ 0, %293 ]
  %319 = phi i32 [ %316, %315 ], [ undef, %293 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %320 = insertelement <16 x i32> %296, i32 %319, i32 12
  %321 = extractelement <16 x float> %5, i32 13
  %322 = extractelement <16 x float> %6, i32 13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %323 = icmp eq i8 %318, 0
  br i1 %323, label %341, label %324

; <label>:324:                                    ; preds = %317, %334
  %325 = phi i8 [ %335, %334 ], [ %318, %317 ]
  %326 = phi i64 [ %336, %334 ], [ 0, %317 ]
  %327 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %326, i32 4
  %328 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %327, align 16, !tbaa !34
  %329 = icmp eq void (i32, float, float, i32*, i8*)* %328, null
  br i1 %329, label %334, label %330

; <label>:330:                                    ; preds = %324
  %331 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %326
  %332 = load i8*, i8** %331, align 8, !tbaa !16
  call void %328(i32 %0, float %321, float %322, i32* nonnull %4, i8* %332) #9
  %333 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %334

; <label>:334:                                    ; preds = %330, %324
  %335 = phi i8 [ %325, %324 ], [ %333, %330 ]
  %336 = add nuw nsw i64 %326, 1
  %337 = zext i8 %335 to i64
  %338 = icmp ult i64 %336, %337
  br i1 %338, label %324, label %339

; <label>:339:                                    ; preds = %334
  %340 = load i32, i32* %4, align 4, !tbaa !11
  br label %341

; <label>:341:                                    ; preds = %339, %317
  %342 = phi i8 [ %335, %339 ], [ 0, %317 ]
  %343 = phi i32 [ %340, %339 ], [ undef, %317 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %344 = insertelement <16 x i32> %320, i32 %343, i32 13
  %345 = extractelement <16 x float> %5, i32 14
  %346 = extractelement <16 x float> %6, i32 14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %347 = icmp eq i8 %342, 0
  br i1 %347, label %365, label %348

; <label>:348:                                    ; preds = %341, %358
  %349 = phi i8 [ %359, %358 ], [ %342, %341 ]
  %350 = phi i64 [ %360, %358 ], [ 0, %341 ]
  %351 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %350, i32 4
  %352 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %351, align 16, !tbaa !34
  %353 = icmp eq void (i32, float, float, i32*, i8*)* %352, null
  br i1 %353, label %358, label %354

; <label>:354:                                    ; preds = %348
  %355 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %350
  %356 = load i8*, i8** %355, align 8, !tbaa !16
  call void %352(i32 %0, float %345, float %346, i32* nonnull %4, i8* %356) #9
  %357 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %358

; <label>:358:                                    ; preds = %354, %348
  %359 = phi i8 [ %349, %348 ], [ %357, %354 ]
  %360 = add nuw nsw i64 %350, 1
  %361 = zext i8 %359 to i64
  %362 = icmp ult i64 %360, %361
  br i1 %362, label %348, label %363

; <label>:363:                                    ; preds = %358
  %364 = load i32, i32* %4, align 4, !tbaa !11
  br label %365

; <label>:365:                                    ; preds = %363, %341
  %366 = phi i8 [ %359, %363 ], [ 0, %341 ]
  %367 = phi i32 [ %364, %363 ], [ undef, %341 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %368 = insertelement <16 x i32> %344, i32 %367, i32 14
  %369 = extractelement <16 x float> %5, i32 15
  %370 = extractelement <16 x float> %6, i32 15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %371 = icmp eq i8 %366, 0
  br i1 %371, label %389, label %372

; <label>:372:                                    ; preds = %365, %382
  %373 = phi i8 [ %383, %382 ], [ %366, %365 ]
  %374 = phi i64 [ %384, %382 ], [ 0, %365 ]
  %375 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %374, i32 4
  %376 = load void (i32, float, float, i32*, i8*)*, void (i32, float, float, i32*, i8*)** %375, align 16, !tbaa !34
  %377 = icmp eq void (i32, float, float, i32*, i8*)* %376, null
  br i1 %377, label %382, label %378

; <label>:378:                                    ; preds = %372
  %379 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %374
  %380 = load i8*, i8** %379, align 8, !tbaa !16
  call void %376(i32 %0, float %369, float %370, i32* nonnull %4, i8* %380) #9
  %381 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %382

; <label>:382:                                    ; preds = %378, %372
  %383 = phi i8 [ %373, %372 ], [ %381, %378 ]
  %384 = add nuw nsw i64 %374, 1
  %385 = zext i8 %383 to i64
  %386 = icmp ult i64 %384, %385
  br i1 %386, label %372, label %387

; <label>:387:                                    ; preds = %382
  %388 = load i32, i32* %4, align 4, !tbaa !11
  br label %389

; <label>:389:                                    ; preds = %387, %365
  %390 = phi i32 [ %388, %387 ], [ undef, %365 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %391 = insertelement <16 x i32> %368, i32 %390, i32 15
  ret <16 x i32> %391
}

; Function Attrs: nounwind uwtable
define <16 x i32> @_16xdoublecmp(i32, <16 x double>* byval nocapture readonly align 128, <16 x double>* byval nocapture readonly align 128) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = load <16 x double>, <16 x double>* %1, align 128, !tbaa !17
  %6 = load <16 x double>, <16 x double>* %2, align 128, !tbaa !17
  %7 = bitcast i32* %4 to i8*
  %8 = extractelement <16 x double> %5, i32 0
  %9 = extractelement <16 x double> %6, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %10 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %29, label %14

; <label>:12:                                     ; preds = %24
  %13 = load i32, i32* %4, align 4, !tbaa !11
  br label %29

; <label>:14:                                     ; preds = %3, %24
  %15 = phi i8 [ %25, %24 ], [ %10, %3 ]
  %16 = phi i64 [ %26, %24 ], [ 0, %3 ]
  %17 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %16, i32 9
  %18 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %17, align 8, !tbaa !35
  %19 = icmp eq void (i32, double, double, i32*, i8*)* %18, null
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %16
  %22 = load i8*, i8** %21, align 8, !tbaa !16
  call void %18(i32 %0, double %8, double %9, i32* nonnull %4, i8* %22) #9
  %23 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %24

; <label>:24:                                     ; preds = %20, %14
  %25 = phi i8 [ %15, %14 ], [ %23, %20 ]
  %26 = add nuw nsw i64 %16, 1
  %27 = zext i8 %25 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %14, label %12

; <label>:29:                                     ; preds = %3, %12
  %30 = phi i8 [ %25, %12 ], [ 0, %3 ]
  %31 = phi i32 [ %13, %12 ], [ undef, %3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %32 = insertelement <16 x i32> undef, i32 %31, i32 0
  %33 = extractelement <16 x double> %5, i32 1
  %34 = extractelement <16 x double> %6, i32 1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %35 = icmp eq i8 %30, 0
  br i1 %35, label %53, label %36

; <label>:36:                                     ; preds = %29, %46
  %37 = phi i8 [ %47, %46 ], [ %30, %29 ]
  %38 = phi i64 [ %48, %46 ], [ 0, %29 ]
  %39 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %38, i32 9
  %40 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %39, align 8, !tbaa !35
  %41 = icmp eq void (i32, double, double, i32*, i8*)* %40, null
  br i1 %41, label %46, label %42

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %38
  %44 = load i8*, i8** %43, align 8, !tbaa !16
  call void %40(i32 %0, double %33, double %34, i32* nonnull %4, i8* %44) #9
  %45 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %46

; <label>:46:                                     ; preds = %42, %36
  %47 = phi i8 [ %37, %36 ], [ %45, %42 ]
  %48 = add nuw nsw i64 %38, 1
  %49 = zext i8 %47 to i64
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %36, label %51

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %4, align 4, !tbaa !11
  br label %53

; <label>:53:                                     ; preds = %51, %29
  %54 = phi i8 [ %47, %51 ], [ 0, %29 ]
  %55 = phi i32 [ %52, %51 ], [ undef, %29 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %56 = insertelement <16 x i32> %32, i32 %55, i32 1
  %57 = extractelement <16 x double> %5, i32 2
  %58 = extractelement <16 x double> %6, i32 2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %59 = icmp eq i8 %54, 0
  br i1 %59, label %77, label %60

; <label>:60:                                     ; preds = %53, %70
  %61 = phi i8 [ %71, %70 ], [ %54, %53 ]
  %62 = phi i64 [ %72, %70 ], [ 0, %53 ]
  %63 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %62, i32 9
  %64 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %63, align 8, !tbaa !35
  %65 = icmp eq void (i32, double, double, i32*, i8*)* %64, null
  br i1 %65, label %70, label %66

; <label>:66:                                     ; preds = %60
  %67 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %62
  %68 = load i8*, i8** %67, align 8, !tbaa !16
  call void %64(i32 %0, double %57, double %58, i32* nonnull %4, i8* %68) #9
  %69 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %70

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8 [ %61, %60 ], [ %69, %66 ]
  %72 = add nuw nsw i64 %62, 1
  %73 = zext i8 %71 to i64
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %60, label %75

; <label>:75:                                     ; preds = %70
  %76 = load i32, i32* %4, align 4, !tbaa !11
  br label %77

; <label>:77:                                     ; preds = %75, %53
  %78 = phi i8 [ %71, %75 ], [ 0, %53 ]
  %79 = phi i32 [ %76, %75 ], [ undef, %53 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %80 = insertelement <16 x i32> %56, i32 %79, i32 2
  %81 = extractelement <16 x double> %5, i32 3
  %82 = extractelement <16 x double> %6, i32 3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %83 = icmp eq i8 %78, 0
  br i1 %83, label %101, label %84

; <label>:84:                                     ; preds = %77, %94
  %85 = phi i8 [ %95, %94 ], [ %78, %77 ]
  %86 = phi i64 [ %96, %94 ], [ 0, %77 ]
  %87 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %86, i32 9
  %88 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %87, align 8, !tbaa !35
  %89 = icmp eq void (i32, double, double, i32*, i8*)* %88, null
  br i1 %89, label %94, label %90

; <label>:90:                                     ; preds = %84
  %91 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %86
  %92 = load i8*, i8** %91, align 8, !tbaa !16
  call void %88(i32 %0, double %81, double %82, i32* nonnull %4, i8* %92) #9
  %93 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %94

; <label>:94:                                     ; preds = %90, %84
  %95 = phi i8 [ %85, %84 ], [ %93, %90 ]
  %96 = add nuw nsw i64 %86, 1
  %97 = zext i8 %95 to i64
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %84, label %99

; <label>:99:                                     ; preds = %94
  %100 = load i32, i32* %4, align 4, !tbaa !11
  br label %101

; <label>:101:                                    ; preds = %99, %77
  %102 = phi i8 [ %95, %99 ], [ 0, %77 ]
  %103 = phi i32 [ %100, %99 ], [ undef, %77 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %104 = insertelement <16 x i32> %80, i32 %103, i32 3
  %105 = extractelement <16 x double> %5, i32 4
  %106 = extractelement <16 x double> %6, i32 4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %107 = icmp eq i8 %102, 0
  br i1 %107, label %125, label %108

; <label>:108:                                    ; preds = %101, %118
  %109 = phi i8 [ %119, %118 ], [ %102, %101 ]
  %110 = phi i64 [ %120, %118 ], [ 0, %101 ]
  %111 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %110, i32 9
  %112 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %111, align 8, !tbaa !35
  %113 = icmp eq void (i32, double, double, i32*, i8*)* %112, null
  br i1 %113, label %118, label %114

; <label>:114:                                    ; preds = %108
  %115 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %110
  %116 = load i8*, i8** %115, align 8, !tbaa !16
  call void %112(i32 %0, double %105, double %106, i32* nonnull %4, i8* %116) #9
  %117 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %118

; <label>:118:                                    ; preds = %114, %108
  %119 = phi i8 [ %109, %108 ], [ %117, %114 ]
  %120 = add nuw nsw i64 %110, 1
  %121 = zext i8 %119 to i64
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %108, label %123

; <label>:123:                                    ; preds = %118
  %124 = load i32, i32* %4, align 4, !tbaa !11
  br label %125

; <label>:125:                                    ; preds = %123, %101
  %126 = phi i8 [ %119, %123 ], [ 0, %101 ]
  %127 = phi i32 [ %124, %123 ], [ undef, %101 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %128 = insertelement <16 x i32> %104, i32 %127, i32 4
  %129 = extractelement <16 x double> %5, i32 5
  %130 = extractelement <16 x double> %6, i32 5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %131 = icmp eq i8 %126, 0
  br i1 %131, label %149, label %132

; <label>:132:                                    ; preds = %125, %142
  %133 = phi i8 [ %143, %142 ], [ %126, %125 ]
  %134 = phi i64 [ %144, %142 ], [ 0, %125 ]
  %135 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %134, i32 9
  %136 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %135, align 8, !tbaa !35
  %137 = icmp eq void (i32, double, double, i32*, i8*)* %136, null
  br i1 %137, label %142, label %138

; <label>:138:                                    ; preds = %132
  %139 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %134
  %140 = load i8*, i8** %139, align 8, !tbaa !16
  call void %136(i32 %0, double %129, double %130, i32* nonnull %4, i8* %140) #9
  %141 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %142

; <label>:142:                                    ; preds = %138, %132
  %143 = phi i8 [ %133, %132 ], [ %141, %138 ]
  %144 = add nuw nsw i64 %134, 1
  %145 = zext i8 %143 to i64
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %132, label %147

; <label>:147:                                    ; preds = %142
  %148 = load i32, i32* %4, align 4, !tbaa !11
  br label %149

; <label>:149:                                    ; preds = %147, %125
  %150 = phi i8 [ %143, %147 ], [ 0, %125 ]
  %151 = phi i32 [ %148, %147 ], [ undef, %125 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %152 = insertelement <16 x i32> %128, i32 %151, i32 5
  %153 = extractelement <16 x double> %5, i32 6
  %154 = extractelement <16 x double> %6, i32 6
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %155 = icmp eq i8 %150, 0
  br i1 %155, label %173, label %156

; <label>:156:                                    ; preds = %149, %166
  %157 = phi i8 [ %167, %166 ], [ %150, %149 ]
  %158 = phi i64 [ %168, %166 ], [ 0, %149 ]
  %159 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %158, i32 9
  %160 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %159, align 8, !tbaa !35
  %161 = icmp eq void (i32, double, double, i32*, i8*)* %160, null
  br i1 %161, label %166, label %162

; <label>:162:                                    ; preds = %156
  %163 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %158
  %164 = load i8*, i8** %163, align 8, !tbaa !16
  call void %160(i32 %0, double %153, double %154, i32* nonnull %4, i8* %164) #9
  %165 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %166

; <label>:166:                                    ; preds = %162, %156
  %167 = phi i8 [ %157, %156 ], [ %165, %162 ]
  %168 = add nuw nsw i64 %158, 1
  %169 = zext i8 %167 to i64
  %170 = icmp ult i64 %168, %169
  br i1 %170, label %156, label %171

; <label>:171:                                    ; preds = %166
  %172 = load i32, i32* %4, align 4, !tbaa !11
  br label %173

; <label>:173:                                    ; preds = %171, %149
  %174 = phi i8 [ %167, %171 ], [ 0, %149 ]
  %175 = phi i32 [ %172, %171 ], [ undef, %149 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %176 = insertelement <16 x i32> %152, i32 %175, i32 6
  %177 = extractelement <16 x double> %5, i32 7
  %178 = extractelement <16 x double> %6, i32 7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %179 = icmp eq i8 %174, 0
  br i1 %179, label %197, label %180

; <label>:180:                                    ; preds = %173, %190
  %181 = phi i8 [ %191, %190 ], [ %174, %173 ]
  %182 = phi i64 [ %192, %190 ], [ 0, %173 ]
  %183 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %182, i32 9
  %184 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %183, align 8, !tbaa !35
  %185 = icmp eq void (i32, double, double, i32*, i8*)* %184, null
  br i1 %185, label %190, label %186

; <label>:186:                                    ; preds = %180
  %187 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %182
  %188 = load i8*, i8** %187, align 8, !tbaa !16
  call void %184(i32 %0, double %177, double %178, i32* nonnull %4, i8* %188) #9
  %189 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %190

; <label>:190:                                    ; preds = %186, %180
  %191 = phi i8 [ %181, %180 ], [ %189, %186 ]
  %192 = add nuw nsw i64 %182, 1
  %193 = zext i8 %191 to i64
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %180, label %195

; <label>:195:                                    ; preds = %190
  %196 = load i32, i32* %4, align 4, !tbaa !11
  br label %197

; <label>:197:                                    ; preds = %195, %173
  %198 = phi i8 [ %191, %195 ], [ 0, %173 ]
  %199 = phi i32 [ %196, %195 ], [ undef, %173 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %200 = insertelement <16 x i32> %176, i32 %199, i32 7
  %201 = extractelement <16 x double> %5, i32 8
  %202 = extractelement <16 x double> %6, i32 8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %203 = icmp eq i8 %198, 0
  br i1 %203, label %221, label %204

; <label>:204:                                    ; preds = %197, %214
  %205 = phi i8 [ %215, %214 ], [ %198, %197 ]
  %206 = phi i64 [ %216, %214 ], [ 0, %197 ]
  %207 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %206, i32 9
  %208 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %207, align 8, !tbaa !35
  %209 = icmp eq void (i32, double, double, i32*, i8*)* %208, null
  br i1 %209, label %214, label %210

; <label>:210:                                    ; preds = %204
  %211 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %206
  %212 = load i8*, i8** %211, align 8, !tbaa !16
  call void %208(i32 %0, double %201, double %202, i32* nonnull %4, i8* %212) #9
  %213 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %214

; <label>:214:                                    ; preds = %210, %204
  %215 = phi i8 [ %205, %204 ], [ %213, %210 ]
  %216 = add nuw nsw i64 %206, 1
  %217 = zext i8 %215 to i64
  %218 = icmp ult i64 %216, %217
  br i1 %218, label %204, label %219

; <label>:219:                                    ; preds = %214
  %220 = load i32, i32* %4, align 4, !tbaa !11
  br label %221

; <label>:221:                                    ; preds = %219, %197
  %222 = phi i8 [ %215, %219 ], [ 0, %197 ]
  %223 = phi i32 [ %220, %219 ], [ undef, %197 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %224 = insertelement <16 x i32> %200, i32 %223, i32 8
  %225 = extractelement <16 x double> %5, i32 9
  %226 = extractelement <16 x double> %6, i32 9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %227 = icmp eq i8 %222, 0
  br i1 %227, label %245, label %228

; <label>:228:                                    ; preds = %221, %238
  %229 = phi i8 [ %239, %238 ], [ %222, %221 ]
  %230 = phi i64 [ %240, %238 ], [ 0, %221 ]
  %231 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %230, i32 9
  %232 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %231, align 8, !tbaa !35
  %233 = icmp eq void (i32, double, double, i32*, i8*)* %232, null
  br i1 %233, label %238, label %234

; <label>:234:                                    ; preds = %228
  %235 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %230
  %236 = load i8*, i8** %235, align 8, !tbaa !16
  call void %232(i32 %0, double %225, double %226, i32* nonnull %4, i8* %236) #9
  %237 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %238

; <label>:238:                                    ; preds = %234, %228
  %239 = phi i8 [ %229, %228 ], [ %237, %234 ]
  %240 = add nuw nsw i64 %230, 1
  %241 = zext i8 %239 to i64
  %242 = icmp ult i64 %240, %241
  br i1 %242, label %228, label %243

; <label>:243:                                    ; preds = %238
  %244 = load i32, i32* %4, align 4, !tbaa !11
  br label %245

; <label>:245:                                    ; preds = %243, %221
  %246 = phi i8 [ %239, %243 ], [ 0, %221 ]
  %247 = phi i32 [ %244, %243 ], [ undef, %221 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %248 = insertelement <16 x i32> %224, i32 %247, i32 9
  %249 = extractelement <16 x double> %5, i32 10
  %250 = extractelement <16 x double> %6, i32 10
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %251 = icmp eq i8 %246, 0
  br i1 %251, label %269, label %252

; <label>:252:                                    ; preds = %245, %262
  %253 = phi i8 [ %263, %262 ], [ %246, %245 ]
  %254 = phi i64 [ %264, %262 ], [ 0, %245 ]
  %255 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %254, i32 9
  %256 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %255, align 8, !tbaa !35
  %257 = icmp eq void (i32, double, double, i32*, i8*)* %256, null
  br i1 %257, label %262, label %258

; <label>:258:                                    ; preds = %252
  %259 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %254
  %260 = load i8*, i8** %259, align 8, !tbaa !16
  call void %256(i32 %0, double %249, double %250, i32* nonnull %4, i8* %260) #9
  %261 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %262

; <label>:262:                                    ; preds = %258, %252
  %263 = phi i8 [ %253, %252 ], [ %261, %258 ]
  %264 = add nuw nsw i64 %254, 1
  %265 = zext i8 %263 to i64
  %266 = icmp ult i64 %264, %265
  br i1 %266, label %252, label %267

; <label>:267:                                    ; preds = %262
  %268 = load i32, i32* %4, align 4, !tbaa !11
  br label %269

; <label>:269:                                    ; preds = %267, %245
  %270 = phi i8 [ %263, %267 ], [ 0, %245 ]
  %271 = phi i32 [ %268, %267 ], [ undef, %245 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %272 = insertelement <16 x i32> %248, i32 %271, i32 10
  %273 = extractelement <16 x double> %5, i32 11
  %274 = extractelement <16 x double> %6, i32 11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %275 = icmp eq i8 %270, 0
  br i1 %275, label %293, label %276

; <label>:276:                                    ; preds = %269, %286
  %277 = phi i8 [ %287, %286 ], [ %270, %269 ]
  %278 = phi i64 [ %288, %286 ], [ 0, %269 ]
  %279 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %278, i32 9
  %280 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %279, align 8, !tbaa !35
  %281 = icmp eq void (i32, double, double, i32*, i8*)* %280, null
  br i1 %281, label %286, label %282

; <label>:282:                                    ; preds = %276
  %283 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %278
  %284 = load i8*, i8** %283, align 8, !tbaa !16
  call void %280(i32 %0, double %273, double %274, i32* nonnull %4, i8* %284) #9
  %285 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %286

; <label>:286:                                    ; preds = %282, %276
  %287 = phi i8 [ %277, %276 ], [ %285, %282 ]
  %288 = add nuw nsw i64 %278, 1
  %289 = zext i8 %287 to i64
  %290 = icmp ult i64 %288, %289
  br i1 %290, label %276, label %291

; <label>:291:                                    ; preds = %286
  %292 = load i32, i32* %4, align 4, !tbaa !11
  br label %293

; <label>:293:                                    ; preds = %291, %269
  %294 = phi i8 [ %287, %291 ], [ 0, %269 ]
  %295 = phi i32 [ %292, %291 ], [ undef, %269 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %296 = insertelement <16 x i32> %272, i32 %295, i32 11
  %297 = extractelement <16 x double> %5, i32 12
  %298 = extractelement <16 x double> %6, i32 12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %299 = icmp eq i8 %294, 0
  br i1 %299, label %317, label %300

; <label>:300:                                    ; preds = %293, %310
  %301 = phi i8 [ %311, %310 ], [ %294, %293 ]
  %302 = phi i64 [ %312, %310 ], [ 0, %293 ]
  %303 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %302, i32 9
  %304 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %303, align 8, !tbaa !35
  %305 = icmp eq void (i32, double, double, i32*, i8*)* %304, null
  br i1 %305, label %310, label %306

; <label>:306:                                    ; preds = %300
  %307 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %302
  %308 = load i8*, i8** %307, align 8, !tbaa !16
  call void %304(i32 %0, double %297, double %298, i32* nonnull %4, i8* %308) #9
  %309 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %310

; <label>:310:                                    ; preds = %306, %300
  %311 = phi i8 [ %301, %300 ], [ %309, %306 ]
  %312 = add nuw nsw i64 %302, 1
  %313 = zext i8 %311 to i64
  %314 = icmp ult i64 %312, %313
  br i1 %314, label %300, label %315

; <label>:315:                                    ; preds = %310
  %316 = load i32, i32* %4, align 4, !tbaa !11
  br label %317

; <label>:317:                                    ; preds = %315, %293
  %318 = phi i8 [ %311, %315 ], [ 0, %293 ]
  %319 = phi i32 [ %316, %315 ], [ undef, %293 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %320 = insertelement <16 x i32> %296, i32 %319, i32 12
  %321 = extractelement <16 x double> %5, i32 13
  %322 = extractelement <16 x double> %6, i32 13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %323 = icmp eq i8 %318, 0
  br i1 %323, label %341, label %324

; <label>:324:                                    ; preds = %317, %334
  %325 = phi i8 [ %335, %334 ], [ %318, %317 ]
  %326 = phi i64 [ %336, %334 ], [ 0, %317 ]
  %327 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %326, i32 9
  %328 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %327, align 8, !tbaa !35
  %329 = icmp eq void (i32, double, double, i32*, i8*)* %328, null
  br i1 %329, label %334, label %330

; <label>:330:                                    ; preds = %324
  %331 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %326
  %332 = load i8*, i8** %331, align 8, !tbaa !16
  call void %328(i32 %0, double %321, double %322, i32* nonnull %4, i8* %332) #9
  %333 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %334

; <label>:334:                                    ; preds = %330, %324
  %335 = phi i8 [ %325, %324 ], [ %333, %330 ]
  %336 = add nuw nsw i64 %326, 1
  %337 = zext i8 %335 to i64
  %338 = icmp ult i64 %336, %337
  br i1 %338, label %324, label %339

; <label>:339:                                    ; preds = %334
  %340 = load i32, i32* %4, align 4, !tbaa !11
  br label %341

; <label>:341:                                    ; preds = %339, %317
  %342 = phi i8 [ %335, %339 ], [ 0, %317 ]
  %343 = phi i32 [ %340, %339 ], [ undef, %317 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %344 = insertelement <16 x i32> %320, i32 %343, i32 13
  %345 = extractelement <16 x double> %5, i32 14
  %346 = extractelement <16 x double> %6, i32 14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %347 = icmp eq i8 %342, 0
  br i1 %347, label %365, label %348

; <label>:348:                                    ; preds = %341, %358
  %349 = phi i8 [ %359, %358 ], [ %342, %341 ]
  %350 = phi i64 [ %360, %358 ], [ 0, %341 ]
  %351 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %350, i32 9
  %352 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %351, align 8, !tbaa !35
  %353 = icmp eq void (i32, double, double, i32*, i8*)* %352, null
  br i1 %353, label %358, label %354

; <label>:354:                                    ; preds = %348
  %355 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %350
  %356 = load i8*, i8** %355, align 8, !tbaa !16
  call void %352(i32 %0, double %345, double %346, i32* nonnull %4, i8* %356) #9
  %357 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %358

; <label>:358:                                    ; preds = %354, %348
  %359 = phi i8 [ %349, %348 ], [ %357, %354 ]
  %360 = add nuw nsw i64 %350, 1
  %361 = zext i8 %359 to i64
  %362 = icmp ult i64 %360, %361
  br i1 %362, label %348, label %363

; <label>:363:                                    ; preds = %358
  %364 = load i32, i32* %4, align 4, !tbaa !11
  br label %365

; <label>:365:                                    ; preds = %363, %341
  %366 = phi i8 [ %359, %363 ], [ 0, %341 ]
  %367 = phi i32 [ %364, %363 ], [ undef, %341 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %368 = insertelement <16 x i32> %344, i32 %367, i32 14
  %369 = extractelement <16 x double> %5, i32 15
  %370 = extractelement <16 x double> %6, i32 15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  %371 = icmp eq i8 %366, 0
  br i1 %371, label %389, label %372

; <label>:372:                                    ; preds = %365, %382
  %373 = phi i8 [ %383, %382 ], [ %366, %365 ]
  %374 = phi i64 [ %384, %382 ], [ 0, %365 ]
  %375 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %374, i32 9
  %376 = load void (i32, double, double, i32*, i8*)*, void (i32, double, double, i32*, i8*)** %375, align 8, !tbaa !35
  %377 = icmp eq void (i32, double, double, i32*, i8*)* %376, null
  br i1 %377, label %382, label %378

; <label>:378:                                    ; preds = %372
  %379 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %374
  %380 = load i8*, i8** %379, align 8, !tbaa !16
  call void %376(i32 %0, double %369, double %370, i32* nonnull %4, i8* %380) #9
  %381 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %382

; <label>:382:                                    ; preds = %378, %372
  %383 = phi i8 [ %373, %372 ], [ %381, %378 ]
  %384 = add nuw nsw i64 %374, 1
  %385 = zext i8 %383 to i64
  %386 = icmp ult i64 %384, %385
  br i1 %386, label %372, label %387

; <label>:387:                                    ; preds = %382
  %388 = load i32, i32* %4, align 4, !tbaa !11
  br label %389

; <label>:389:                                    ; preds = %387, %365
  %390 = phi i32 [ %388, %387 ], [ undef, %365 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  %391 = insertelement <16 x i32> %368, i32 %390, i32 15
  ret <16 x i32> %391
}

; Function Attrs: nounwind uwtable
define %struct.interflop_function_info* @vfc_func_table_add(i8*, i64) local_unnamed_addr #0 {
  %3 = load i8, i8* %0, align 1, !tbaa !17
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

; <label>:5:                                      ; preds = %2, %5
  %6 = phi i8 [ %13, %5 ], [ %3, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = phi i8* [ %12, %5 ], [ %0, %2 ]
  %9 = mul i64 %7, 31
  %10 = zext i8 %6 to i64
  %11 = add i64 %9, %10
  %12 = getelementptr inbounds i8, i8* %8, i64 1
  %13 = load i8, i8* %12, align 1, !tbaa !17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %5

; <label>:15:                                     ; preds = %5, %2
  %16 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %17 = tail call noalias i8* @malloc(i64 16) #9
  %18 = bitcast i8* %17 to %struct.interflop_function_info*
  %19 = bitcast i8* %17 to i8**
  store i8* %0, i8** %19, align 8
  %20 = getelementptr inbounds i8, i8* %17, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %1, i64* %21, align 8
  %22 = load %struct.vfc_hashmap_st*, %struct.vfc_hashmap_st** @_vfc_func_map, align 8, !tbaa !16
  tail call void @vfc_hashmap_insert(%struct.vfc_hashmap_st* %22, i64 %16, i8* %17)
  ret %struct.interflop_function_info* %18
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @vfc_hashmap_str_function(i8* nocapture readonly) local_unnamed_addr #4 {
  %2 = load i8, i8* %0, align 1, !tbaa !17
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

; <label>:4:                                      ; preds = %1, %4
  %5 = phi i8 [ %12, %4 ], [ %2, %1 ]
  %6 = phi i64 [ %10, %4 ], [ 0, %1 ]
  %7 = phi i8* [ %11, %4 ], [ %0, %1 ]
  %8 = mul i64 %6, 31
  %9 = zext i8 %5 to i64
  %10 = add i64 %8, %9
  %11 = getelementptr inbounds i8, i8* %7, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %4

; <label>:14:                                     ; preds = %4, %1
  %15 = phi i64 [ 0, %1 ], [ %10, %4 ]
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define void @vfc_hashmap_insert(%struct.vfc_hashmap_st* nocapture, i64, i8*) local_unnamed_addr #0 {
  %4 = ptrtoint i8* %2 to i64
  %5 = icmp ult i8* %2, inttoptr (i64 2 to i8*)
  br i1 %5, label %45, label %6

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !36
  %9 = mul i64 %1, 73
  %10 = and i64 %8, %9
  %11 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 3
  %12 = load i64*, i64** %11, align 8, !tbaa !9
  %13 = shl i64 %10, 1
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8, !tbaa !10
  %16 = icmp ult i64 %15, 2
  br i1 %16, label %30, label %24

; <label>:17:                                     ; preds = %24
  %18 = add i64 %26, 5009
  %19 = and i64 %18, %8
  %20 = shl i64 %19, 1
  %21 = getelementptr inbounds i64, i64* %12, i64 %20
  %22 = load i64, i64* %21, align 8, !tbaa !10
  %23 = icmp ult i64 %22, 2
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %6, %17
  %25 = phi i64 [ %22, %17 ], [ %15, %6 ]
  %26 = phi i64 [ %19, %17 ], [ %10, %6 ]
  %27 = icmp eq i64 %25, %4
  br i1 %27, label %45, label %17

; <label>:28:                                     ; preds = %17
  %29 = getelementptr inbounds i64, i64* %12, i64 %20
  br label %30

; <label>:30:                                     ; preds = %28, %6
  %31 = phi i64 [ %13, %6 ], [ %20, %28 ]
  %32 = phi i64* [ %14, %6 ], [ %29, %28 ]
  %33 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 4
  %34 = load i64, i64* %33, align 8, !tbaa !37
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8, !tbaa !37
  %36 = load i64, i64* %32, align 8, !tbaa !10
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %30
  %39 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 5
  %40 = load i64, i64* %39, align 8, !tbaa !38
  %41 = add i64 %40, -1
  store i64 %41, i64* %39, align 8, !tbaa !38
  br label %42

; <label>:42:                                     ; preds = %38, %30
  store i64 %4, i64* %32, align 8, !tbaa !10
  %43 = or i64 %31, 1
  %44 = getelementptr inbounds i64, i64* %12, i64 %43
  store i64 %1, i64* %44, align 8, !tbaa !10
  br label %45

; <label>:45:                                     ; preds = %24, %3, %42
  %46 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 4
  %47 = load i64, i64* %46, align 8, !tbaa !37
  %48 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 5
  %49 = load i64, i64* %48, align 8, !tbaa !38
  %50 = add i64 %49, %47
  %51 = uitofp i64 %50 to double
  %52 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 2
  %53 = load i64, i64* %52, align 8, !tbaa !3
  %54 = uitofp i64 %53 to double
  %55 = fmul double %54, 8.500000e-01
  %56 = fcmp ugt double %55, %51
  br i1 %56, label %124, label %57

; <label>:57:                                     ; preds = %45
  %58 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 3
  %59 = load i64*, i64** %58, align 8, !tbaa !9
  %60 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 0
  %61 = load i64, i64* %60, align 8, !tbaa !39
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8, !tbaa !39
  %63 = trunc i64 %62 to i32
  %64 = shl i32 1, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %52, align 8, !tbaa !3
  %66 = add nsw i64 %65, -1
  %67 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 1
  store i64 %66, i64* %67, align 8, !tbaa !36
  %68 = tail call noalias i8* @calloc(i64 %65, i64 16) #9
  %69 = bitcast i64** %58 to i8**
  store i8* %68, i8** %69, align 8, !tbaa !9
  %70 = icmp eq i64 %53, 0
  %71 = bitcast i8* %68 to i64*
  %72 = bitcast i64* %46 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %72, i8 0, i64 16, i1 false) #9
  br i1 %70, label %122, label %73

; <label>:73:                                     ; preds = %57, %117
  %74 = phi i64 [ %118, %117 ], [ 0, %57 ]
  %75 = phi i64 [ %119, %117 ], [ 0, %57 ]
  %76 = phi i64 [ %120, %117 ], [ 0, %57 ]
  %77 = shl i64 %76, 1
  %78 = or i64 %77, 1
  %79 = getelementptr inbounds i64, i64* %59, i64 %78
  %80 = load i64, i64* %79, align 8, !tbaa !10
  %81 = getelementptr inbounds i64, i64* %59, i64 %77
  %82 = load i64, i64* %81, align 8, !tbaa !10
  %83 = inttoptr i64 %82 to i8*
  %84 = icmp ult i8* %83, inttoptr (i64 2 to i8*)
  br i1 %84, label %117, label %85

; <label>:85:                                     ; preds = %73
  %86 = mul i64 %80, 73
  %87 = and i64 %86, %66
  %88 = shl i64 %87, 1
  %89 = getelementptr inbounds i64, i64* %71, i64 %88
  %90 = load i64, i64* %89, align 8, !tbaa !10
  %91 = icmp ult i64 %90, 2
  br i1 %91, label %105, label %99

; <label>:92:                                     ; preds = %99
  %93 = add i64 %101, 5009
  %94 = and i64 %93, %66
  %95 = shl i64 %94, 1
  %96 = getelementptr inbounds i64, i64* %71, i64 %95
  %97 = load i64, i64* %96, align 8, !tbaa !10
  %98 = icmp ult i64 %97, 2
  br i1 %98, label %103, label %99

; <label>:99:                                     ; preds = %85, %92
  %100 = phi i64 [ %97, %92 ], [ %90, %85 ]
  %101 = phi i64 [ %94, %92 ], [ %87, %85 ]
  %102 = icmp eq i64 %100, %82
  br i1 %102, label %117, label %92

; <label>:103:                                    ; preds = %92
  %104 = getelementptr inbounds i64, i64* %71, i64 %95
  br label %105

; <label>:105:                                    ; preds = %103, %85
  %106 = phi i64 [ %90, %85 ], [ %97, %103 ]
  %107 = phi i64 [ %88, %85 ], [ %95, %103 ]
  %108 = phi i64* [ %89, %85 ], [ %104, %103 ]
  %109 = add i64 %75, 1
  store i64 %109, i64* %46, align 8, !tbaa !37
  %110 = icmp eq i64 %106, 1
  br i1 %110, label %111, label %113

; <label>:111:                                    ; preds = %105
  %112 = add i64 %74, -1
  store i64 %112, i64* %48, align 8, !tbaa !38
  br label %113

; <label>:113:                                    ; preds = %111, %105
  %114 = phi i64 [ %112, %111 ], [ %74, %105 ]
  store i64 %82, i64* %108, align 8, !tbaa !10
  %115 = or i64 %107, 1
  %116 = getelementptr inbounds i64, i64* %71, i64 %115
  store i64 %80, i64* %116, align 8, !tbaa !10
  br label %117

; <label>:117:                                    ; preds = %99, %113, %73
  %118 = phi i64 [ %74, %73 ], [ %114, %113 ], [ %74, %99 ]
  %119 = phi i64 [ %75, %73 ], [ %109, %113 ], [ %75, %99 ]
  %120 = add nuw i64 %76, 1
  %121 = icmp eq i64 %120, %53
  br i1 %121, label %122, label %73

; <label>:122:                                    ; preds = %117, %57
  %123 = bitcast i64* %59 to i8*
  tail call void @free(i8* %123) #9
  br label %124

; <label>:124:                                    ; preds = %45, %122
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define %struct.interflop_function_info* @vfc_func_table_get(i8* nocapture readonly) local_unnamed_addr #4 {
  %2 = load i8, i8* %0, align 1, !tbaa !17
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

; <label>:4:                                      ; preds = %1, %4
  %5 = phi i8 [ %12, %4 ], [ %2, %1 ]
  %6 = phi i64 [ %10, %4 ], [ 0, %1 ]
  %7 = phi i8* [ %11, %4 ], [ %0, %1 ]
  %8 = mul i64 %6, 31
  %9 = zext i8 %5 to i64
  %10 = add i64 %8, %9
  %11 = getelementptr inbounds i8, i8* %7, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %4

; <label>:14:                                     ; preds = %4, %1
  %15 = phi i64 [ 0, %1 ], [ %10, %4 ]
  %16 = load %struct.vfc_hashmap_st*, %struct.vfc_hashmap_st** @_vfc_func_map, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %16, i64 0, i32 1
  %18 = load i64, i64* %17, align 8, !tbaa !36
  %19 = mul i64 %15, 73
  %20 = and i64 %18, %19
  %21 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %16, i64 0, i32 3
  %22 = load i64*, i64** %21, align 8, !tbaa !9
  %23 = shl i64 %20, 1
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8, !tbaa !10
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %48, label %27

; <label>:27:                                     ; preds = %14
  %28 = or i64 %23, 1
  %29 = getelementptr inbounds i64, i64* %22, i64 %28
  %30 = load i64, i64* %29, align 8, !tbaa !10
  %31 = icmp eq i64 %30, %15
  br i1 %31, label %45, label %32

; <label>:32:                                     ; preds = %27, %40
  %33 = phi i64 [ %35, %40 ], [ %20, %27 ]
  %34 = add i64 %33, 5009
  %35 = and i64 %34, %18
  %36 = shl i64 %35, 1
  %37 = getelementptr inbounds i64, i64* %22, i64 %36
  %38 = load i64, i64* %37, align 8, !tbaa !10
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %48, label %40

; <label>:40:                                     ; preds = %32
  %41 = or i64 %36, 1
  %42 = getelementptr inbounds i64, i64* %22, i64 %41
  %43 = load i64, i64* %42, align 8, !tbaa !10
  %44 = icmp eq i64 %43, %15
  br i1 %44, label %45, label %32

; <label>:45:                                     ; preds = %40, %27
  %46 = phi i64 [ %25, %27 ], [ %38, %40 ]
  %47 = inttoptr i64 %46 to %struct.interflop_function_info*
  br label %48

; <label>:48:                                     ; preds = %32, %14, %45
  %49 = phi %struct.interflop_function_info* [ %47, %45 ], [ null, %14 ], [ null, %32 ]
  ret %struct.interflop_function_info* %49
}

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @vfc_hashmap_get(%struct.vfc_hashmap_st* nocapture readonly, i64) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !36
  %5 = mul i64 %1, 73
  %6 = and i64 %5, %4
  %7 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 3
  %8 = load i64*, i64** %7, align 8, !tbaa !9
  %9 = shl i64 %6, 1
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8, !tbaa !10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %34, label %13

; <label>:13:                                     ; preds = %2
  %14 = or i64 %9, 1
  %15 = getelementptr inbounds i64, i64* %8, i64 %14
  %16 = load i64, i64* %15, align 8, !tbaa !10
  %17 = icmp eq i64 %16, %1
  br i1 %17, label %31, label %18

; <label>:18:                                     ; preds = %13, %26
  %19 = phi i64 [ %21, %26 ], [ %6, %13 ]
  %20 = add i64 %19, 5009
  %21 = and i64 %20, %4
  %22 = shl i64 %21, 1
  %23 = getelementptr inbounds i64, i64* %8, i64 %22
  %24 = load i64, i64* %23, align 8, !tbaa !10
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %34, label %26

; <label>:26:                                     ; preds = %18
  %27 = or i64 %22, 1
  %28 = getelementptr inbounds i64, i64* %8, i64 %27
  %29 = load i64, i64* %28, align 8, !tbaa !10
  %30 = icmp eq i64 %29, %1
  br i1 %30, label %31, label %18

; <label>:31:                                     ; preds = %26, %13
  %32 = phi i64 [ %11, %13 ], [ %24, %26 ]
  %33 = inttoptr i64 %32 to i8*
  br label %34

; <label>:34:                                     ; preds = %18, %2, %31
  %35 = phi i8* [ %33, %31 ], [ null, %2 ], [ null, %18 ]
  ret i8* %35
}

; Function Attrs: nounwind uwtable
define void @_vfc_func_table_print(%struct._IO_FILE* nocapture) local_unnamed_addr #0 {
  %2 = load %struct.vfc_hashmap_st*, %struct.vfc_hashmap_st** @_vfc_func_map, align 8, !tbaa !16
  %3 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %2, i64 0, i32 2
  %4 = load i64, i64* %3, align 8, !tbaa !3
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %34, %1
  ret void

; <label>:7:                                      ; preds = %1, %34
  %8 = phi %struct.vfc_hashmap_st* [ %35, %34 ], [ %2, %1 ]
  %9 = phi i64 [ %36, %34 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %8, i64 0, i32 3
  %11 = load i64*, i64** %10, align 8, !tbaa !9
  %12 = shl i64 %9, 1
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8, !tbaa !10
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %34, label %16

; <label>:16:                                     ; preds = %7
  %17 = inttoptr i64 %14 to %struct.interflop_function_info*
  %18 = getelementptr inbounds %struct.interflop_function_info, %struct.interflop_function_info* %17, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8, !tbaa !40
  %20 = getelementptr inbounds %struct.interflop_function_info, %struct.interflop_function_info* %17, i64 0, i32 1
  %21 = load i16, i16* %20, align 8, !tbaa !43
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.interflop_function_info, %struct.interflop_function_info* %17, i64 0, i32 2
  %24 = load i16, i16* %23, align 2, !tbaa !44
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.interflop_function_info, %struct.interflop_function_info* %17, i64 0, i32 3
  %27 = load i16, i16* %26, align 4, !tbaa !45
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds %struct.interflop_function_info, %struct.interflop_function_info* %17, i64 0, i32 4
  %30 = load i16, i16* %29, align 2, !tbaa !46
  %31 = sext i16 %30 to i32
  %32 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i8* %19, i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.vfc_hashmap_st*, %struct.vfc_hashmap_st** @_vfc_func_map, align 8, !tbaa !16
  br label %34

; <label>:34:                                     ; preds = %7, %16
  %35 = phi %struct.vfc_hashmap_st* [ %8, %7 ], [ %33, %16 ]
  %36 = add nuw i64 %9, 1
  %37 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %35, i64 0, i32 2
  %38 = load i64, i64* %37, align 8, !tbaa !3
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %7, label %6
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @vfc_func_table_init() local_unnamed_addr #0 {
  %1 = tail call noalias i8* @calloc(i64 1, i64 48) #9
  %2 = bitcast i8* %1 to %struct.vfc_hashmap_st*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %15, label %4

; <label>:4:                                      ; preds = %0
  %5 = getelementptr inbounds i8, i8* %1, i64 16
  %6 = bitcast i8* %5 to i64*
  store i64 8, i64* %6, align 8, !tbaa !3
  %7 = bitcast i8* %1 to <2 x i64>*
  store <2 x i64> <i64 3, i64 7>, <2 x i64>* %7, align 8, !tbaa !10
  %8 = tail call noalias i8* @calloc(i64 8, i64 16) #9
  %9 = getelementptr inbounds i8, i8* %1, i64 24
  %10 = bitcast i8* %9 to i8**
  store i8* %8, i8** %10, align 8, !tbaa !9
  %11 = icmp eq i8* %8, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %4
  tail call void @free(i8* nonnull %1) #9
  br label %15

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds i8, i8* %1, i64 32
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %14, i8 0, i64 16, i1 false) #9
  br label %15

; <label>:15:                                     ; preds = %0, %12, %13
  %16 = phi %struct.vfc_hashmap_st* [ null, %12 ], [ %2, %13 ], [ null, %0 ]
  store %struct.vfc_hashmap_st* %16, %struct.vfc_hashmap_st** @_vfc_func_map, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define void @vfc_func_table_quit() local_unnamed_addr #0 {
  %1 = load %struct.vfc_hashmap_st*, %struct.vfc_hashmap_st** @_vfc_func_map, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %1, i64 0, i32 2
  %3 = load i64, i64* %2, align 8, !tbaa !3
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %24, label %5

; <label>:5:                                      ; preds = %0
  %6 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %1, i64 0, i32 3
  br label %7

; <label>:7:                                      ; preds = %18, %5
  %8 = phi i64 [ %3, %5 ], [ %19, %18 ]
  %9 = phi i64 [ 0, %5 ], [ %20, %18 ]
  %10 = load i64*, i64** %6, align 8, !tbaa !9
  %11 = shl i64 %9, 1
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8, !tbaa !10
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %7
  %16 = inttoptr i64 %13 to i8*
  tail call void @free(i8* %16) #9
  %17 = load i64, i64* %2, align 8, !tbaa !3
  br label %18

; <label>:18:                                     ; preds = %15, %7
  %19 = phi i64 [ %8, %7 ], [ %17, %15 ]
  %20 = add nuw i64 %9, 1
  %21 = icmp ult i64 %20, %19
  br i1 %21, label %7, label %22

; <label>:22:                                     ; preds = %18
  %23 = load %struct.vfc_hashmap_st*, %struct.vfc_hashmap_st** @_vfc_func_map, align 8, !tbaa !16
  br label %24

; <label>:24:                                     ; preds = %22, %0
  %25 = phi %struct.vfc_hashmap_st* [ %23, %22 ], [ %1, %0 ]
  %26 = icmp eq %struct.vfc_hashmap_st* %25, null
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %25, i64 0, i32 3
  %29 = bitcast i64** %28 to i8**
  %30 = load i8*, i8** %29, align 8, !tbaa !9
  tail call void @free(i8* %30) #9
  br label %31

; <label>:31:                                     ; preds = %24, %27
  %32 = bitcast %struct.vfc_hashmap_st* %25 to i8*
  tail call void @free(i8* %32) #9
  ret void
}

; Function Attrs: nounwind uwtable
define void @vfc_hashmap_free(%struct.vfc_hashmap_st* nocapture readonly) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8, !tbaa !3
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 3
  br label %8

; <label>:7:                                      ; preds = %19, %1
  ret void

; <label>:8:                                      ; preds = %5, %19
  %9 = phi i64 [ %3, %5 ], [ %20, %19 ]
  %10 = phi i64 [ 0, %5 ], [ %21, %19 ]
  %11 = load i64*, i64** %6, align 8, !tbaa !9
  %12 = shl i64 %10, 1
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8, !tbaa !10
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %8
  %17 = inttoptr i64 %14 to i8*
  tail call void @free(i8* %17) #9
  %18 = load i64, i64* %2, align 8, !tbaa !3
  br label %19

; <label>:19:                                     ; preds = %8, %16
  %20 = phi i64 [ %9, %8 ], [ %18, %16 ]
  %21 = add nuw i64 %10, 1
  %22 = icmp ult i64 %21, %20
  br i1 %22, label %8, label %7
}

; Function Attrs: nounwind uwtable
define void @vfc_hashmap_destroy(%struct.vfc_hashmap_st*) local_unnamed_addr #0 {
  %2 = icmp eq %struct.vfc_hashmap_st* %0, null
  br i1 %2, label %7, label %3

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 3
  %5 = bitcast i64** %4 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !9
  tail call void @free(i8* %6) #9
  br label %7

; <label>:7:                                      ; preds = %1, %3
  %8 = bitcast %struct.vfc_hashmap_st* %0 to i8*
  tail call void @free(i8* %8) #9
  ret void
}

; Function Attrs: nounwind uwtable
define void @vfc_call_stack_init() local_unnamed_addr #0 {
  %1 = tail call noalias i8* @malloc(i64 32768) #9
  %2 = bitcast i8* %1 to %struct.interflop_function_info**
  store i8* %1, i8** bitcast (%struct.interflop_function_stack* @_vfc_call_stack to i8**), align 8, !tbaa !47
  %3 = load i64, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  %4 = add nsw i64 %3, -1
  store i64 %4, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.interflop_function_info*, %struct.interflop_function_info** %2, i64 %4
  store %struct.interflop_function_info* null, %struct.interflop_function_info** %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define void @vfc_call_stack_push(%struct.interflop_function_info*) local_unnamed_addr #0 {
  %2 = load i64, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i32 4096)
  unreachable

; <label>:5:                                      ; preds = %1
  %6 = load %struct.interflop_function_info**, %struct.interflop_function_info*** getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 0), align 8, !tbaa !47
  %7 = add nsw i64 %2, -1
  store i64 %7, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.interflop_function_info*, %struct.interflop_function_info** %6, i64 %7
  store %struct.interflop_function_info* %0, %struct.interflop_function_info** %8, align 8, !tbaa !16
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define %struct.interflop_function_info* @vfc_call_stack_pop() local_unnamed_addr #10 {
  %1 = load i64, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  %2 = icmp slt i64 %1, 4096
  br i1 %2, label %3, label %8

; <label>:3:                                      ; preds = %0
  %4 = load %struct.interflop_function_info**, %struct.interflop_function_info*** getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 0), align 8, !tbaa !47
  %5 = add nsw i64 %1, 1
  store i64 %5, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.interflop_function_info*, %struct.interflop_function_info** %4, i64 %1
  %7 = load %struct.interflop_function_info*, %struct.interflop_function_info** %6, align 8, !tbaa !16
  br label %8

; <label>:8:                                      ; preds = %0, %3
  %9 = phi %struct.interflop_function_info* [ %7, %3 ], [ null, %0 ]
  ret %struct.interflop_function_info* %9
}

; Function Attrs: nounwind uwtable
define void @vfc_call_stack_print(%struct._IO_FILE* nocapture) local_unnamed_addr #0 {
  %2 = load i64, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  %3 = icmp sgt i64 %2, 4094
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %6, %1
  %5 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %0)
  ret void

; <label>:6:                                      ; preds = %1, %6
  %7 = phi i64 [ %14, %6 ], [ 4094, %1 ]
  %8 = load %struct.interflop_function_info**, %struct.interflop_function_info*** getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 0), align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.interflop_function_info*, %struct.interflop_function_info** %8, i64 %7
  %10 = load %struct.interflop_function_info*, %struct.interflop_function_info** %9, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.interflop_function_info, %struct.interflop_function_info* %10, i64 0, i32 0
  %12 = load i8*, i8** %11, align 8, !tbaa !40
  %13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i8* %12)
  %14 = add i64 %7, -1
  %15 = load i64, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  %16 = icmp sgt i64 %15, %14
  br i1 %16, label %4, label %6
}

; Function Attrs: nounwind uwtable
define void @vfc_call_stack_free() local_unnamed_addr #0 {
  %1 = load %struct.interflop_function_info**, %struct.interflop_function_info*** getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 0), align 8, !tbaa !47
  %2 = icmp eq %struct.interflop_function_info** %1, null
  br i1 %2, label %5, label %3

; <label>:3:                                      ; preds = %0
  %4 = bitcast %struct.interflop_function_info** %1 to i8*
  tail call void @free(i8* %4) #9
  br label %5

; <label>:5:                                      ; preds = %0, %3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @vfc_enter_function(i8*, i8 signext, i8 signext, i64, i64, i32, ...) local_unnamed_addr #0 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = load i8, i8* %0, align 1, !tbaa !17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

; <label>:10:                                     ; preds = %6, %10
  %11 = phi i8 [ %18, %10 ], [ %8, %6 ]
  %12 = phi i64 [ %16, %10 ], [ 0, %6 ]
  %13 = phi i8* [ %17, %10 ], [ %0, %6 ]
  %14 = mul i64 %12, 31
  %15 = zext i8 %11 to i64
  %16 = add i64 %14, %15
  %17 = getelementptr inbounds i8, i8* %13, i64 1
  %18 = load i8, i8* %17, align 1, !tbaa !17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %10

; <label>:20:                                     ; preds = %10, %6
  %21 = phi i64 [ 0, %6 ], [ %16, %10 ]
  %22 = load %struct.vfc_hashmap_st*, %struct.vfc_hashmap_st** @_vfc_func_map, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %22, i64 0, i32 1
  %24 = load i64, i64* %23, align 8, !tbaa !36
  %25 = mul i64 %21, 73
  %26 = and i64 %24, %25
  %27 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %22, i64 0, i32 3
  %28 = load i64*, i64** %27, align 8, !tbaa !9
  %29 = shl i64 %26, 1
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8, !tbaa !10
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %54, label %33

; <label>:33:                                     ; preds = %20
  %34 = or i64 %29, 1
  %35 = getelementptr inbounds i64, i64* %28, i64 %34
  %36 = load i64, i64* %35, align 8, !tbaa !10
  %37 = icmp eq i64 %36, %21
  br i1 %37, label %51, label %38

; <label>:38:                                     ; preds = %33, %46
  %39 = phi i64 [ %41, %46 ], [ %26, %33 ]
  %40 = add i64 %39, 5009
  %41 = and i64 %40, %24
  %42 = shl i64 %41, 1
  %43 = getelementptr inbounds i64, i64* %28, i64 %42
  %44 = load i64, i64* %43, align 8, !tbaa !10
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %54, label %46

; <label>:46:                                     ; preds = %38
  %47 = or i64 %42, 1
  %48 = getelementptr inbounds i64, i64* %28, i64 %47
  %49 = load i64, i64* %48, align 8, !tbaa !10
  %50 = icmp eq i64 %49, %21
  br i1 %50, label %51, label %38

; <label>:51:                                     ; preds = %46, %33
  %52 = phi i64 [ %31, %33 ], [ %44, %46 ]
  %53 = inttoptr i64 %52 to %struct.interflop_function_info*
  br label %83

; <label>:54:                                     ; preds = %38, %20
  %55 = sext i8 %1 to i64
  %56 = and i64 %55, 65535
  %57 = sext i8 %2 to i64
  %58 = shl nsw i64 %57, 16
  %59 = and i64 %58, 4294901760
  %60 = or i64 %59, %56
  %61 = shl i64 %3, 32
  %62 = and i64 %61, 281470681743360
  %63 = or i64 %60, %62
  %64 = shl i64 %4, 48
  %65 = or i64 %63, %64
  br i1 %9, label %76, label %66

; <label>:66:                                     ; preds = %54, %66
  %67 = phi i8 [ %74, %66 ], [ %8, %54 ]
  %68 = phi i64 [ %72, %66 ], [ 0, %54 ]
  %69 = phi i8* [ %73, %66 ], [ %0, %54 ]
  %70 = mul i64 %68, 31
  %71 = zext i8 %67 to i64
  %72 = add i64 %70, %71
  %73 = getelementptr inbounds i8, i8* %69, i64 1
  %74 = load i8, i8* %73, align 1, !tbaa !17
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %66

; <label>:76:                                     ; preds = %66, %54
  %77 = phi i64 [ 0, %54 ], [ %72, %66 ]
  %78 = tail call noalias i8* @malloc(i64 16) #9
  %79 = bitcast i8* %78 to %struct.interflop_function_info*
  %80 = bitcast i8* %78 to i8**
  store i8* %0, i8** %80, align 8
  %81 = getelementptr inbounds i8, i8* %78, i64 8
  %82 = bitcast i8* %81 to i64*
  store i64 %65, i64* %82, align 8
  tail call void @vfc_hashmap_insert(%struct.vfc_hashmap_st* %22, i64 %77, i8* %78) #9
  br label %83

; <label>:83:                                     ; preds = %51, %76
  %84 = phi %struct.interflop_function_info* [ %79, %76 ], [ %53, %51 ]
  %85 = load i64, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %83
  tail call void (i8*, ...) @logger_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i32 4096) #9
  unreachable

; <label>:88:                                     ; preds = %83
  %89 = load %struct.interflop_function_info**, %struct.interflop_function_info*** getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 0), align 8, !tbaa !47
  %90 = add nsw i64 %85, -1
  store i64 %90, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  %91 = getelementptr inbounds %struct.interflop_function_info*, %struct.interflop_function_info** %89, i64 %90
  store %struct.interflop_function_info* %84, %struct.interflop_function_info** %91, align 8, !tbaa !16
  %92 = or i64 %4, %3
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %115, label %94

; <label>:94:                                     ; preds = %88
  %95 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %95) #9
  %96 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %95)
  %97 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %110, %94
  call void @llvm.va_end(i8* nonnull %95)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %95) #9
  br label %115

; <label>:100:                                    ; preds = %94, %110
  %101 = phi i8 [ %111, %110 ], [ %97, %94 ]
  %102 = phi i64 [ %112, %110 ], [ 0, %94 ]
  %103 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %102, i32 10
  %104 = load void (%struct.interflop_function_stack*, i8*, i32, %struct.__va_list_tag*)*, void (%struct.interflop_function_stack*, i8*, i32, %struct.__va_list_tag*)** %103, align 16, !tbaa !50
  %105 = icmp eq void (%struct.interflop_function_stack*, i8*, i32, %struct.__va_list_tag*)* %104, null
  br i1 %105, label %110, label %106

; <label>:106:                                    ; preds = %100
  %107 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %102
  %108 = load i8*, i8** %107, align 8, !tbaa !16
  call void %104(%struct.interflop_function_stack* nonnull @_vfc_call_stack, i8* %108, i32 %5, %struct.__va_list_tag* nonnull %96) #9
  %109 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %110

; <label>:110:                                    ; preds = %100, %106
  %111 = phi i8 [ %101, %100 ], [ %109, %106 ]
  %112 = add nuw nsw i64 %102, 1
  %113 = zext i8 %111 to i64
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %100, label %99

; <label>:115:                                    ; preds = %88, %99
  ret void
}

; Function Attrs: nounwind uwtable
define void @vfc_exit_function(i8* nocapture readnone, i8 signext, i8 signext, i64, i64, i32, ...) local_unnamed_addr #0 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = or i64 %4, %3
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %31, label %10

; <label>:10:                                     ; preds = %6
  %11 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #9
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %11)
  %13 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %26, %10
  call void @llvm.va_end(i8* nonnull %11)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #9
  br label %31

; <label>:16:                                     ; preds = %10, %26
  %17 = phi i8 [ %27, %26 ], [ %13, %10 ]
  %18 = phi i64 [ %28, %26 ], [ 0, %10 ]
  %19 = getelementptr inbounds [16 x %struct.interflop_backend_interface_t], [16 x %struct.interflop_backend_interface_t]* @backends, i64 0, i64 %18, i32 11
  %20 = load void (%struct.interflop_function_stack*, i8*, i32, %struct.__va_list_tag*)*, void (%struct.interflop_function_stack*, i8*, i32, %struct.__va_list_tag*)** %19, align 8, !tbaa !51
  %21 = icmp eq void (%struct.interflop_function_stack*, i8*, i32, %struct.__va_list_tag*)* %20, null
  br i1 %21, label %26, label %22

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds [16 x i8*], [16 x i8*]* @contexts, i64 0, i64 %18
  %24 = load i8*, i8** %23, align 8, !tbaa !16
  call void %20(%struct.interflop_function_stack* nonnull @_vfc_call_stack, i8* %24, i32 %5, %struct.__va_list_tag* nonnull %12) #9
  %25 = load i8, i8* @loaded_backends, align 1, !tbaa !17
  br label %26

; <label>:26:                                     ; preds = %16, %22
  %27 = phi i8 [ %17, %16 ], [ %25, %22 ]
  %28 = add nuw nsw i64 %18, 1
  %29 = zext i8 %27 to i64
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %16, label %15

; <label>:31:                                     ; preds = %6, %15
  %32 = load i64, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  %33 = icmp slt i64 %32, 4096
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %31
  %35 = add nsw i64 %32, 1
  store i64 %35, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  br label %36

; <label>:36:                                     ; preds = %31, %34
  ret void
}

; Function Attrs: nounwind uwtable
define void @vfc_init_func_inst() local_unnamed_addr #0 {
  %1 = tail call noalias i8* @malloc(i64 32768) #9
  %2 = bitcast i8* %1 to %struct.interflop_function_info**
  store i8* %1, i8** bitcast (%struct.interflop_function_stack* @_vfc_call_stack to i8**), align 8, !tbaa !47
  %3 = load i64, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  %4 = add nsw i64 %3, -1
  store i64 %4, i64* getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 1), align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.interflop_function_info*, %struct.interflop_function_info** %2, i64 %4
  store %struct.interflop_function_info* null, %struct.interflop_function_info** %5, align 8, !tbaa !16
  %6 = tail call noalias i8* @calloc(i64 1, i64 48) #9
  %7 = bitcast i8* %6 to %struct.vfc_hashmap_st*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %20, label %9

; <label>:9:                                      ; preds = %0
  %10 = getelementptr inbounds i8, i8* %6, i64 16
  %11 = bitcast i8* %10 to i64*
  store i64 8, i64* %11, align 8, !tbaa !3
  %12 = bitcast i8* %6 to <2 x i64>*
  store <2 x i64> <i64 3, i64 7>, <2 x i64>* %12, align 8, !tbaa !10
  %13 = tail call noalias i8* @calloc(i64 8, i64 16) #9
  %14 = getelementptr inbounds i8, i8* %6, i64 24
  %15 = bitcast i8* %14 to i8**
  store i8* %13, i8** %15, align 8, !tbaa !9
  %16 = icmp eq i8* %13, null
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %9
  tail call void @free(i8* nonnull %6) #9
  br label %20

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds i8, i8* %6, i64 32
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %19, i8 0, i64 16, i1 false) #9
  br label %20

; <label>:20:                                     ; preds = %0, %17, %18
  %21 = phi %struct.vfc_hashmap_st* [ null, %17 ], [ %7, %18 ], [ null, %0 ]
  store %struct.vfc_hashmap_st* %21, %struct.vfc_hashmap_st** @_vfc_func_map, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define void @vfc_quit_func_inst() local_unnamed_addr #0 {
  %1 = load %struct.interflop_function_info**, %struct.interflop_function_info*** getelementptr inbounds (%struct.interflop_function_stack, %struct.interflop_function_stack* @_vfc_call_stack, i64 0, i32 0), align 8, !tbaa !47
  %2 = icmp eq %struct.interflop_function_info** %1, null
  br i1 %2, label %5, label %3

; <label>:3:                                      ; preds = %0
  %4 = bitcast %struct.interflop_function_info** %1 to i8*
  tail call void @free(i8* %4) #9
  br label %5

; <label>:5:                                      ; preds = %0, %3
  %6 = load %struct.vfc_hashmap_st*, %struct.vfc_hashmap_st** @_vfc_func_map, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %6, i64 0, i32 2
  %8 = load i64, i64* %7, align 8, !tbaa !3
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %29, label %10

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %6, i64 0, i32 3
  br label %12

; <label>:12:                                     ; preds = %23, %10
  %13 = phi i64 [ %8, %10 ], [ %24, %23 ]
  %14 = phi i64 [ 0, %10 ], [ %25, %23 ]
  %15 = load i64*, i64** %11, align 8, !tbaa !9
  %16 = shl i64 %14, 1
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8, !tbaa !10
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %23, label %20

; <label>:20:                                     ; preds = %12
  %21 = inttoptr i64 %18 to i8*
  tail call void @free(i8* %21) #9
  %22 = load i64, i64* %7, align 8, !tbaa !3
  br label %23

; <label>:23:                                     ; preds = %20, %12
  %24 = phi i64 [ %13, %12 ], [ %22, %20 ]
  %25 = add nuw i64 %14, 1
  %26 = icmp ult i64 %25, %24
  br i1 %26, label %12, label %27

; <label>:27:                                     ; preds = %23
  %28 = load %struct.vfc_hashmap_st*, %struct.vfc_hashmap_st** @_vfc_func_map, align 8, !tbaa !16
  br label %29

; <label>:29:                                     ; preds = %27, %5
  %30 = phi %struct.vfc_hashmap_st* [ %28, %27 ], [ %6, %5 ]
  %31 = icmp eq %struct.vfc_hashmap_st* %30, null
  br i1 %31, label %36, label %32

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %30, i64 0, i32 3
  %34 = bitcast i64** %33 to i8**
  %35 = load i8*, i8** %34, align 8, !tbaa !9
  tail call void @free(i8* %35) #9
  br label %36

; <label>:36:                                     ; preds = %29, %32
  %37 = bitcast %struct.vfc_hashmap_st* %30 to i8*
  tail call void @free(i8* %37) #9
  ret void
}

; Function Attrs: nounwind uwtable
define noalias %struct.vfc_hashmap_st* @vfc_hashmap_create() local_unnamed_addr #0 {
  %1 = tail call noalias i8* @calloc(i64 1, i64 48) #9
  %2 = bitcast i8* %1 to %struct.vfc_hashmap_st*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %15, label %4

; <label>:4:                                      ; preds = %0
  %5 = getelementptr inbounds i8, i8* %1, i64 16
  %6 = bitcast i8* %5 to i64*
  store i64 8, i64* %6, align 8, !tbaa !3
  %7 = bitcast i8* %1 to <2 x i64>*
  store <2 x i64> <i64 3, i64 7>, <2 x i64>* %7, align 8, !tbaa !10
  %8 = tail call noalias i8* @calloc(i64 8, i64 16) #9
  %9 = getelementptr inbounds i8, i8* %1, i64 24
  %10 = bitcast i8* %9 to i8**
  store i8* %8, i8** %10, align 8, !tbaa !9
  %11 = icmp eq i8* %8, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %4
  tail call void @free(i8* nonnull %1) #9
  br label %15

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds i8, i8* %1, i64 32
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %14, i8 0, i64 16, i1 false)
  br label %15

; <label>:15:                                     ; preds = %0, %13, %12
  %16 = phi %struct.vfc_hashmap_st* [ null, %12 ], [ %2, %13 ], [ null, %0 ]
  ret %struct.vfc_hashmap_st* %16
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #5

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @get_key_at(i64* nocapture readonly, i64) local_unnamed_addr #4 {
  %3 = shl i64 %1, 1
  %4 = or i64 %3, 1
  %5 = getelementptr inbounds i64, i64* %0, i64 %4
  %6 = load i64, i64* %5, align 8, !tbaa !10
  ret i64 %6
}

; Function Attrs: norecurse nounwind uwtable
define void @set_value_at(i64* nocapture, i64, i64) local_unnamed_addr #10 {
  %4 = shl i64 %2, 1
  %5 = getelementptr inbounds i64, i64* %0, i64 %4
  store i64 %1, i64* %5, align 8, !tbaa !10
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @set_key_at(i64* nocapture, i64, i64) local_unnamed_addr #10 {
  %4 = shl i64 %2, 1
  %5 = or i64 %4, 1
  %6 = getelementptr inbounds i64, i64* %0, i64 %5
  store i64 %1, i64* %6, align 8, !tbaa !10
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @vfc_hashmap_remove(%struct.vfc_hashmap_st* nocapture, i64) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !36
  %5 = mul i64 %1, 73
  %6 = and i64 %5, %4
  %7 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 3
  %8 = load i64*, i64** %7, align 8, !tbaa !9
  %9 = shl i64 %6, 1
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8, !tbaa !10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %40, label %13

; <label>:13:                                     ; preds = %2
  %14 = or i64 %9, 1
  %15 = getelementptr inbounds i64, i64* %8, i64 %14
  %16 = load i64, i64* %15, align 8, !tbaa !10
  %17 = icmp eq i64 %16, %1
  br i1 %17, label %33, label %18

; <label>:18:                                     ; preds = %13, %26
  %19 = phi i64 [ %21, %26 ], [ %6, %13 ]
  %20 = add i64 %19, 5009
  %21 = and i64 %20, %4
  %22 = shl i64 %21, 1
  %23 = getelementptr inbounds i64, i64* %8, i64 %22
  %24 = load i64, i64* %23, align 8, !tbaa !10
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %40, label %26

; <label>:26:                                     ; preds = %18
  %27 = or i64 %22, 1
  %28 = getelementptr inbounds i64, i64* %8, i64 %27
  %29 = load i64, i64* %28, align 8, !tbaa !10
  %30 = icmp eq i64 %29, %1
  br i1 %30, label %31, label %18

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds i64, i64* %8, i64 %22
  br label %33

; <label>:33:                                     ; preds = %31, %13
  %34 = phi i64* [ %10, %13 ], [ %32, %31 ]
  store i64 1, i64* %34, align 8, !tbaa !10
  %35 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 4
  %36 = bitcast i64* %35 to <2 x i64>*
  %37 = load <2 x i64>, <2 x i64>* %36, align 8, !tbaa !10
  %38 = add <2 x i64> %37, <i64 -1, i64 1>
  %39 = bitcast i64* %35 to <2 x i64>*
  store <2 x i64> %38, <2 x i64>* %39, align 8, !tbaa !10
  br label %40

; <label>:40:                                     ; preds = %18, %2, %33
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define signext i8 @vfc_hashmap_have(%struct.vfc_hashmap_st* nocapture readonly, i64) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !36
  %5 = mul i64 %1, 73
  %6 = and i64 %5, %4
  %7 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 3
  %8 = load i64*, i64** %7, align 8, !tbaa !9
  %9 = shl i64 %6, 1
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8, !tbaa !10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %27, label %20

; <label>:13:                                     ; preds = %20
  %14 = add i64 %22, 5009
  %15 = and i64 %14, %4
  %16 = shl i64 %15, 1
  %17 = getelementptr inbounds i64, i64* %8, i64 %16
  %18 = load i64, i64* %17, align 8, !tbaa !10
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %27, label %20

; <label>:20:                                     ; preds = %2, %13
  %21 = phi i64 [ %16, %13 ], [ %9, %2 ]
  %22 = phi i64 [ %15, %13 ], [ %6, %2 ]
  %23 = or i64 %21, 1
  %24 = getelementptr inbounds i64, i64* %8, i64 %23
  %25 = load i64, i64* %24, align 8, !tbaa !10
  %26 = icmp eq i64 %25, %1
  br i1 %26, label %27, label %13

; <label>:27:                                     ; preds = %20, %13, %2
  %28 = phi i8 [ 0, %2 ], [ 0, %13 ], [ 1, %20 ]
  ret i8 %28
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @vfc_hashmap_num_items(%struct.vfc_hashmap_st* nocapture readonly) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.vfc_hashmap_st, %struct.vfc_hashmap_st* %0, i64 0, i32 4
  %3 = load i64, i64* %2, align 8, !tbaa !37
  ret i64 %3
}

; Function Attrs: nounwind readonly uwtable
define zeroext i1 @is_logger_enabled() local_unnamed_addr #11 {
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @vfc_backends_logger, i64 0, i64 0)) #9
  %2 = icmp eq i8* %1, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @strcasecmp(i8* nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #16
  %5 = icmp eq i32 %4, 0
  br label %6

; <label>:6:                                      ; preds = %3, %0
  %7 = phi i1 [ true, %0 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: nounwind readonly uwtable
define zeroext i1 @is_logger_colored() local_unnamed_addr #11 {
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @vfc_backends_colored_logger, i64 0, i64 0)) #9
  %2 = icmp eq i8* %1, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @strcasecmp(i8* nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #16
  %5 = icmp eq i32 %4, 0
  br label %6

; <label>:6:                                      ; preds = %3, %0
  %7 = phi i1 [ false, %0 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: nounwind uwtable
define i32 @get_tid() local_unnamed_addr #0 {
  %1 = tail call i64 (i64, ...) @syscall(i64 186) #9
  %2 = trunc i64 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define void @_error() local_unnamed_addr #3 {
  %1 = tail call i32* @__errno_location() #15
  %2 = load i32, i32* %1, align 4, !tbaa !11
  %3 = tail call i8* @strerror_l(i32 %2, %struct.__locale_struct* null) #9
  tail call void (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* %3) #13
  unreachable
}

; Function Attrs: nounwind
declare i8* @strerror_l(i32, %struct.__locale_struct*) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @err(i32, i8*, ...) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @set_logger_logfile() local_unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @logger_logfile, align 8, !tbaa !16
  %3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %3, label %4, label %18

; <label>:4:                                      ; preds = %0
  %5 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @vfc_backends_logfile, i64 0, i64 0)) #9
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %4
  %8 = load i64, i64* bitcast (%struct._IO_FILE** @stderr to i64*), align 8, !tbaa !16
  store i64 %8, i64* bitcast (%struct._IO_FILE** @logger_logfile to i64*), align 8, !tbaa !16
  br label %18

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %10) #9
  %11 = tail call i64 (i64, ...) @syscall(i64 186) #9
  %12 = trunc i64 %11 to i32
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8* nonnull %5, i32 %12) #9
  %14 = call %struct._IO_FILE* @fopen(i8* nonnull %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** @logger_logfile, align 8, !tbaa !16
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %9
  tail call void @_error()
  unreachable

; <label>:17:                                     ; preds = %9
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %10) #9
  br label %18

; <label>:18:                                     ; preds = %7, %17, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @logger_header(%struct._IO_FILE* nocapture, i8*, i32, i1 zeroext) local_unnamed_addr #0 {
  br i1 %3, label %5, label %10

; <label>:5:                                      ; preds = %4
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds [13 x i8*], [13 x i8*]* @ansi_colors, i64 0, i64 %6
  %8 = load i8*, i8** %7, align 8, !tbaa !16
  %9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i8* %8, i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ansi_color_green, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0))
  br label %12

; <label>:10:                                     ; preds = %4
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0))
  br label %12

; <label>:12:                                     ; preds = %10, %5
  ret void
}

; Function Attrs: nounwind
declare i32 @vfprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @logger_warning(i8*, ...) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = load i8, i8* @logger_enabled, align 1, !tbaa !13, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

; <label>:5:                                      ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !16
  %7 = load i8, i8* @logger_colored, align 1, !tbaa !13, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ansi_color_bold_yellow, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ansi_color_green, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0)) #14
  br label %13

; <label>:11:                                     ; preds = %5
  %12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #14
  br label %13

; <label>:13:                                     ; preds = %11, %9, %1
  %14 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #9
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %14)
  call void @vwarnx(i8* %0, %struct.__va_list_tag* nonnull %15) #9
  call void @llvm.va_end(i8* nonnull %14)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #9
  ret void
}

declare void @vwarnx(i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @verrx(i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @vlogger_info(i8* nocapture readonly, %struct.__va_list_tag*) local_unnamed_addr #0 {
  %3 = load i8, i8* @logger_enabled, align 1, !tbaa !13, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %16, label %5

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @logger_logfile, align 8, !tbaa !16
  %7 = load i8, i8* @logger_colored, align 1, !tbaa !13, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ansi_color_bold_blue, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ansi_color_green, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0)) #9
  br label %13

; <label>:11:                                     ; preds = %5
  %12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #9
  br label %13

; <label>:13:                                     ; preds = %9, %11
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @logger_logfile, align 8, !tbaa !16
  %15 = tail call i32 @vfprintf(%struct._IO_FILE* %14, i8* %0, %struct.__va_list_tag* %1)
  br label %16

; <label>:16:                                     ; preds = %2, %13
  ret void
}

; Function Attrs: nounwind uwtable
define void @vlogger_warning(i8*, %struct.__va_list_tag*) local_unnamed_addr #0 {
  %3 = load i8, i8* @logger_enabled, align 1, !tbaa !13, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !16
  %7 = load i8, i8* @logger_colored, align 1, !tbaa !13, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ansi_color_bold_yellow, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ansi_color_green, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0)) #14
  br label %13

; <label>:11:                                     ; preds = %5
  %12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #14
  br label %13

; <label>:13:                                     ; preds = %11, %9, %2
  tail call void @vwarnx(i8* %0, %struct.__va_list_tag* %1) #9
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @vlogger_error(i8*, %struct.__va_list_tag*) local_unnamed_addr #3 {
  %3 = load i8, i8* @logger_enabled, align 1, !tbaa !13, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !16
  %7 = load i8, i8* @logger_colored, align 1, !tbaa !13, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ansi_color_bold_red, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ansi_color_green, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ansi_color_reset, i64 0, i64 0)) #14
  br label %13

; <label>:11:                                     ; preds = %5
  %12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #14
  br label %13

; <label>:13:                                     ; preds = %11, %9, %2
  tail call void @verrx(i32 1, i8* %0, %struct.__va_list_tag* %1) #13
  unreachable
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="broadwell" "target-features"="+adx,+aes,+avx,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-invpcid,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rdpid,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaveopt,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="broadwell" "target-features"="+adx,+aes,+avx,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-invpcid,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rdpid,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaveopt,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="broadwell" "target-features"="+adx,+aes,+avx,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-invpcid,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rdpid,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaveopt,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="broadwell" "target-features"="+adx,+aes,+avx,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-invpcid,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rdpid,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaveopt,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="broadwell" "target-features"="+adx,+aes,+avx,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-invpcid,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rdpid,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaveopt,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="broadwell" "target-features"="+adx,+aes,+avx,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-invpcid,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rdpid,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaveopt,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="broadwell" "target-features"="+adx,+aes,+avx,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-invpcid,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rdpid,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaveopt,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="broadwell" "target-features"="+adx,+aes,+avx,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-invpcid,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rdpid,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaveopt,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="broadwell" "target-features"="+adx,+aes,+avx,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-invpcid,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rdpid,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaveopt,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="broadwell" "target-features"="+adx,+aes,+avx,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-invpcid,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rdpid,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaveopt,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="broadwell" "target-features"="+adx,+aes,+avx,+bmi,+bmi2,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-fma4,-gfni,-invpcid,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rdpid,-rtm,-sgx,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaveopt,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.1-12 (tags/RELEASE_701/final)"}
!3 = !{!4, !5, i64 16}
!4 = !{!"vfc_hashmap_st", !5, i64 0, !5, i64 8, !5, i64 16, !8, i64 24, !5, i64 32, !5, i64 40}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!4, !8, i64 24}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"_Bool", !6, i64 0}
!15 = !{i8 0, i8 2}
!16 = !{!8, !8, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !8, i64 104}
!19 = !{!"interflop_backend_interface_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104}
!20 = !{i64 0, i64 8, !16, i64 8, i64 8, !16, i64 16, i64 8, !16, i64 24, i64 8, !16, i64 32, i64 8, !16, i64 40, i64 8, !16, i64 48, i64 8, !16, i64 56, i64 8, !16, i64 64, i64 8, !16, i64 72, i64 8, !16, i64 80, i64 8, !16, i64 88, i64 8, !16, i64 96, i64 8, !16, i64 104, i64 8, !16}
!21 = !{!19, !8, i64 0}
!22 = !{!19, !8, i64 8}
!23 = !{!19, !8, i64 16}
!24 = !{!19, !8, i64 24}
!25 = !{!19, !8, i64 40}
!26 = !{!19, !8, i64 48}
!27 = !{!19, !8, i64 56}
!28 = !{!19, !8, i64 64}
!29 = !{!19, !8, i64 96}
!30 = !{!31, !31, i64 0}
!31 = !{!"float", !6, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"double", !6, i64 0}
!34 = !{!19, !8, i64 32}
!35 = !{!19, !8, i64 72}
!36 = !{!4, !5, i64 8}
!37 = !{!4, !5, i64 32}
!38 = !{!4, !5, i64 40}
!39 = !{!4, !5, i64 0}
!40 = !{!41, !8, i64 0}
!41 = !{!"interflop_function_info", !8, i64 0, !42, i64 8, !42, i64 10, !42, i64 12, !42, i64 14}
!42 = !{!"short", !6, i64 0}
!43 = !{!41, !42, i64 8}
!44 = !{!41, !42, i64 10}
!45 = !{!41, !42, i64 12}
!46 = !{!41, !42, i64 14}
!47 = !{!48, !8, i64 0}
!48 = !{!"interflop_function_stack", !8, i64 0, !5, i64 8}
!49 = !{!48, !5, i64 8}
!50 = !{!19, !8, i64 80}
!51 = !{!19, !8, i64 88}

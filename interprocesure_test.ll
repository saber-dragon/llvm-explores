; ModuleID = 'interprocesure_test.cc'
source_filename = "interprocesure_test.cc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_interprocesure_test.cc, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @_Z7get_sumPii(i32* nocapture readonly, i32) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %39

; <label>:4:                                      ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %30, %10, %4
  %8 = phi i64 [ 0, %10 ], [ 0, %4 ], [ %13, %30 ]
  %9 = phi i32 [ 0, %10 ], [ 0, %4 ], [ %36, %30 ]
  br label %41

; <label>:10:                                     ; preds = %4
  %11 = and i32 %1, 7
  %12 = zext i32 %11 to i64
  %13 = sub nsw i64 %5, %12
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %7, label %15

; <label>:15:                                     ; preds = %10
  br label %16

; <label>:16:                                     ; preds = %15, %16
  %17 = phi i64 [ %28, %16 ], [ 0, %15 ]
  %18 = phi <4 x i32> [ %26, %16 ], [ zeroinitializer, %15 ]
  %19 = phi <4 x i32> [ %27, %16 ], [ zeroinitializer, %15 ]
  %20 = getelementptr inbounds i32, i32* %0, i64 %17
  %21 = bitcast i32* %20 to <4 x i32>*
  %22 = load <4 x i32>, <4 x i32>* %21, align 4, !tbaa !1
  %23 = getelementptr i32, i32* %20, i64 4
  %24 = bitcast i32* %23 to <4 x i32>*
  %25 = load <4 x i32>, <4 x i32>* %24, align 4, !tbaa !1
  %26 = add nsw <4 x i32> %22, %18
  %27 = add nsw <4 x i32> %25, %19
  %28 = add i64 %17, 8
  %29 = icmp eq i64 %28, %13
  br i1 %29, label %30, label %16, !llvm.loop !5

; <label>:30:                                     ; preds = %16
  %31 = add <4 x i32> %27, %26
  %32 = shufflevector <4 x i32> %31, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %33 = add <4 x i32> %31, %32
  %34 = shufflevector <4 x i32> %33, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %35 = add <4 x i32> %33, %34
  %36 = extractelement <4 x i32> %35, i32 0
  %37 = icmp eq i32 %11, 0
  br i1 %37, label %39, label %7

; <label>:38:                                     ; preds = %41
  br label %39

; <label>:39:                                     ; preds = %38, %30, %2
  %40 = phi i32 [ 0, %2 ], [ %36, %30 ], [ %46, %38 ]
  ret i32 %40

; <label>:41:                                     ; preds = %7, %41
  %42 = phi i64 [ %47, %41 ], [ %8, %7 ]
  %43 = phi i32 [ %46, %41 ], [ %9, %7 ]
  %44 = getelementptr inbounds i32, i32* %0, i64 %42
  %45 = load i32, i32* %44, align 4, !tbaa !1
  %46 = add nsw i32 %45, %43
  %47 = add nuw nsw i64 %42, 1
  %48 = icmp eq i64 %47, %5
  br i1 %48, label %38, label %41, !llvm.loop !8
}

; Function Attrs: norecurse nounwind uwtable
define i32 @_Z19fetch_and_decrementRi(i32* nocapture dereferenceable(4)) local_unnamed_addr #3 {
  %2 = load i32, i32* %0, align 4, !tbaa !1
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %0, align 4, !tbaa !1
  ret i32 %2
}

; Function Attrs: norecurse nounwind readnone uwtable
define zeroext i1 @_Z7is_zeroi(i32) local_unnamed_addr #4 {
  %2 = icmp eq i32 %0, 0
  ret i1 %2
}

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @main() local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_interprocesure_test.cc() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #1
  ret void
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.1-6 (tags/RELEASE_401/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.vectorize.width", i32 1}
!7 = !{!"llvm.loop.interleave.count", i32 1}
!8 = distinct !{!8, !9, !6, !7}
!9 = !{!"llvm.loop.unroll.runtime.disable"}

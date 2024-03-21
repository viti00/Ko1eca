; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [130 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 59
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 12
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 53
	i32 182336117, ; 3: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 50
	i32 230752869, ; 4: Microsoft.CSharp.dll => 0xdc10265 => 62
	i32 318968648, ; 5: Xamarin.AndroidX.Activity.dll => 0x13031348 => 34
	i32 321597661, ; 6: System.Numerics => 0x132b30dd => 30
	i32 342366114, ; 7: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 44
	i32 347068432, ; 8: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 18
	i32 354433784, ; 9: MediaBrowser.Model.dll => 0x15203af8 => 9
	i32 442521989, ; 10: Xamarin.Essentials => 0x1a605985 => 52
	i32 450948140, ; 11: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 42
	i32 465846621, ; 12: mscorlib => 0x1bc4415d => 11
	i32 469710990, ; 13: System.dll => 0x1bff388e => 28
	i32 555173402, ; 14: Syncfusion.SfPicker.XForms.Android => 0x2117461a => 24
	i32 627609679, ; 15: Xamarin.AndroidX.CustomView => 0x2568904f => 40
	i32 690569205, ; 16: System.Xml.Linq.dll => 0x29293ff5 => 33
	i32 719061231, ; 17: Syncfusion.Core.XForms.dll => 0x2adc00ef => 21
	i32 748832960, ; 18: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 16
	i32 809851609, ; 19: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 902159924, ; 20: Rg.Plugins.Popup => 0x35c5de34 => 13
	i32 928116545, ; 21: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 59
	i32 955402788, ; 22: Newtonsoft.Json => 0x38f24a24 => 12
	i32 967690846, ; 23: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 44
	i32 974778368, ; 24: FormsViewGroup.dll => 0x3a19f000 => 5
	i32 1012816738, ; 25: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 49
	i32 1035644815, ; 26: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 36
	i32 1042160112, ; 27: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 56
	i32 1052210849, ; 28: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 46
	i32 1098259244, ; 29: System => 0x41761b2c => 28
	i32 1292207520, ; 30: SQLitePCLRaw.core.dll => 0x4d0585a0 => 17
	i32 1293217323, ; 31: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 41
	i32 1365406463, ; 32: System.ServiceModel.Internals.dll => 0x516272ff => 61
	i32 1376866003, ; 33: Xamarin.AndroidX.SavedState => 0x52114ed3 => 49
	i32 1388503655, ; 34: MediaBrowser.Model => 0x52c2e267 => 9
	i32 1406073936, ; 35: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 38
	i32 1411638395, ; 36: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 31
	i32 1460219004, ; 37: Xamarin.Forms.Xaml => 0x57092c7c => 57
	i32 1469204771, ; 38: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 35
	i32 1516315406, ; 39: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 20
	i32 1592978981, ; 40: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1604451928, ; 41: SQLiteNetExtensions => 0x5fa1fe58 => 15
	i32 1622152042, ; 42: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 47
	i32 1639515021, ; 43: System.Net.Http.dll => 0x61b9038d => 3
	i32 1658251792, ; 44: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 58
	i32 1666713512, ; 45: SQLiteNetExtensions.dll => 0x635807a8 => 15
	i32 1711441057, ; 46: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 18
	i32 1729485958, ; 47: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 37
	i32 1746115085, ; 48: System.IO.Pipelines.dll => 0x68139a0d => 29
	i32 1766324549, ; 49: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 50
	i32 1776026572, ; 50: System.Core.dll => 0x69dc03cc => 27
	i32 1788241197, ; 51: Xamarin.AndroidX.Fragment => 0x6a96652d => 42
	i32 1808609942, ; 52: Xamarin.AndroidX.Loader => 0x6bcd3296 => 47
	i32 1813201214, ; 53: Xamarin.Google.Android.Material => 0x6c13413e => 58
	i32 1867746548, ; 54: Xamarin.Essentials.dll => 0x6f538cf4 => 52
	i32 1878053835, ; 55: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 57
	i32 1936121326, ; 56: Syncfusion.SfPicker.XForms.dll => 0x7366ddee => 25
	i32 2011961780, ; 57: System.Buffers.dll => 0x77ec19b4 => 26
	i32 2019465201, ; 58: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 46
	i32 2032169805, ; 59: Ko1eca.Android => 0x7920734d => 0
	i32 2055257422, ; 60: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 45
	i32 2063717998, ; 61: Ko1eca.Android.dll => 0x7b01d66e => 0
	i32 2097448633, ; 62: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 43
	i32 2103459038, ; 63: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 19
	i32 2113902067, ; 64: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 54
	i32 2126786730, ; 65: Xamarin.Forms.Platform.Android => 0x7ec430aa => 55
	i32 2201231467, ; 66: System.Net.Http => 0x8334206b => 3
	i32 2272153315, ; 67: Syncfusion.SfPicker.Android.dll => 0x876e4ee3 => 23
	i32 2279755925, ; 68: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 48
	i32 2343171156, ; 69: Syncfusion.Core.XForms => 0x8ba9f454 => 21
	i32 2354730003, ; 70: Syncfusion.Licensing => 0x8c5a5413 => 22
	i32 2397082276, ; 71: Xamarin.Forms.PancakeView => 0x8ee092a4 => 54
	i32 2435904999, ; 72: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 60
	i32 2465273461, ; 73: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 16
	i32 2475788418, ; 74: Java.Interop.dll => 0x93918882 => 6
	i32 2516013550, ; 75: Ko1eca.dll => 0x95f751ee => 7
	i32 2562349572, ; 76: Microsoft.CSharp => 0x98ba5a04 => 62
	i32 2616254128, ; 77: MediaBrowser.Common => 0x9bf0deb0 => 8
	i32 2732626843, ; 78: Xamarin.AndroidX.Activity => 0xa2e0939b => 34
	i32 2737747696, ; 79: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 35
	i32 2766581644, ; 80: Xamarin.Forms.Core => 0xa4e6af8c => 53
	i32 2778768386, ; 81: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 51
	i32 2784016111, ; 82: Syncfusion.SfPicker.XForms => 0xa5f0b6ef => 25
	i32 2810250172, ; 83: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 38
	i32 2819470561, ; 84: System.Xml.dll => 0xa80db4e1 => 32
	i32 2853208004, ; 85: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 51
	i32 2861816565, ; 86: Rg.Plugins.Popup.dll => 0xaa93daf5 => 13
	i32 2868557005, ; 87: Syncfusion.Licensing.dll => 0xaafab4cd => 22
	i32 2874148507, ; 88: Syncfusion.Core.XForms.Android => 0xab50069b => 20
	i32 2905242038, ; 89: mscorlib.dll => 0xad2a79b6 => 11
	i32 2978675010, ; 90: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 41
	i32 3004926665, ; 91: Ko1eca => 0xb31b8ac9 => 7
	i32 3044182254, ; 92: FormsViewGroup => 0xb57288ee => 5
	i32 3111772706, ; 93: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3124832203, ; 94: System.Threading.Tasks.Extensions => 0xba4127cb => 64
	i32 3204380047, ; 95: System.Data.dll => 0xbefef58f => 2
	i32 3247949154, ; 96: Mono.Security => 0xc197c562 => 63
	i32 3258312781, ; 97: Xamarin.AndroidX.CardView => 0xc235e84d => 37
	i32 3265893370, ; 98: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 64
	i32 3270722617, ; 99: Syncfusion.SfPicker.Android => 0xc2f34439 => 23
	i32 3286872994, ; 100: SQLite-net.dll => 0xc3e9b3a2 => 14
	i32 3317135071, ; 101: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 40
	i32 3317144872, ; 102: System.Data => 0xc5b79d28 => 2
	i32 3353484488, ; 103: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 43
	i32 3360279109, ; 104: SQLitePCLRaw.core => 0xc849ca45 => 17
	i32 3362522851, ; 105: Xamarin.AndroidX.Core => 0xc86c06e3 => 39
	i32 3366347497, ; 106: Java.Interop => 0xc8a662e9 => 6
	i32 3374999561, ; 107: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 48
	i32 3395150330, ; 108: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 31
	i32 3404865022, ; 109: System.ServiceModel.Internals => 0xcaf21dfe => 61
	i32 3429136800, ; 110: System.Xml => 0xcc6479a0 => 32
	i32 3476120550, ; 111: Mono.Android => 0xcf3163e6 => 10
	i32 3509114376, ; 112: System.Xml.Linq => 0xd128d608 => 33
	i32 3536029504, ; 113: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 55
	i32 3632359727, ; 114: Xamarin.Forms.Platform => 0xd881692f => 56
	i32 3641597786, ; 115: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 45
	i32 3645089577, ; 116: System.ComponentModel.DataAnnotations => 0xd943a729 => 60
	i32 3672681054, ; 117: Mono.Android.dll => 0xdae8aa5e => 10
	i32 3689375977, ; 118: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3754567612, ; 119: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 19
	i32 3829621856, ; 120: System.Numerics.dll => 0xe4436460 => 30
	i32 3876362041, ; 121: SQLite-net => 0xe70c9739 => 14
	i32 3896760992, ; 122: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 39
	i32 3949143839, ; 123: Syncfusion.SfPicker.XForms.Android.dll => 0xeb63271f => 24
	i32 3955647286, ; 124: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 36
	i32 4023392905, ; 125: System.IO.Pipelines => 0xefd01a89 => 29
	i32 4105002889, ; 126: Mono.Security.dll => 0xf4ad5f89 => 63
	i32 4151237749, ; 127: System.Core => 0xf76edc75 => 27
	i32 4222138002, ; 128: MediaBrowser.Common.dll => 0xfba8b692 => 8
	i32 4260525087 ; 129: System.Buffers => 0xfdf2741f => 26
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [130 x i32] [
	i32 59, i32 12, i32 53, i32 50, i32 62, i32 34, i32 30, i32 44, ; 0..7
	i32 18, i32 9, i32 52, i32 42, i32 11, i32 28, i32 24, i32 40, ; 8..15
	i32 33, i32 21, i32 16, i32 1, i32 13, i32 59, i32 12, i32 44, ; 16..23
	i32 5, i32 49, i32 36, i32 56, i32 46, i32 28, i32 17, i32 41, ; 24..31
	i32 61, i32 49, i32 9, i32 38, i32 31, i32 57, i32 35, i32 20, ; 32..39
	i32 4, i32 15, i32 47, i32 3, i32 58, i32 15, i32 18, i32 37, ; 40..47
	i32 29, i32 50, i32 27, i32 42, i32 47, i32 58, i32 52, i32 57, ; 48..55
	i32 25, i32 26, i32 46, i32 0, i32 45, i32 0, i32 43, i32 19, ; 56..63
	i32 54, i32 55, i32 3, i32 23, i32 48, i32 21, i32 22, i32 54, ; 64..71
	i32 60, i32 16, i32 6, i32 7, i32 62, i32 8, i32 34, i32 35, ; 72..79
	i32 53, i32 51, i32 25, i32 38, i32 32, i32 51, i32 13, i32 22, ; 80..87
	i32 20, i32 11, i32 41, i32 7, i32 5, i32 4, i32 64, i32 2, ; 88..95
	i32 63, i32 37, i32 64, i32 23, i32 14, i32 40, i32 2, i32 43, ; 96..103
	i32 17, i32 39, i32 6, i32 48, i32 31, i32 61, i32 32, i32 10, ; 104..111
	i32 33, i32 55, i32 56, i32 45, i32 60, i32 10, i32 1, i32 19, ; 112..119
	i32 30, i32 14, i32 39, i32 24, i32 36, i32 29, i32 63, i32 27, ; 120..127
	i32 8, i32 26 ; 128..129
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}

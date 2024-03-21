; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [276 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 77
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 107
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 15
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 101
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 91
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 91
	i32 159306688, ; 6: System.ComponentModel.Annotations => 0x97ed3c0 => 1
	i32 160529393, ; 7: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 42
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 58
	i32 166922606, ; 9: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 46
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 92
	i32 194720069, ; 11: Plugin.Messaging.Abstractions => 0xb9b3145 => 16
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 56
	i32 220171995, ; 13: System.Diagnostics.Debug => 0xd1f8edb => 127
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 72
	i32 230752869, ; 15: Microsoft.CSharp.dll => 0xdc10265 => 135
	i32 231814094, ; 16: System.Globalization => 0xdd133ce => 121
	i32 232815796, ; 17: System.Web.Services => 0xde07cb4 => 116
	i32 261689757, ; 18: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 61
	i32 278686392, ; 19: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 76
	i32 280482487, ; 20: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 70
	i32 318968648, ; 21: Xamarin.AndroidX.Activity.dll => 0x13031348 => 48
	i32 321597661, ; 22: System.Numerics => 0x132b30dd => 36
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 74
	i32 347068432, ; 24: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 23
	i32 354433784, ; 25: MediaBrowser.Model.dll => 0x15203af8 => 12
	i32 385762202, ; 26: System.Memory.dll => 0x16fe439a => 35
	i32 441335492, ; 27: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 60
	i32 442521989, ; 28: Xamarin.Essentials => 0x1a605985 => 100
	i32 442565967, ; 29: System.Collections => 0x1a61054f => 120
	i32 450948140, ; 30: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 69
	i32 459347974, ; 31: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 122
	i32 465846621, ; 32: mscorlib => 0x1bc4415d => 14
	i32 469710990, ; 33: System.dll => 0x1bff388e => 33
	i32 476646585, ; 34: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 70
	i32 486930444, ; 35: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 81
	i32 498788369, ; 36: System.ObjectModel => 0x1dbae811 => 128
	i32 514659665, ; 37: Xamarin.Android.Support.Compat => 0x1ead1551 => 46
	i32 526420162, ; 38: System.Transactions.dll => 0x1f6088c2 => 109
	i32 545304856, ; 39: System.Runtime.Extensions => 0x2080b118 => 132
	i32 555173402, ; 40: Syncfusion.SfPicker.XForms.Android => 0x2117461a => 29
	i32 605376203, ; 41: System.IO.Compression.FileSystem => 0x24154ecb => 114
	i32 627609679, ; 42: Xamarin.AndroidX.CustomView => 0x2568904f => 65
	i32 663517072, ; 43: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 97
	i32 666292255, ; 44: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 53
	i32 690569205, ; 45: System.Xml.Linq.dll => 0x29293ff5 => 41
	i32 692692150, ; 46: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 45
	i32 719061231, ; 47: Syncfusion.Core.XForms.dll => 0x2adc00ef => 26
	i32 748832960, ; 48: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 21
	i32 775507847, ; 49: System.IO.Compression => 0x2e394f87 => 113
	i32 809851609, ; 50: System.Drawing.Common.dll => 0x30455ad9 => 4
	i32 843511501, ; 51: Xamarin.AndroidX.Print => 0x3246f6cd => 88
	i32 877678880, ; 52: System.Globalization.dll => 0x34505120 => 121
	i32 902159924, ; 53: Rg.Plugins.Popup => 0x35c5de34 => 18
	i32 928116545, ; 54: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 107
	i32 955402788, ; 55: Newtonsoft.Json => 0x38f24a24 => 15
	i32 967690846, ; 56: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 74
	i32 974778368, ; 57: FormsViewGroup.dll => 0x3a19f000 => 8
	i32 975874589, ; 58: System.Xml.XDocument => 0x3a2aaa1d => 119
	i32 992768348, ; 59: System.Collections.dll => 0x3b2c715c => 120
	i32 1012816738, ; 60: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 90
	i32 1032266309, ; 61: Plugin.Messaging.dll => 0x3d872245 => 17
	i32 1035644815, ; 62: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 52
	i32 1042160112, ; 63: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 104
	i32 1044663988, ; 64: System.Linq.Expressions.dll => 0x3e444eb4 => 124
	i32 1052210849, ; 65: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 78
	i32 1098259244, ; 66: System => 0x41761b2c => 33
	i32 1175144683, ; 67: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 95
	i32 1178241025, ; 68: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 85
	i32 1204270330, ; 69: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 53
	i32 1257494309, ; 70: Plugin.Messaging.Abstractions.dll => 0x4af3d725 => 16
	i32 1267360935, ; 71: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 96
	i32 1292207520, ; 72: SQLitePCLRaw.core.dll => 0x4d0585a0 => 22
	i32 1293217323, ; 73: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 67
	i32 1324164729, ; 74: System.Linq => 0x4eed2679 => 126
	i32 1364015309, ; 75: System.IO => 0x514d38cd => 117
	i32 1365406463, ; 76: System.ServiceModel.Internals.dll => 0x516272ff => 110
	i32 1376866003, ; 77: Xamarin.AndroidX.SavedState => 0x52114ed3 => 90
	i32 1379779777, ; 78: System.Resources.ResourceManager => 0x523dc4c1 => 3
	i32 1388503655, ; 79: MediaBrowser.Model => 0x52c2e267 => 12
	i32 1395857551, ; 80: Xamarin.AndroidX.Media.dll => 0x5333188f => 82
	i32 1406073936, ; 81: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 62
	i32 1411638395, ; 82: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 38
	i32 1457743152, ; 83: System.Runtime.Extensions.dll => 0x56e36530 => 132
	i32 1460219004, ; 84: Xamarin.Forms.Xaml => 0x57092c7c => 105
	i32 1462112819, ; 85: System.IO.Compression.dll => 0x57261233 => 113
	i32 1469204771, ; 86: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 51
	i32 1516315406, ; 87: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 25
	i32 1543031311, ; 88: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 129
	i32 1550322496, ; 89: System.Reflection.Extensions.dll => 0x5c680b40 => 2
	i32 1574652163, ; 90: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 47
	i32 1582372066, ; 91: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 66
	i32 1587447679, ; 92: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 42
	i32 1592978981, ; 93: System.Runtime.Serialization.dll => 0x5ef2ee25 => 7
	i32 1604451928, ; 94: SQLiteNetExtensions => 0x5fa1fe58 => 20
	i32 1622152042, ; 95: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 80
	i32 1622358360, ; 96: System.Dynamic.Runtime => 0x60b33958 => 125
	i32 1624863272, ; 97: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 99
	i32 1636350590, ; 98: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 64
	i32 1639515021, ; 99: System.Net.Http.dll => 0x61b9038d => 6
	i32 1639986890, ; 100: System.Text.RegularExpressions => 0x61c036ca => 129
	i32 1657153582, ; 101: System.Runtime => 0x62c6282e => 39
	i32 1658241508, ; 102: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 93
	i32 1658251792, ; 103: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 106
	i32 1666713512, ; 104: SQLiteNetExtensions.dll => 0x635807a8 => 20
	i32 1670060433, ; 105: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 61
	i32 1701541528, ; 106: System.Diagnostics.Debug.dll => 0x656b7698 => 127
	i32 1711441057, ; 107: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 23
	i32 1726116996, ; 108: System.Reflection.dll => 0x66e27484 => 123
	i32 1729485958, ; 109: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 57
	i32 1746115085, ; 110: System.IO.Pipelines.dll => 0x68139a0d => 34
	i32 1765942094, ; 111: System.Reflection.Extensions => 0x6942234e => 2
	i32 1766324549, ; 112: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 92
	i32 1776026572, ; 113: System.Core.dll => 0x69dc03cc => 32
	i32 1788241197, ; 114: Xamarin.AndroidX.Fragment => 0x6a96652d => 69
	i32 1808609942, ; 115: Xamarin.AndroidX.Loader => 0x6bcd3296 => 80
	i32 1813201214, ; 116: Xamarin.Google.Android.Material => 0x6c13413e => 106
	i32 1818569960, ; 117: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 86
	i32 1824175904, ; 118: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1858542181, ; 119: System.Linq.Expressions => 0x6ec71a65 => 124
	i32 1867746548, ; 120: Xamarin.Essentials.dll => 0x6f538cf4 => 100
	i32 1878053835, ; 121: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 105
	i32 1885316902, ; 122: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 54
	i32 1900610850, ; 123: System.Resources.ResourceManager.dll => 0x71490522 => 3
	i32 1919157823, ; 124: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 83
	i32 1936121326, ; 125: Syncfusion.SfPicker.XForms.dll => 0x7366ddee => 30
	i32 2011961780, ; 126: System.Buffers.dll => 0x77ec19b4 => 31
	i32 2012836262, ; 127: Plugin.Messaging => 0x77f971a6 => 17
	i32 2019465201, ; 128: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 78
	i32 2032169805, ; 129: Ko1eca.Android => 0x7920734d => 0
	i32 2055257422, ; 130: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 75
	i32 2063717998, ; 131: Ko1eca.Android.dll => 0x7b01d66e => 0
	i32 2079903147, ; 132: System.Runtime.dll => 0x7bf8cdab => 39
	i32 2090596640, ; 133: System.Numerics.Vectors => 0x7c9bf920 => 37
	i32 2097448633, ; 134: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 71
	i32 2103459038, ; 135: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 24
	i32 2113902067, ; 136: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 102
	i32 2126786730, ; 137: Xamarin.Forms.Platform.Android => 0x7ec430aa => 103
	i32 2166116741, ; 138: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 47
	i32 2193016926, ; 139: System.ObjectModel.dll => 0x82b6c85e => 128
	i32 2201231467, ; 140: System.Net.Http => 0x8334206b => 6
	i32 2217644978, ; 141: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 95
	i32 2244775296, ; 142: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 81
	i32 2256548716, ; 143: Xamarin.AndroidX.MultiDex => 0x8680336c => 83
	i32 2261435625, ; 144: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 73
	i32 2272153315, ; 145: Syncfusion.SfPicker.Android.dll => 0x876e4ee3 => 28
	i32 2279755925, ; 146: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 89
	i32 2315684594, ; 147: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 49
	i32 2343171156, ; 148: Syncfusion.Core.XForms => 0x8ba9f454 => 26
	i32 2354730003, ; 149: Syncfusion.Licensing => 0x8c5a5413 => 27
	i32 2368005991, ; 150: System.Xml.ReaderWriter.dll => 0x8d24e767 => 130
	i32 2397082276, ; 151: Xamarin.Forms.PancakeView => 0x8ee092a4 => 102
	i32 2409053734, ; 152: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 87
	i32 2435904999, ; 153: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 108
	i32 2454642406, ; 154: System.Text.Encoding.dll => 0x924edee6 => 131
	i32 2465273461, ; 155: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 21
	i32 2465532216, ; 156: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 60
	i32 2471841756, ; 157: netstandard.dll => 0x93554fdc => 111
	i32 2475788418, ; 158: Java.Interop.dll => 0x93918882 => 9
	i32 2501346920, ; 159: System.Data.DataSetExtensions => 0x95178668 => 112
	i32 2505896520, ; 160: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 77
	i32 2516013550, ; 161: Ko1eca.dll => 0x95f751ee => 10
	i32 2562349572, ; 162: Microsoft.CSharp => 0x98ba5a04 => 135
	i32 2581819634, ; 163: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 96
	i32 2585220780, ; 164: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2616254128, ; 165: MediaBrowser.Common => 0x9bf0deb0 => 11
	i32 2620871830, ; 166: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 64
	i32 2624644809, ; 167: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 68
	i32 2633051222, ; 168: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 76
	i32 2664396074, ; 169: System.Xml.XDocument.dll => 0x9ecf752a => 119
	i32 2693849962, ; 170: System.IO.dll => 0xa090e36a => 117
	i32 2701096212, ; 171: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 93
	i32 2715334215, ; 172: System.Threading.Tasks.dll => 0xa1d8b647 => 118
	i32 2732626843, ; 173: Xamarin.AndroidX.Activity => 0xa2e0939b => 48
	i32 2737747696, ; 174: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 51
	i32 2766581644, ; 175: Xamarin.Forms.Core => 0xa4e6af8c => 101
	i32 2778768386, ; 176: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 98
	i32 2784016111, ; 177: Syncfusion.SfPicker.XForms => 0xa5f0b6ef => 30
	i32 2810250172, ; 178: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 62
	i32 2819470561, ; 179: System.Xml.dll => 0xa80db4e1 => 40
	i32 2853208004, ; 180: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 98
	i32 2855708567, ; 181: Xamarin.AndroidX.Transition => 0xaa36a797 => 94
	i32 2861816565, ; 182: Rg.Plugins.Popup.dll => 0xaa93daf5 => 18
	i32 2868557005, ; 183: Syncfusion.Licensing.dll => 0xaafab4cd => 27
	i32 2874148507, ; 184: Syncfusion.Core.XForms.Android => 0xab50069b => 25
	i32 2900621748, ; 185: System.Dynamic.Runtime.dll => 0xace3f9b4 => 125
	i32 2901442782, ; 186: System.Reflection => 0xacf080de => 123
	i32 2903344695, ; 187: System.ComponentModel.Composition => 0xad0d8637 => 115
	i32 2905242038, ; 188: mscorlib.dll => 0xad2a79b6 => 14
	i32 2916838712, ; 189: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 99
	i32 2919462931, ; 190: System.Numerics.Vectors.dll => 0xae037813 => 37
	i32 2921128767, ; 191: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 50
	i32 2978675010, ; 192: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 67
	i32 3004926665, ; 193: Ko1eca => 0xb31b8ac9 => 10
	i32 3024354802, ; 194: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 72
	i32 3044182254, ; 195: FormsViewGroup => 0xb57288ee => 8
	i32 3057625584, ; 196: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 84
	i32 3068715062, ; 197: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 43
	i32 3075834255, ; 198: System.Threading.Tasks => 0xb755818f => 118
	i32 3111772706, ; 199: System.Runtime.Serialization => 0xb979e222 => 7
	i32 3124832203, ; 200: System.Threading.Tasks.Extensions => 0xba4127cb => 137
	i32 3204380047, ; 201: System.Data.dll => 0xbefef58f => 5
	i32 3211777861, ; 202: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 66
	i32 3220365878, ; 203: System.Threading => 0xbff2e236 => 133
	i32 3247949154, ; 204: Mono.Security => 0xc197c562 => 136
	i32 3258312781, ; 205: Xamarin.AndroidX.CardView => 0xc235e84d => 57
	i32 3265893370, ; 206: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 137
	i32 3267021929, ; 207: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 55
	i32 3270722617, ; 208: Syncfusion.SfPicker.Android => 0xc2f34439 => 28
	i32 3280506390, ; 209: System.ComponentModel.Annotations.dll => 0xc3888e16 => 1
	i32 3286872994, ; 210: SQLite-net.dll => 0xc3e9b3a2 => 19
	i32 3299363146, ; 211: System.Text.Encoding => 0xc4a8494a => 131
	i32 3317135071, ; 212: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 65
	i32 3317144872, ; 213: System.Data => 0xc5b79d28 => 5
	i32 3340431453, ; 214: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 54
	i32 3346324047, ; 215: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 85
	i32 3353484488, ; 216: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 71
	i32 3360279109, ; 217: SQLitePCLRaw.core => 0xc849ca45 => 22
	i32 3362522851, ; 218: Xamarin.AndroidX.Core => 0xc86c06e3 => 63
	i32 3366347497, ; 219: Java.Interop => 0xc8a662e9 => 9
	i32 3374999561, ; 220: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 89
	i32 3395150330, ; 221: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 38
	i32 3404865022, ; 222: System.ServiceModel.Internals => 0xcaf21dfe => 110
	i32 3429136800, ; 223: System.Xml => 0xcc6479a0 => 40
	i32 3430777524, ; 224: netstandard => 0xcc7d82b4 => 111
	i32 3439690031, ; 225: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 45
	i32 3441283291, ; 226: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 68
	i32 3476120550, ; 227: Mono.Android => 0xcf3163e6 => 13
	i32 3486566296, ; 228: System.Transactions => 0xcfd0c798 => 109
	i32 3493954962, ; 229: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 59
	i32 3501239056, ; 230: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 55
	i32 3509114376, ; 231: System.Xml.Linq => 0xd128d608 => 41
	i32 3536029504, ; 232: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 103
	i32 3567349600, ; 233: System.ComponentModel.Composition.dll => 0xd4a16f60 => 115
	i32 3608519521, ; 234: System.Linq.dll => 0xd715a361 => 126
	i32 3618140916, ; 235: Xamarin.AndroidX.Preference => 0xd7a872f4 => 87
	i32 3627220390, ; 236: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 88
	i32 3632359727, ; 237: Xamarin.Forms.Platform => 0xd881692f => 104
	i32 3633644679, ; 238: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 50
	i32 3641597786, ; 239: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 75
	i32 3645089577, ; 240: System.ComponentModel.DataAnnotations => 0xd943a729 => 108
	i32 3672681054, ; 241: Mono.Android.dll => 0xdae8aa5e => 13
	i32 3676310014, ; 242: System.Web.Services.dll => 0xdb2009fe => 116
	i32 3681174138, ; 243: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 43
	i32 3682565725, ; 244: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 56
	i32 3684561358, ; 245: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 59
	i32 3689375977, ; 246: System.Drawing.Common => 0xdbe768e9 => 4
	i32 3718780102, ; 247: Xamarin.AndroidX.Annotation => 0xdda814c6 => 49
	i32 3724971120, ; 248: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 84
	i32 3754567612, ; 249: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 24
	i32 3758932259, ; 250: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 73
	i32 3786282454, ; 251: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 58
	i32 3822602673, ; 252: Xamarin.AndroidX.Media => 0xe3d849b1 => 82
	i32 3829621856, ; 253: System.Numerics.dll => 0xe4436460 => 36
	i32 3862817207, ; 254: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 44
	i32 3874897629, ; 255: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 44
	i32 3876362041, ; 256: SQLite-net => 0xe70c9739 => 19
	i32 3885922214, ; 257: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 94
	i32 3896760992, ; 258: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 63
	i32 3920810846, ; 259: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 114
	i32 3921031405, ; 260: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 97
	i32 3928044579, ; 261: System.Xml.ReaderWriter => 0xea213423 => 130
	i32 3931092270, ; 262: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 86
	i32 3945713374, ; 263: System.Data.DataSetExtensions.dll => 0xeb2ecede => 112
	i32 3949143839, ; 264: Syncfusion.SfPicker.XForms.Android.dll => 0xeb63271f => 29
	i32 3955647286, ; 265: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 52
	i32 4023392905, ; 266: System.IO.Pipelines => 0xefd01a89 => 34
	i32 4025784931, ; 267: System.Memory => 0xeff49a63 => 35
	i32 4073602200, ; 268: System.Threading.dll => 0xf2ce3c98 => 133
	i32 4105002889, ; 269: Mono.Security.dll => 0xf4ad5f89 => 136
	i32 4151237749, ; 270: System.Core => 0xf76edc75 => 32
	i32 4181436372, ; 271: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 122
	i32 4182413190, ; 272: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 79
	i32 4222138002, ; 273: MediaBrowser.Common.dll => 0xfba8b692 => 11
	i32 4260525087, ; 274: System.Buffers => 0xfdf2741f => 31
	i32 4292120959 ; 275: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 79
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [276 x i32] [
	i32 77, i32 107, i32 15, i32 101, i32 91, i32 91, i32 1, i32 42, ; 0..7
	i32 58, i32 46, i32 92, i32 16, i32 56, i32 127, i32 72, i32 135, ; 8..15
	i32 121, i32 116, i32 61, i32 76, i32 70, i32 48, i32 36, i32 74, ; 16..23
	i32 23, i32 12, i32 35, i32 60, i32 100, i32 120, i32 69, i32 122, ; 24..31
	i32 14, i32 33, i32 70, i32 81, i32 128, i32 46, i32 109, i32 132, ; 32..39
	i32 29, i32 114, i32 65, i32 97, i32 53, i32 41, i32 45, i32 26, ; 40..47
	i32 21, i32 113, i32 4, i32 88, i32 121, i32 18, i32 107, i32 15, ; 48..55
	i32 74, i32 8, i32 119, i32 120, i32 90, i32 17, i32 52, i32 104, ; 56..63
	i32 124, i32 78, i32 33, i32 95, i32 85, i32 53, i32 16, i32 96, ; 64..71
	i32 22, i32 67, i32 126, i32 117, i32 110, i32 90, i32 3, i32 12, ; 72..79
	i32 82, i32 62, i32 38, i32 132, i32 105, i32 113, i32 51, i32 25, ; 80..87
	i32 129, i32 2, i32 47, i32 66, i32 42, i32 7, i32 20, i32 80, ; 88..95
	i32 125, i32 99, i32 64, i32 6, i32 129, i32 39, i32 93, i32 106, ; 96..103
	i32 20, i32 61, i32 127, i32 23, i32 123, i32 57, i32 34, i32 2, ; 104..111
	i32 92, i32 32, i32 69, i32 80, i32 106, i32 86, i32 134, i32 124, ; 112..119
	i32 100, i32 105, i32 54, i32 3, i32 83, i32 30, i32 31, i32 17, ; 120..127
	i32 78, i32 0, i32 75, i32 0, i32 39, i32 37, i32 71, i32 24, ; 128..135
	i32 102, i32 103, i32 47, i32 128, i32 6, i32 95, i32 81, i32 83, ; 136..143
	i32 73, i32 28, i32 89, i32 49, i32 26, i32 27, i32 130, i32 102, ; 144..151
	i32 87, i32 108, i32 131, i32 21, i32 60, i32 111, i32 9, i32 112, ; 152..159
	i32 77, i32 10, i32 135, i32 96, i32 134, i32 11, i32 64, i32 68, ; 160..167
	i32 76, i32 119, i32 117, i32 93, i32 118, i32 48, i32 51, i32 101, ; 168..175
	i32 98, i32 30, i32 62, i32 40, i32 98, i32 94, i32 18, i32 27, ; 176..183
	i32 25, i32 125, i32 123, i32 115, i32 14, i32 99, i32 37, i32 50, ; 184..191
	i32 67, i32 10, i32 72, i32 8, i32 84, i32 43, i32 118, i32 7, ; 192..199
	i32 137, i32 5, i32 66, i32 133, i32 136, i32 57, i32 137, i32 55, ; 200..207
	i32 28, i32 1, i32 19, i32 131, i32 65, i32 5, i32 54, i32 85, ; 208..215
	i32 71, i32 22, i32 63, i32 9, i32 89, i32 38, i32 110, i32 40, ; 216..223
	i32 111, i32 45, i32 68, i32 13, i32 109, i32 59, i32 55, i32 41, ; 224..231
	i32 103, i32 115, i32 126, i32 87, i32 88, i32 104, i32 50, i32 75, ; 232..239
	i32 108, i32 13, i32 116, i32 43, i32 56, i32 59, i32 4, i32 49, ; 240..247
	i32 84, i32 24, i32 73, i32 58, i32 82, i32 36, i32 44, i32 44, ; 248..255
	i32 19, i32 94, i32 63, i32 114, i32 97, i32 130, i32 86, i32 112, ; 256..263
	i32 29, i32 52, i32 34, i32 35, i32 133, i32 136, i32 32, i32 122, ; 264..271
	i32 79, i32 11, i32 31, i32 79 ; 272..275
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

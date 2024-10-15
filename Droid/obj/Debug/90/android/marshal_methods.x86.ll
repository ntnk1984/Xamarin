; ModuleID = 'obj\Debug\90\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\90\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [264 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 92
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 116
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 14
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 111
	i32 57967248, ; 4: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 65
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 102
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 102
	i32 160529393, ; 7: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 30
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 77
	i32 166922606, ; 9: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 41
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 103
	i32 201930040, ; 11: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 31
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 75
	i32 219130465, ; 13: Xamarin.Android.Support.v4 => 0xd0faa61 => 60
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 87
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 129
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 91
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 85
	i32 293914992, ; 18: Xamarin.Android.Support.Transition => 0x1184c970 => 59
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 67
	i32 321597661, ; 20: System.Numerics => 0x132b30dd => 1
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 89
	i32 347068432, ; 22: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 20
	i32 385762202, ; 23: System.Memory.dll => 0x16fe439a => 25
	i32 388313361, ; 24: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 37
	i32 389971796, ; 25: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 43
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 110
	i32 450948140, ; 27: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 84
	i32 465846621, ; 28: mscorlib => 0x1bc4415d => 13
	i32 469710990, ; 29: System.dll => 0x1bff388e => 24
	i32 476646585, ; 30: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 85
	i32 486930444, ; 31: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 96
	i32 514659665, ; 32: Xamarin.Android.Support.Compat => 0x1ead1551 => 41
	i32 524864063, ; 33: Xamarin.Android.Support.Print => 0x1f48ca3f => 56
	i32 526420162, ; 34: System.Transactions.dll => 0x1f6088c2 => 124
	i32 539750087, ; 35: Xamarin.Android.Support.Design => 0x202beec7 => 48
	i32 571524804, ; 36: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 63
	i32 605376203, ; 37: System.IO.Compression.FileSystem => 0x24154ecb => 127
	i32 627609679, ; 38: Xamarin.AndroidX.CustomView => 0x2568904f => 81
	i32 663517072, ; 39: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 107
	i32 666292255, ; 40: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 71
	i32 690569205, ; 41: System.Xml.Linq.dll => 0x29293ff5 => 130
	i32 692692150, ; 42: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 38
	i32 721481609, ; 43: Microsoft.AppCenter.dll => 0x2b00ef89 => 11
	i32 748832960, ; 44: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 18
	i32 775507847, ; 45: System.IO.Compression => 0x2e394f87 => 126
	i32 801787702, ; 46: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 52
	i32 809851609, ; 47: System.Drawing.Common.dll => 0x30455ad9 => 121
	i32 843511501, ; 48: Xamarin.AndroidX.Print => 0x3246f6cd => 99
	i32 882883187, ; 49: Xamarin.Android.Support.v4.dll => 0x349fba73 => 60
	i32 898563296, ; 50: Microsoft.AppCenter.Crashes.Android.Bindings => 0x358efce0 => 9
	i32 912572698, ; 51: Xamarin.AndroidX.Biometric => 0x3664c11a => 74
	i32 916714535, ; 52: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 56
	i32 928116545, ; 53: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 116
	i32 955402788, ; 54: Newtonsoft.Json => 0x38f24a24 => 14
	i32 957807352, ; 55: Plugin.CurrentActivity => 0x3916faf8 => 15
	i32 958213972, ; 56: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 55
	i32 967690846, ; 57: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 89
	i32 974778368, ; 58: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 987342438, ; 59: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 34
	i32 1012816738, ; 60: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 101
	i32 1019578560, ; 61: TabbedPageWithNavigationPage.dll => 0x3cc588c0 => 29
	i32 1031141475, ; 62: Microsoft.AppCenter.Analytics => 0x3d75f863 => 7
	i32 1035644815, ; 63: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 70
	i32 1042160112, ; 64: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 113
	i32 1052210849, ; 65: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 93
	i32 1066173877, ; 66: Microsoft.AppCenter => 0x3f8c85b5 => 11
	i32 1077546976, ; 67: TabbedPageWithNavigationPage.Droid => 0x403a0fe0 => 0
	i32 1098167829, ; 68: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 36
	i32 1098259244, ; 69: System => 0x41761b2c => 24
	i32 1175144683, ; 70: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 105
	i32 1204270330, ; 71: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 71
	i32 1267360935, ; 72: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 106
	i32 1292207520, ; 73: SQLitePCLRaw.core.dll => 0x4d0585a0 => 19
	i32 1292763917, ; 74: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 45
	i32 1293217323, ; 75: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 83
	i32 1297413738, ; 76: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 33
	i32 1357901088, ; 77: TabbedPageWithNavigationPage.Droid.dll => 0x50efed20 => 0
	i32 1359785034, ; 78: Xamarin.Android.Support.Design.dll => 0x510cac4a => 48
	i32 1365406463, ; 79: System.ServiceModel.Internals.dll => 0x516272ff => 120
	i32 1376866003, ; 80: Xamarin.AndroidX.SavedState => 0x52114ed3 => 101
	i32 1395857551, ; 81: Xamarin.AndroidX.Media.dll => 0x5333188f => 97
	i32 1406073936, ; 82: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 78
	i32 1411638395, ; 83: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 26
	i32 1445445088, ; 84: Xamarin.Android.Support.Fragment => 0x5627bde0 => 51
	i32 1460219004, ; 85: Xamarin.Forms.Xaml => 0x57092c7c => 114
	i32 1462112819, ; 86: System.IO.Compression.dll => 0x57261233 => 126
	i32 1469204771, ; 87: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 69
	i32 1574652163, ; 88: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 44
	i32 1582372066, ; 89: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 82
	i32 1587447679, ; 90: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 30
	i32 1592978981, ; 91: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 92: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 95
	i32 1624863272, ; 93: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 109
	i32 1636350590, ; 94: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 80
	i32 1639515021, ; 95: System.Net.Http.dll => 0x61b9038d => 2
	i32 1653276212, ; 96: Microsoft.AppCenter.Android.Bindings => 0x628afe34 => 8
	i32 1657153582, ; 97: System.Runtime => 0x62c6282e => 27
	i32 1658251792, ; 98: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 115
	i32 1662014763, ; 99: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 64
	i32 1711441057, ; 100: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 20
	i32 1729485958, ; 101: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 76
	i32 1766324549, ; 102: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 103
	i32 1776026572, ; 103: System.Core.dll => 0x69dc03cc => 23
	i32 1788241197, ; 104: Xamarin.AndroidX.Fragment => 0x6a96652d => 84
	i32 1808609942, ; 105: Xamarin.AndroidX.Loader => 0x6bcd3296 => 95
	i32 1813201214, ; 106: Xamarin.Google.Android.Material => 0x6c13413e => 115
	i32 1866717392, ; 107: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 52
	i32 1867746548, ; 108: Xamarin.Essentials.dll => 0x6f538cf4 => 110
	i32 1877418711, ; 109: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 63
	i32 1878053835, ; 110: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 114
	i32 1885316902, ; 111: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 72
	i32 1908813208, ; 112: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 118
	i32 1916660109, ; 113: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 36
	i32 1919157823, ; 114: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 98
	i32 2011961780, ; 115: System.Buffers.dll => 0x77ec19b4 => 22
	i32 2019465201, ; 116: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 93
	i32 2024078044, ; 117: Microsoft.AppCenter.Analytics.dll => 0x78a4fadc => 7
	i32 2037417872, ; 118: Xamarin.Android.Support.ViewPager => 0x79708790 => 66
	i32 2044222327, ; 119: Xamarin.Android.Support.Loader => 0x79d85b77 => 53
	i32 2045425888, ; 120: Microsoft.AppCenter.Analytics.Android.Bindings => 0x79eab8e0 => 6
	i32 2055257422, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 90
	i32 2079903147, ; 122: System.Runtime.dll => 0x7bf8cdab => 27
	i32 2097448633, ; 123: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 86
	i32 2103459038, ; 124: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 21
	i32 2126786730, ; 125: Xamarin.Forms.Platform.Android => 0x7ec430aa => 112
	i32 2129483829, ; 126: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 117
	i32 2139458754, ; 127: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 50
	i32 2166116741, ; 128: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 44
	i32 2196165013, ; 129: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 65
	i32 2201231467, ; 130: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 131: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 105
	i32 2244775296, ; 132: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 96
	i32 2256548716, ; 133: Xamarin.AndroidX.MultiDex => 0x8680336c => 98
	i32 2261435625, ; 134: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 88
	i32 2279755925, ; 135: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 100
	i32 2315684594, ; 136: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 68
	i32 2330457430, ; 137: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 43
	i32 2330986192, ; 138: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 57
	i32 2373288475, ; 139: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 51
	i32 2428790861, ; 140: Plugin.Fingerprint => 0x90c4684d => 16
	i32 2440966767, ; 141: Xamarin.Android.Support.Loader.dll => 0x917e326f => 53
	i32 2465273461, ; 142: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 18
	i32 2471841756, ; 143: netstandard.dll => 0x93554fdc => 122
	i32 2475788418, ; 144: Java.Interop.dll => 0x93918882 => 5
	i32 2483946094, ; 145: Plugin.Fingerprint.dll => 0x940e026e => 16
	i32 2487632829, ; 146: Xamarin.Android.Support.DocumentFile => 0x944643bd => 49
	i32 2501346920, ; 147: System.Data.DataSetExtensions => 0x95178668 => 125
	i32 2505896520, ; 148: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 92
	i32 2526443681, ; 149: Xamarin.AndroidX.Biometric.dll => 0x969678a1 => 74
	i32 2581819634, ; 150: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 106
	i32 2620871830, ; 151: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 80
	i32 2633051222, ; 152: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 91
	i32 2697269578, ; 153: Microsoft.AppCenter.Crashes.dll => 0xa0c5114a => 10
	i32 2698266930, ; 154: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 34
	i32 2732626843, ; 155: Xamarin.AndroidX.Activity => 0xa2e0939b => 67
	i32 2737747696, ; 156: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 69
	i32 2740950957, ; 157: TabbedPageWithNavigationPage => 0xa35f97ad => 29
	i32 2751899777, ; 158: Xamarin.Android.Support.Collections => 0xa406a881 => 40
	i32 2766581644, ; 159: Xamarin.Forms.Core => 0xa4e6af8c => 111
	i32 2778768386, ; 160: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 108
	i32 2782647110, ; 161: Xamarin.Android.Support.CustomTabs.dll => 0xa5dbd346 => 46
	i32 2788639665, ; 162: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 54
	i32 2788775637, ; 163: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 58
	i32 2806986428, ; 164: Plugin.CurrentActivity.dll => 0xa74f36bc => 15
	i32 2810250172, ; 165: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 78
	i32 2819470561, ; 166: System.Xml.dll => 0xa80db4e1 => 28
	i32 2847418871, ; 167: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 117
	i32 2849962309, ; 168: Microsoft.AppCenter.Android.Bindings.dll => 0xa9def945 => 8
	i32 2853208004, ; 169: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 108
	i32 2855708567, ; 170: Xamarin.AndroidX.Transition => 0xaa36a797 => 104
	i32 2876493027, ; 171: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 58
	i32 2893257763, ; 172: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 31
	i32 2903344695, ; 173: System.ComponentModel.Composition => 0xad0d8637 => 128
	i32 2905242038, ; 174: mscorlib.dll => 0xad2a79b6 => 13
	i32 2916838712, ; 175: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 109
	i32 2921692953, ; 176: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 47
	i32 2922925221, ; 177: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 64
	i32 2978675010, ; 178: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 83
	i32 3024354802, ; 179: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 87
	i32 3037436946, ; 180: Microsoft.AppCenter.Analytics.Android.Bindings.dll => 0xb50b9c12 => 6
	i32 3044182254, ; 181: FormsViewGroup => 0xb57288ee => 4
	i32 3056250942, ; 182: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 39
	i32 3058099980, ; 183: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 119
	i32 3068715062, ; 184: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 32
	i32 3092211740, ; 185: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 55
	i32 3111772706, ; 186: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3191408315, ; 187: Xamarin.Android.Support.CustomTabs => 0xbe3906bb => 46
	i32 3204380047, ; 188: System.Data.dll => 0xbefef58f => 123
	i32 3204912593, ; 189: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 39
	i32 3211777861, ; 190: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 82
	i32 3230466174, ; 191: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 118
	i32 3233339011, ; 192: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 33
	i32 3247949154, ; 193: Mono.Security => 0xc197c562 => 131
	i32 3258312781, ; 194: Xamarin.AndroidX.CardView => 0xc235e84d => 76
	i32 3267021929, ; 195: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 73
	i32 3286872994, ; 196: SQLite-net.dll => 0xc3e9b3a2 => 17
	i32 3296380511, ; 197: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 40
	i32 3317135071, ; 198: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 81
	i32 3317144872, ; 199: System.Data => 0xc5b79d28 => 123
	i32 3321585405, ; 200: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 49
	i32 3340431453, ; 201: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 72
	i32 3352662376, ; 202: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 42
	i32 3353484488, ; 203: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 86
	i32 3357663996, ; 204: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 45
	i32 3360279109, ; 205: SQLitePCLRaw.core => 0xc849ca45 => 19
	i32 3362522851, ; 206: Xamarin.AndroidX.Core => 0xc86c06e3 => 79
	i32 3366347497, ; 207: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 208: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 100
	i32 3395150330, ; 209: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 26
	i32 3404865022, ; 210: System.ServiceModel.Internals => 0xcaf21dfe => 120
	i32 3429136800, ; 211: System.Xml => 0xcc6479a0 => 28
	i32 3430777524, ; 212: netstandard => 0xcc7d82b4 => 122
	i32 3439690031, ; 213: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 38
	i32 3476120550, ; 214: Mono.Android => 0xcf3163e6 => 12
	i32 3486566296, ; 215: System.Transactions => 0xcfd0c798 => 124
	i32 3498942916, ; 216: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 62
	i32 3501239056, ; 217: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 73
	i32 3509114376, ; 218: System.Xml.Linq => 0xd128d608 => 130
	i32 3536029504, ; 219: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 112
	i32 3547625832, ; 220: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 57
	i32 3567349600, ; 221: System.ComponentModel.Composition.dll => 0xd4a16f60 => 128
	i32 3627220390, ; 222: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 99
	i32 3632359727, ; 223: Xamarin.Forms.Platform => 0xd881692f => 113
	i32 3641597786, ; 224: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 90
	i32 3664423555, ; 225: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 66
	i32 3672681054, ; 226: Mono.Android.dll => 0xdae8aa5e => 12
	i32 3676310014, ; 227: System.Web.Services.dll => 0xdb2009fe => 129
	i32 3678221644, ; 228: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 61
	i32 3681174138, ; 229: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 32
	i32 3682565725, ; 230: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 75
	i32 3689375977, ; 231: System.Drawing.Common => 0xdbe768e9 => 121
	i32 3714038699, ; 232: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 54
	i32 3718463572, ; 233: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 37
	i32 3718780102, ; 234: Xamarin.AndroidX.Annotation => 0xdda814c6 => 68
	i32 3754567612, ; 235: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 21
	i32 3758932259, ; 236: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 88
	i32 3776062606, ; 237: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 50
	i32 3786282454, ; 238: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 77
	i32 3822602673, ; 239: Xamarin.AndroidX.Media => 0xe3d849b1 => 97
	i32 3829621856, ; 240: System.Numerics.dll => 0xe4436460 => 1
	i32 3832731800, ; 241: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 42
	i32 3862817207, ; 242: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 35
	i32 3869245228, ; 243: Microsoft.AppCenter.Crashes.Android.Bindings.dll => 0xe69fff2c => 9
	i32 3874897629, ; 244: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 35
	i32 3876362041, ; 245: SQLite-net => 0xe70c9739 => 17
	i32 3883175360, ; 246: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 61
	i32 3885922214, ; 247: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 104
	i32 3896760992, ; 248: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 79
	i32 3920810846, ; 249: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 127
	i32 3921031405, ; 250: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 107
	i32 3945713374, ; 251: System.Data.DataSetExtensions.dll => 0xeb2ecede => 125
	i32 3955647286, ; 252: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 70
	i32 3970018735, ; 253: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 119
	i32 4025784931, ; 254: System.Memory => 0xeff49a63 => 25
	i32 4063435586, ; 255: Xamarin.Android.Support.CustomView => 0xf2331b42 => 47
	i32 4105002889, ; 256: Mono.Security.dll => 0xf4ad5f89 => 131
	i32 4146307099, ; 257: Microsoft.AppCenter.Crashes => 0xf723a01b => 10
	i32 4151237749, ; 258: System.Core => 0xf76edc75 => 23
	i32 4182413190, ; 259: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 94
	i32 4216993138, ; 260: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 59
	i32 4219003402, ; 261: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 62
	i32 4260525087, ; 262: System.Buffers => 0xfdf2741f => 22
	i32 4292120959 ; 263: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 94
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [264 x i32] [
	i32 92, i32 116, i32 14, i32 111, i32 65, i32 102, i32 102, i32 30, ; 0..7
	i32 77, i32 41, i32 103, i32 31, i32 75, i32 60, i32 87, i32 129, ; 8..15
	i32 91, i32 85, i32 59, i32 67, i32 1, i32 89, i32 20, i32 25, ; 16..23
	i32 37, i32 43, i32 110, i32 84, i32 13, i32 24, i32 85, i32 96, ; 24..31
	i32 41, i32 56, i32 124, i32 48, i32 63, i32 127, i32 81, i32 107, ; 32..39
	i32 71, i32 130, i32 38, i32 11, i32 18, i32 126, i32 52, i32 121, ; 40..47
	i32 99, i32 60, i32 9, i32 74, i32 56, i32 116, i32 14, i32 15, ; 48..55
	i32 55, i32 89, i32 4, i32 34, i32 101, i32 29, i32 7, i32 70, ; 56..63
	i32 113, i32 93, i32 11, i32 0, i32 36, i32 24, i32 105, i32 71, ; 64..71
	i32 106, i32 19, i32 45, i32 83, i32 33, i32 0, i32 48, i32 120, ; 72..79
	i32 101, i32 97, i32 78, i32 26, i32 51, i32 114, i32 126, i32 69, ; 80..87
	i32 44, i32 82, i32 30, i32 3, i32 95, i32 109, i32 80, i32 2, ; 88..95
	i32 8, i32 27, i32 115, i32 64, i32 20, i32 76, i32 103, i32 23, ; 96..103
	i32 84, i32 95, i32 115, i32 52, i32 110, i32 63, i32 114, i32 72, ; 104..111
	i32 118, i32 36, i32 98, i32 22, i32 93, i32 7, i32 66, i32 53, ; 112..119
	i32 6, i32 90, i32 27, i32 86, i32 21, i32 112, i32 117, i32 50, ; 120..127
	i32 44, i32 65, i32 2, i32 105, i32 96, i32 98, i32 88, i32 100, ; 128..135
	i32 68, i32 43, i32 57, i32 51, i32 16, i32 53, i32 18, i32 122, ; 136..143
	i32 5, i32 16, i32 49, i32 125, i32 92, i32 74, i32 106, i32 80, ; 144..151
	i32 91, i32 10, i32 34, i32 67, i32 69, i32 29, i32 40, i32 111, ; 152..159
	i32 108, i32 46, i32 54, i32 58, i32 15, i32 78, i32 28, i32 117, ; 160..167
	i32 8, i32 108, i32 104, i32 58, i32 31, i32 128, i32 13, i32 109, ; 168..175
	i32 47, i32 64, i32 83, i32 87, i32 6, i32 4, i32 39, i32 119, ; 176..183
	i32 32, i32 55, i32 3, i32 46, i32 123, i32 39, i32 82, i32 118, ; 184..191
	i32 33, i32 131, i32 76, i32 73, i32 17, i32 40, i32 81, i32 123, ; 192..199
	i32 49, i32 72, i32 42, i32 86, i32 45, i32 19, i32 79, i32 5, ; 200..207
	i32 100, i32 26, i32 120, i32 28, i32 122, i32 38, i32 12, i32 124, ; 208..215
	i32 62, i32 73, i32 130, i32 112, i32 57, i32 128, i32 99, i32 113, ; 216..223
	i32 90, i32 66, i32 12, i32 129, i32 61, i32 32, i32 75, i32 121, ; 224..231
	i32 54, i32 37, i32 68, i32 21, i32 88, i32 50, i32 77, i32 97, ; 232..239
	i32 1, i32 42, i32 35, i32 9, i32 35, i32 17, i32 61, i32 104, ; 240..247
	i32 79, i32 127, i32 107, i32 125, i32 70, i32 119, i32 25, i32 47, ; 248..255
	i32 131, i32 10, i32 23, i32 94, i32 59, i32 62, i32 22, i32 94 ; 264..263
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}

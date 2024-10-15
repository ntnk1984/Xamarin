; ModuleID = 'obj\Debug\90\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\90\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [264 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 12
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 77
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 101
	i64 295915112840604065, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 102
	i64 533980546060132701, ; 4: Microsoft.AppCenter.Analytics.dll => 0x769147a3ce2215d => 7
	i64 590536689428908136, ; 5: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x83201fd803ec868 => 36
	i64 634308326490598313, ; 6: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 92
	i64 687654259221141486, ; 7: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 117
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 121
	i64 720058930071658100, ; 9: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 86
	i64 816102801403336439, ; 10: Xamarin.Android.Support.Collections => 0xb53612c89d8d6f7 => 40
	i64 822256607215579516, ; 11: Microsoft.AppCenter.Analytics.Android.Bindings.dll => 0xb693e071b4d717c => 6
	i64 846634227898301275, ; 12: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0xbbfd9583890bb5b => 33
	i64 870603111519317375, ; 13: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 20
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 83
	i64 940822596282819491, ; 15: System.Transactions => 0xd0e792aa81923a3 => 124
	i64 996343623809489702, ; 16: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 113
	i64 1000557547492888992, ; 17: Mono.Security.dll => 0xde2b1c9cba651a0 => 131
	i64 1120440138749646132, ; 18: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 115
	i64 1301485588176585670, ; 19: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 19
	i64 1315114680217950157, ; 20: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 71
	i64 1342439039765371018, ; 21: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 51
	i64 1425944114962822056, ; 22: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1490981186906623721, ; 23: Xamarin.Android.Support.VersionedParcelable => 0x14b1077d6c5c0ee9 => 65
	i64 1518315023656898250, ; 24: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 21
	i64 1624659445732251991, ; 25: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 69
	i64 1628611045998245443, ; 26: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 94
	i64 1636321030536304333, ; 27: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 87
	i64 1731380447121279447, ; 28: Newtonsoft.Json => 0x18071957e9b889d7 => 14
	i64 1743969030606105336, ; 29: System.Memory.dll => 0x1833d297e88f2af8 => 25
	i64 1744702963312407042, ; 30: Xamarin.Android.Support.v7.AppCompat => 0x18366e19eeceb202 => 61
	i64 1795316252682057001, ; 31: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 70
	i64 1836611346387731153, ; 32: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 101
	i64 1860886102525309849, ; 33: Xamarin.Android.Support.v7.RecyclerView.dll => 0x19d3320d047b7399 => 63
	i64 1875917498431009007, ; 34: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 68
	i64 1938067011858688285, ; 35: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 60
	i64 1981742497975770890, ; 36: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 93
	i64 2133195048986300728, ; 37: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 14
	i64 2136356949452311481, ; 38: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 98
	i64 2165725771938924357, ; 39: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 75
	i64 2197658138908603915, ; 40: Microsoft.AppCenter.Android.Bindings.dll => 0x1e7fa66f0364b60b => 8
	i64 2262844636196693701, ; 41: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 83
	i64 2284400282711631002, ; 42: System.Web.Services => 0x1fb3d1f42fd4249a => 129
	i64 2329709569556905518, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 90
	i64 2337758774805907496, ; 44: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 26
	i64 2470498323731680442, ; 45: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 78
	i64 2479423007379663237, ; 46: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 105
	i64 2497223385847772520, ; 47: System.Runtime => 0x22a7eb7046413568 => 27
	i64 2547086958574651984, ; 48: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 67
	i64 2592350477072141967, ; 49: System.Xml.dll => 0x23f9e10627330e8f => 28
	i64 2624866290265602282, ; 50: mscorlib.dll => 0x246d65fbde2db8ea => 13
	i64 2749910993029543237, ; 51: Microsoft.AppCenter.Crashes => 0x2629a57a7f77b545 => 10
	i64 2783046991838674048, ; 52: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 26
	i64 2801558180824670388, ; 53: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 15
	i64 2949706848458024531, ; 54: Xamarin.Android.Support.SlidingPaneLayout => 0x28ef76c01de0a653 => 57
	i64 2960931600190307745, ; 55: Xamarin.Forms.Core => 0x2917579a49927da1 => 111
	i64 2977248461349026546, ; 56: Xamarin.Android.Support.DrawerLayout => 0x29514fb392c97af2 => 50
	i64 3017704767998173186, ; 57: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 115
	i64 3022227708164871115, ; 58: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 55
	i64 3289520064315143713, ; 59: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 89
	i64 3411255996856937470, ; 60: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 118
	i64 3522470458906976663, ; 61: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 103
	i64 3531994851595924923, ; 62: System.Numerics => 0x31042a9aade235bb => 1
	i64 3571415421602489686, ; 63: System.Runtime.dll => 0x319037675df7e556 => 27
	i64 3609787854626478660, ; 64: Plugin.CurrentActivity => 0x32188aeda587da44 => 15
	i64 3716579019761409177, ; 65: netstandard.dll => 0x3393f0ed5c8c5c99 => 122
	i64 3727469159507183293, ; 66: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 100
	i64 3955305636023511547, ; 67: Microsoft.AppCenter.Crashes.Android.Bindings.dll => 0x36e41185154829fb => 9
	i64 3966267475168208030, ; 68: System.Memory => 0x370b03412596249e => 25
	i64 4247996603072512073, ; 69: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 119
	i64 4252163538099460320, ; 70: Xamarin.Android.Support.ViewPager.dll => 0x3b02b8357f4958e0 => 66
	i64 4264996749430196783, ; 71: Xamarin.Android.Support.Transition.dll => 0x3b304ff259fb8a2f => 59
	i64 4326933140005261798, ; 72: Xamarin.AndroidX.Biometric => 0x3c0c5ac408e111e6 => 74
	i64 4337444564132831293, ; 73: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 18
	i64 4349341163892612332, ; 74: Xamarin.Android.Support.DocumentFile => 0x3c5bf6bea8cd9cec => 49
	i64 4416987920449902723, ; 75: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0x3d4c4b1c879b9883 => 39
	i64 4525561845656915374, ; 76: System.ServiceModel.Internals => 0x3ece06856b710dae => 120
	i64 4636684751163556186, ; 77: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 107
	i64 4782108999019072045, ; 78: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 73
	i64 4794310189461587505, ; 79: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 67
	i64 4795410492532947900, ; 80: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 103
	i64 4841234827713643511, ; 81: Xamarin.Android.Support.CoordinaterLayout => 0x432f856d041f03f7 => 42
	i64 4963205065368577818, ; 82: Xamarin.Android.Support.LocalBroadcastManager.dll => 0x44e0d8b5f4b6a71a => 54
	i64 5142919913060024034, ; 83: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 112
	i64 5178572682164047940, ; 84: Xamarin.Android.Support.Print.dll => 0x47ddfc6acbee1044 => 56
	i64 5203618020066742981, ; 85: Xamarin.Essentials => 0x4836f704f0e652c5 => 110
	i64 5205316157927637098, ; 86: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 96
	i64 5288341611614403055, ; 87: Xamarin.Android.Support.Interpolator.dll => 0x4963f6ad4b3179ef => 52
	i64 5348796042099802469, ; 88: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 97
	i64 5376510917114486089, ; 89: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 105
	i64 5408338804355907810, ; 90: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 104
	i64 5439315836349573567, ; 91: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0x4b7c54ef36c5e9bf => 37
	i64 5507995362134886206, ; 92: System.Core.dll => 0x4c705499688c873e => 23
	i64 5619971803549996551, ; 93: Microsoft.AppCenter => 0x4dfe2694564f1607 => 11
	i64 5692067934154308417, ; 94: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 109
	i64 5767696078500135884, ; 95: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 38
	i64 5896680224035167651, ; 96: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 91
	i64 5974002045223400615, ; 97: Plugin.Fingerprint => 0x52e7eb3560ff74a7 => 16
	i64 6044705416426755068, ; 98: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0x53e31b8ccdff13fc => 58
	i64 6085203216496545422, ; 99: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 113
	i64 6086316965293125504, ; 100: FormsViewGroup.dll => 0x5476f10882baef80 => 4
	i64 6183170893902868313, ; 101: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 18
	i64 6311200438583329442, ; 102: Xamarin.Android.Support.LocalBroadcastManager => 0x5795e35c580c82a2 => 54
	i64 6319713645133255417, ; 103: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 92
	i64 6401687960814735282, ; 104: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 90
	i64 6405879832841858445, ; 105: Xamarin.Android.Support.Vector.Drawable.dll => 0x58e641c4a660ad8d => 64
	i64 6504860066809920875, ; 106: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 75
	i64 6548213210057960872, ; 107: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 81
	i64 6588599331800941662, ; 108: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 60
	i64 6591024623626361694, ; 109: System.Web.Services.dll => 0x5b7805f9751a1b5e => 129
	i64 6659513131007730089, ; 110: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 86
	i64 6876862101832370452, ; 111: System.Xml.Linq => 0x5f6f85a57d108914 => 130
	i64 7036436454368433159, ; 112: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 88
	i64 7103753931438454322, ; 113: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 85
	i64 7194160955514091247, ; 114: Xamarin.Android.Support.CursorAdapter.dll => 0x63d6cb45d266f6ef => 45
	i64 7291284685109936435, ; 115: Microsoft.AppCenter.Analytics => 0x652fd8ca4c394133 => 7
	i64 7488575175965059935, ; 116: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 130
	i64 7635363394907363464, ; 117: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 111
	i64 7637365915383206639, ; 118: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 110
	i64 7654504624184590948, ; 119: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7820441508502274321, ; 120: System.Data => 0x6c87ca1e14ff8111 => 123
	i64 7821246742157274664, ; 121: Xamarin.Android.Support.AsyncLayoutInflater => 0x6c8aa67926f72e28 => 39
	i64 7836164640616011524, ; 122: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 69
	i64 7879037620440914030, ; 123: Xamarin.Android.Support.v7.AppCompat.dll => 0x6d57f6f88a51d86e => 61
	i64 8044118961405839122, ; 124: System.ComponentModel.Composition => 0x6fa2739369944712 => 128
	i64 8083354569033831015, ; 125: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 89
	i64 8101777744205214367, ; 126: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 38
	i64 8103644804370223335, ; 127: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 125
	i64 8167236081217502503, ; 128: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 5
	i64 8196541262927413903, ; 129: Xamarin.Android.Support.Interpolator => 0x71bff6d9fb9ec28f => 52
	i64 8385935383968044654, ; 130: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 35
	i64 8601935802264776013, ; 131: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 104
	i64 8626175481042262068, ; 132: Java.Interop => 0x77b654e585b55834 => 5
	i64 8684531736582871431, ; 133: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 127
	i64 8796457469147618732, ; 134: Xamarin.Android.Support.CustomTabs => 0x7a134b766a601dac => 46
	i64 8808820144457481518, ; 135: Xamarin.Android.Support.Loader.dll => 0x7a3f374010b17d2e => 53
	i64 8917102979740339192, ; 136: Xamarin.Android.Support.DocumentFile.dll => 0x7bbfe9ea4d000bf8 => 49
	i64 8993654158805391712, ; 137: TabbedPageWithNavigationPage.dll => 0x7ccfe0ce984f5960 => 29
	i64 9225306208233460162, ; 138: TabbedPageWithNavigationPage => 0x8006df1e5df611c2 => 29
	i64 9312692141327339315, ; 139: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 109
	i64 9324707631942237306, ; 140: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 70
	i64 9454421848202774650, ; 141: TabbedPageWithNavigationPage.Droid.dll => 0x8334da944ad1887a => 0
	i64 9475595603812259686, ; 142: Xamarin.Android.Support.Design => 0x838013ff707b9766 => 48
	i64 9662334977499516867, ; 143: System.Numerics.dll => 0x8617827802b0cfc3 => 1
	i64 9678050649315576968, ; 144: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 78
	i64 9711637524876806384, ; 145: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 97
	i64 9808709177481450983, ; 146: Mono.Android.dll => 0x881f890734e555e7 => 12
	i64 9834056768316610435, ; 147: System.Transactions.dll => 0x8879968718899783 => 124
	i64 9866412715007501892, ; 148: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 32
	i64 9875200773399460291, ; 149: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 117
	i64 9998632235833408227, ; 150: Mono.Security => 0x8ac2470b209ebae3 => 131
	i64 10038780035334861115, ; 151: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10229024438826829339, ; 152: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 81
	i64 10303855825347935641, ; 153: Xamarin.Android.Support.Loader => 0x8efea647eeb3fd99 => 53
	i64 10318047534812931528, ; 154: Xamarin.AndroidX.Biometric.dll => 0x8f311190c81ea5c8 => 74
	i64 10363495123250631811, ; 155: Xamarin.Android.Support.Collections.dll => 0x8fd287e80cd8d483 => 40
	i64 10430153318873392755, ; 156: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 79
	i64 10635644668885628703, ; 157: Xamarin.Android.Support.DrawerLayout.dll => 0x93996679ee34771f => 50
	i64 10847732767863316357, ; 158: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 71
	i64 10850923258212604222, ; 159: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 35
	i64 10913891249535884439, ; 160: Xamarin.Android.Support.CustomTabs.dll => 0x9775ee4465d49c97 => 46
	i64 11023048688141570732, ; 161: System.Core => 0x98f9bc61168392ac => 23
	i64 11037814507248023548, ; 162: System.Xml => 0x992e31d0412bf7fc => 28
	i64 11162124722117608902, ; 163: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 108
	i64 11340910727871153756, ; 164: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 80
	i64 11376461258732682436, ; 165: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 41
	i64 11392833485892708388, ; 166: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 99
	i64 11395105072750394936, ; 167: Xamarin.Android.Support.v7.CardView => 0x9e238bb09789fe38 => 62
	i64 11472067811128429120, ; 168: Microsoft.AppCenter.Crashes.Android.Bindings => 0x9f34f8e48180ca40 => 9
	i64 11529969570048099689, ; 169: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 108
	i64 11578238080964724296, ; 170: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 88
	i64 11580057168383206117, ; 171: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 68
	i64 11597940890313164233, ; 172: netstandard => 0xa0f429ca8d1805c9 => 122
	i64 11672361001936329215, ; 173: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 85
	i64 11739066727115742305, ; 174: SQLite-net.dll => 0xa2e98afdf8575c61 => 17
	i64 11806260347154423189, ; 175: SQLite-net => 0xa3d8433bc5eb5d95 => 17
	i64 11834399401546345650, ; 176: Xamarin.Android.Support.SlidingPaneLayout.dll => 0xa43c3b8deb43ecb2 => 57
	i64 11854093697108963210, ; 177: Microsoft.AppCenter.Crashes.dll => 0xa48233696e606f8a => 10
	i64 11865714326292153359, ; 178: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa4ab7c5000e8440f => 34
	i64 12102847907131387746, ; 179: System.Buffers => 0xa7f5f40c43256f62 => 22
	i64 12137774235383566651, ; 180: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 106
	i64 12250081775278992142, ; 181: Microsoft.AppCenter.Analytics.Android.Bindings => 0xaa0108788cfdab0e => 6
	i64 12263794765274154115, ; 182: Microsoft.AppCenter.dll => 0xaa31c05cd6760483 => 11
	i64 12279246230491828964, ; 183: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 21
	i64 12388767885335911387, ; 184: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0xabedbec0d236dbdb => 34
	i64 12414299427252656003, ; 185: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 41
	i64 12451044538927396471, ; 186: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 84
	i64 12466513435562512481, ; 187: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 95
	i64 12487638416075308985, ; 188: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 82
	i64 12538491095302438457, ; 189: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 76
	i64 12550732019250633519, ; 190: System.IO.Compression => 0xae2d28465e8e1b2f => 126
	i64 12559163541709922900, ; 191: Xamarin.Android.Support.v7.CardView.dll => 0xae4b1cb32ba82254 => 62
	i64 12700543734426720211, ; 192: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 77
	i64 12952608645614506925, ; 193: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 44
	i64 12963446364377008305, ; 194: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 121
	i64 13358059602087096138, ; 195: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 51
	i64 13370592475155966277, ; 196: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13401370062847626945, ; 197: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 106
	i64 13454009404024712428, ; 198: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 116
	i64 13491513212026656886, ; 199: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 72
	i64 13572454107664307259, ; 200: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 100
	i64 13629449975987305271, ; 201: Microsoft.AppCenter.Android.Bindings => 0xbd25888a8eadfb37 => 8
	i64 13647894001087880694, ; 202: System.Data.dll => 0xbd670f48cb071df6 => 123
	i64 13959074834287824816, ; 203: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 84
	i64 13967638549803255703, ; 204: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 112
	i64 14124974489674258913, ; 205: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 76
	i64 14172845254133543601, ; 206: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 98
	i64 14261073672896646636, ; 207: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 99
	i64 14369828458497533121, ; 208: Xamarin.Android.Support.Vector.Drawable => 0xc76be2d9300b64c1 => 64
	i64 14400856865250966808, ; 209: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 43
	i64 14486659737292545672, ; 210: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 91
	i64 14644440854989303794, ; 211: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 96
	i64 14661790646341542033, ; 212: Xamarin.Android.Support.SwipeRefreshLayout => 0xcb7924e94e552091 => 58
	i64 14792063746108907174, ; 213: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 116
	i64 14852515768018889994, ; 214: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 80
	i64 14987728460634540364, ; 215: System.IO.Compression.dll => 0xcfff1ba06622494c => 126
	i64 14988210264188246988, ; 216: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 82
	i64 15188640517174936311, ; 217: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 30
	i64 15246441518555807158, ; 218: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 30
	i64 15326820765897713587, ; 219: Xamarin.Android.Arch.Core.Runtime.dll => 0xd4b3ce481769e7b3 => 31
	i64 15370334346939861994, ; 220: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 79
	i64 15398343137656162564, ; 221: TabbedPageWithNavigationPage.Droid => 0xd5b1e77ff191c904 => 0
	i64 15418891414777631748, ; 222: Xamarin.Android.Support.Transition => 0xd5fae80c88241404 => 59
	i64 15457813392950723921, ; 223: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 55
	i64 15540815214206815676, ; 224: Plugin.Fingerprint.dll => 0xd7ac11193ac88dbc => 16
	i64 15568534730848034786, ; 225: Xamarin.Android.Support.VersionedParcelable.dll => 0xd80e8bda21875fe2 => 65
	i64 15582737692548360875, ; 226: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 94
	i64 15609085926864131306, ; 227: System.dll => 0xd89e9cf3334914ea => 24
	i64 15777549416145007739, ; 228: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 102
	i64 15810740023422282496, ; 229: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 114
	i64 15930129725311349754, ; 230: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 119
	i64 16154507427712707110, ; 231: System => 0xe03056ea4e39aa26 => 24
	i64 16242842420508142678, ; 232: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe16a2b1f8908ac56 => 42
	i64 16565028646146589191, ; 233: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 128
	i64 16755018182064898362, ; 234: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 19
	i64 16767985610513713374, ; 235: Xamarin.Android.Arch.Core.Runtime => 0xe8b3da12798808de => 31
	i64 16822611501064131242, ; 236: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 125
	i64 16833383113903931215, ; 237: mscorlib => 0xe99c30c1484d7f4f => 13
	i64 16932527889823454152, ; 238: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 44
	i64 17009591894298689098, ; 239: Xamarin.Android.Support.Animated.Vector.Drawable => 0xec0e35b50a097e4a => 37
	i64 17037200463775726619, ; 240: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 87
	i64 17383232329670771222, ; 241: Xamarin.Android.Support.CustomView.dll => 0xf13da5b41a1cc216 => 47
	i64 17428701562824544279, ; 242: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 43
	i64 17483646997724851973, ; 243: Xamarin.Android.Support.ViewPager => 0xf2a2644fe5b6ef05 => 66
	i64 17524135665394030571, ; 244: Xamarin.Android.Support.Print => 0xf3323c8a739097eb => 56
	i64 17544493274320527064, ; 245: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 73
	i64 17666959971718154066, ; 246: Xamarin.Android.Support.CustomView => 0xf52da67d9f4e4752 => 47
	i64 17704177640604968747, ; 247: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 95
	i64 17710060891934109755, ; 248: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 93
	i64 17760961058993581169, ; 249: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 32
	i64 17838668724098252521, ; 250: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 22
	i64 17841643939744178149, ; 251: Xamarin.Android.Arch.Lifecycle.ViewModel => 0xf79a40a25573dfe5 => 36
	i64 17882897186074144999, ; 252: FormsViewGroup => 0xf82cd03e3ac830e7 => 4
	i64 17892495832318972303, ; 253: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 114
	i64 17928294245072900555, ; 254: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 127
	i64 17936749993673010118, ; 255: Xamarin.Android.Support.Design.dll => 0xf8ec231615deabc6 => 48
	i64 17958105683855786126, ; 256: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xf93801f92d25c08e => 33
	i64 17986907704309214542, ; 257: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 118
	i64 18090425465832348288, ; 258: Xamarin.Android.Support.v7.RecyclerView => 0xfb0e1a1d2e9e1a80 => 63
	i64 18116111925905154859, ; 259: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 72
	i64 18129453464017766560, ; 260: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 120
	i64 18301997741680159453, ; 261: Xamarin.Android.Support.CursorAdapter => 0xfdfdc1fa58d8eadd => 45
	i64 18370042311372477656, ; 262: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 20
	i64 18380184030268848184 ; 263: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 107
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [264 x i32] [
	i32 12, i32 77, i32 101, i32 102, i32 7, i32 36, i32 92, i32 117, ; 0..7
	i32 121, i32 86, i32 40, i32 6, i32 33, i32 20, i32 83, i32 124, ; 8..15
	i32 113, i32 131, i32 115, i32 19, i32 71, i32 51, i32 3, i32 65, ; 16..23
	i32 21, i32 69, i32 94, i32 87, i32 14, i32 25, i32 61, i32 70, ; 24..31
	i32 101, i32 63, i32 68, i32 60, i32 93, i32 14, i32 98, i32 75, ; 32..39
	i32 8, i32 83, i32 129, i32 90, i32 26, i32 78, i32 105, i32 27, ; 40..47
	i32 67, i32 28, i32 13, i32 10, i32 26, i32 15, i32 57, i32 111, ; 48..55
	i32 50, i32 115, i32 55, i32 89, i32 118, i32 103, i32 1, i32 27, ; 56..63
	i32 15, i32 122, i32 100, i32 9, i32 25, i32 119, i32 66, i32 59, ; 64..71
	i32 74, i32 18, i32 49, i32 39, i32 120, i32 107, i32 73, i32 67, ; 72..79
	i32 103, i32 42, i32 54, i32 112, i32 56, i32 110, i32 96, i32 52, ; 80..87
	i32 97, i32 105, i32 104, i32 37, i32 23, i32 11, i32 109, i32 38, ; 88..95
	i32 91, i32 16, i32 58, i32 113, i32 4, i32 18, i32 54, i32 92, ; 96..103
	i32 90, i32 64, i32 75, i32 81, i32 60, i32 129, i32 86, i32 130, ; 104..111
	i32 88, i32 85, i32 45, i32 7, i32 130, i32 111, i32 110, i32 2, ; 112..119
	i32 123, i32 39, i32 69, i32 61, i32 128, i32 89, i32 38, i32 125, ; 120..127
	i32 5, i32 52, i32 35, i32 104, i32 5, i32 127, i32 46, i32 53, ; 128..135
	i32 49, i32 29, i32 29, i32 109, i32 70, i32 0, i32 48, i32 1, ; 136..143
	i32 78, i32 97, i32 12, i32 124, i32 32, i32 117, i32 131, i32 2, ; 144..151
	i32 81, i32 53, i32 74, i32 40, i32 79, i32 50, i32 71, i32 35, ; 152..159
	i32 46, i32 23, i32 28, i32 108, i32 80, i32 41, i32 99, i32 62, ; 160..167
	i32 9, i32 108, i32 88, i32 68, i32 122, i32 85, i32 17, i32 17, ; 168..175
	i32 57, i32 10, i32 34, i32 22, i32 106, i32 6, i32 11, i32 21, ; 176..183
	i32 34, i32 41, i32 84, i32 95, i32 82, i32 76, i32 126, i32 62, ; 184..191
	i32 77, i32 44, i32 121, i32 51, i32 3, i32 106, i32 116, i32 72, ; 192..199
	i32 100, i32 8, i32 123, i32 84, i32 112, i32 76, i32 98, i32 99, ; 200..207
	i32 64, i32 43, i32 91, i32 96, i32 58, i32 116, i32 80, i32 126, ; 208..215
	i32 82, i32 30, i32 30, i32 31, i32 79, i32 0, i32 59, i32 55, ; 216..223
	i32 16, i32 65, i32 94, i32 24, i32 102, i32 114, i32 119, i32 24, ; 224..231
	i32 42, i32 128, i32 19, i32 31, i32 125, i32 13, i32 44, i32 37, ; 232..239
	i32 87, i32 47, i32 43, i32 66, i32 56, i32 73, i32 47, i32 95, ; 240..247
	i32 93, i32 32, i32 22, i32 36, i32 4, i32 114, i32 127, i32 48, ; 248..255
	i32 33, i32 118, i32 63, i32 72, i32 120, i32 45, i32 20, i32 107 ; 264..263
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}

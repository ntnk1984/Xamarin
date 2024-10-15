package crc64f30460dc351fc337;


public class OpenAppAndroid
	extends android.app.Activity
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("TabbedPageWithNavigationPage.Droid.OpenAppAndroid, TabbedPageWithNavigationPage.Droid", OpenAppAndroid.class, __md_methods);
	}


	public OpenAppAndroid ()
	{
		super ();
		if (getClass () == OpenAppAndroid.class)
			mono.android.TypeManager.Activate ("TabbedPageWithNavigationPage.Droid.OpenAppAndroid, TabbedPageWithNavigationPage.Droid", "", this, new java.lang.Object[] {  });
	}

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}

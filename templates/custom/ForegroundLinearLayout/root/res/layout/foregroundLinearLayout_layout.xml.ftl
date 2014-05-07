<?xml version="1.0" encoding="utf-8"?>

<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
              xmlns:app="http://schemas.android.com/apk/res-auto"
              android:orientation="vertical"
              android:layout_width="match_parent"
              android:layout_height="match_parent">

	<!--
        * Thanks to Chris Banes for this code.
        * Original source: https://gist.github.com/chrisbanes/9091754
        * Original post: https://plus.google.com/+AndroidDevelopers/posts/aHPVDtr6mcp
        */
    -->		  
	<${packageName}.${foregroundLinearLayoutClass}
        android:layout_width="wrap_content"
		android:layout_height="wrap_content"
        android:id="@+id/foreground_linear_layout"
		android:layout_margin="8dp"
		android:padding="5dp"
        android:orientation="vertical"
		android:background="@drawable/background_card"
        android:foreground="?android:selectableItemBackground" >

        <ImageView
            android:id="@+id/imageview_opaque"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:src="@drawable/sea"/>

        <TextView
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:gravity="center_horizontal"
            android:layout_marginTop="5dp"
            android:textAppearance="@android:style/TextAppearance.Medium"
            android:text="@string/example_foreground_text"/>


    </${packageName}.${foregroundLinearLayoutClass}>
	
</LinearLayout>

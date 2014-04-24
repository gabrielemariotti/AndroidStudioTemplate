<?xml version="1.0" encoding="utf-8"?>
<!-- Copyright (C) 2013 The Android Open Source Project

     Licensed under the Apache License, Version 2.0 (the "License");
     you may not use this file except in compliance with the License.
     You may obtain a copy of the License at

          http://www.apache.org/licenses/LICENSE-2.0

     Unless required by applicable law or agreed to in writing, software
     distributed under the License is distributed on an "AS IS" BASIS,
     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
     See the License for the specific language governing permissions and
     limitations under the License.
-->

<android.support.v4.widget.SwipeRefreshLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@+id/swipe_refresh_widget"
    android:layout_width="match_parent"
    android:layout_height="match_parent">
    
	<!-- Add here some full screen pullable view that will be the offsetable content -->
    
	<!-- Example:
		<ListView
			android:layout_width="match_parent"
			android:layout_height="match_parent"
			android:id="@+id/content"/>
    -->
	
	 <ScrollView
        android:layout_width="match_parent"
        android:layout_height="match_parent">

        <LinearLayout
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:orientation="vertical">

            <TextView
                android:id="@+id/textview1"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:gravity="center_horizontal"
                android:textSize="20sp"
                android:text="@string/hello_world"/>

            <TextView
                android:id="@+id/textview2"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:gravity="center_horizontal"
                android:textSize="20sp"
                android:text="@string/hello_world"/>
        </LinearLayout>


    </ScrollView>
			
</android.support.v4.widget.SwipeRefreshLayout>

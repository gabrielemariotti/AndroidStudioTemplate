<?xml version="1.0" encoding="utf-8"?>

<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
              xmlns:app="http://schemas.android.com/apk/res-auto"
              android:orientation="vertical"
              android:layout_width="match_parent"
              android:layout_height="match_parent">

    <${packageName}.${floatLabelLayoutClass}
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_marginTop="16dp"
            app:floatLabelTextAppearance="@style/TextAppearance.YourApp.FloatLabel">

        <EditText
            android:id="@+id/edit_username"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:hint="@string/account_username_hint"
            android:singleLine="true"
            android:inputType="textNoSuggestions"
            android:imeOptions="actionNext"
            android:nextFocusDown="@+id/edit_password" />

    </${packageName}.${floatLabelLayoutClass}>

    <${packageName}.${floatLabelLayoutClass}
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_marginTop="16dp"
            app:floatLabelTextAppearance="@style/TextAppearance.YourApp.FloatLabel">

        <EditText
            android:id="@+id/edit_password"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:hint="@string/account_password_hint"
            android:singleLine="true"
            android:inputType="textNoSuggestions"
            android:imeOptions="actionDone" />

    </${packageName}.${floatLabelLayoutClass}>

</LinearLayout>
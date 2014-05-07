package ${packageName};

import <#if appCompat?has_content>android.support.v7.app.ActionBarActivity<#else>android.app.Activity</#if>;
import android.os.Bundle;
import android.view.View;

<#if applicationPackage??>import ${applicationPackage}.R;</#if>

public class ${activityClass} extends ${(appCompat?has_content)?string('ActionBar','')}Activity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutActivityName});
		
		//For test
		findViewById(R.id.foreground_linear_layout).setClickable(true);
		
		//Add your components
      
    }
	
}

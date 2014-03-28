package ${packageName};

import <#if appCompat?has_content>android.support.v7.app.ActionBarActivity<#else>android.app.Activity</#if>;
import android.os.Bundle;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;

<#if applicationPackage??>import ${applicationPackage}.R;</#if>

public class ${activityClass} extends ${(appCompat?has_content)?string('ActionBar','')}Activity implements OnRefreshListener {

	private SwipeRefreshLayout mSwipeRefreshWidget;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
		mSwipeRefreshWidget = (SwipeRefreshLayout) findViewById(R.id.swipe_refresh_widget);
        mSwipeRefreshWidget.setColorScheme(R.color.color1, R.color.color2, R.color.color3,
                R.color.color4);
        mSwipeRefreshWidget.setOnRefreshListener(this);
		
		//Add your components
      
    }
	
	@Override
    public void onRefresh() {
        //Write your logic here
		//Call hideRefreshProgress(); to notify the widget that refresh state has ended
    }

    /**
     * It shows the SwipeRefreshLayout progress
     */
    public void showRefreshProgress() {
        mSwipeRefreshWidget.setRefreshing(true);
    }
 
    /**
     * It shows the SwipeRefreshLayout progress
     */
    public void hideRefreshProgress() {
        mSwipeRefreshWidget.setRefreshing(false);
    }
 
    /**
     * Enables swipe gesture
     */
    public void enableSwipe() {
        mSwipeRefreshWidget.setEnabled(true);
    }
 
    /**
     * Disables swipe gesture. 
     */
    public void disableSwipe() {
        mSwipeRefreshWidget.setEnabled(false);
    }

}

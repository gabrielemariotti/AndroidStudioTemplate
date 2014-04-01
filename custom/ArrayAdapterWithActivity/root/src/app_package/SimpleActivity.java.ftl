package ${packageName};

import <#if appCompat?has_content>android.support.v7.app.ActionBarActivity<#else>android.app.Activity</#if>;
import android.os.Bundle;
import android.widget.ListView;
import android.view.View;
import java.util.ArrayList;
import android.widget.TextView;
import android.widget.AdapterView;

<#if applicationPackage??>import ${applicationPackage}.R;</#if>

public class ${activityClass} extends ${(appCompat?has_content)?string('ActionBar','')}Activity {

	 /**
     * The ListView/GridView.
     */
    private ListView mListView;
	
	/**
	 * Adapter
	 */
	private ${adapterClass} mAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutActivityName});
		
		// Set the adapter
        mListView = (ListView) findViewById(android.R.id.list);
		
		ArrayList<${itemClass}> lists = new ArrayList<${itemClass}>();
		
        // TODO : Add here your objects !!
		//lists.add(new ${itemClass}());
		
		mAdapter = new ${adapterClass}(this,lists);
    
		if (mListView != null){
			mListView.setAdapter(mAdapter);			
		}
		
		//Add your components
      
    }
	
	/**
     * The default content for this Activity has a TextView that is shown when
     * the list is empty. If you would like to change the text, call this method
     * to supply the text it should use.
     */
    public void setEmptyText(CharSequence emptyText) {
		if (mListView != null){
			View emptyView = mListView.getEmptyView();

			if (emptyText instanceof TextView) {
				((TextView) emptyView).setText(emptyText);
			}
		}
    }
	
	/**
	 * Call this method to implement an OnItemClickListener
	 */
	public void setOnItemClickListener(){
	
		// Set OnItemClickListener so we can be notified on item clicks
		if (mListView != null){
			mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
				@Override
				public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
					
					// TODO: Implement here your logic
					//${itemClass} item = mAdapter.getItem(position);
					
				}
			});
		}
	}

}

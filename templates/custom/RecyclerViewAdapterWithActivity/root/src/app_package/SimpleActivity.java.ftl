package ${packageName};

import <#if appCompat?has_content>android.support.v7.app.ActionBarActivity<#else>android.app.Activity</#if>;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;


<#if applicationPackage??>import ${applicationPackage}.R;</#if>

public class ${activityClass} extends ${(appCompat?has_content)?string('ActionBar','')}Activity {

    private RecyclerView mRecyclerView;

    private ${adapterClass} mAdapter;

    private LinearLayoutManager mLayoutManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutActivityName});

        mRecyclerView = (RecyclerView) findViewById(R.id.my_recycler_view);
        mAdapter = new ${adapterClass}();

        mRecyclerView.setHasFixedSize(true);

        // use a linear layout manager
        mLayoutManager = new LinearLayoutManager(this);
        mRecyclerView.setLayoutManager(mLayoutManager);

        mRecyclerView.setAdapter(mAdapter);
    }
}

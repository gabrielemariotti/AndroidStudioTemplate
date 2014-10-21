package ${packageName};

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/**
 * A custom adapter to use with the RecyclerView widget.
 */
public class ${adapterClass} extends RecyclerView.Adapter<${adapterClass}.${itemClass}> {
	
    @Override
    public ${itemClass} onCreateViewHolder(ViewGroup viewGroup, int viewType) {

        View view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.${layoutName}, viewGroup, false);
    
        return new ${itemClass}(view);
    }

    @Override
    public void onBindViewHolder(${itemClass} itemViewHolder, int position) {

        //Here you can fill your row view
    }

    @Override
    public int getItemCount() {

        return 0;
    }

    public class ${itemClass} extends RecyclerView.ViewHolder {

        public ${itemClass}(View itemView) {
            super(itemView);
        }
    }
}

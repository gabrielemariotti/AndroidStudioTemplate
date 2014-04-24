package ${packageName};

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import java.util.List;

/**
 * A custom array adapter.
 */
public class ${adapterClass} extends ArrayAdapter<${itemClass}> {

    /**
     * Current context
     */
    protected Context mContext;
	
	private LayoutInflater mInflater;
	
	// -------------------------------------------------------------
    // Constructors
    // -------------------------------------------------------------

    public ${adapterClass}(Context context, List<${itemClass}> objects) {
        super(context, 0, objects);
        this.mContext = context;
		mInflater = LayoutInflater.from(context);
    }
	
	
	// -------------------------------------------------------------
    //  getView()
    // -------------------------------------------------------------

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {

		// A ViewHolder keeps references to children views to avoid unneccessary calls
        // to findViewById() on each row.
        ViewHolder holder;

		// When convertView is not null, we can reuse it directly, there is no need
        // to reinflate it. We only inflate a new View when the convertView supplied
        if (convertView == null) {

            convertView = mInflater.inflate(R.layout.${layoutName}, parent, false);

            // Creates a ViewHolder and store references to the two children views
            // we want to bind data to.
            holder = new ViewHolder();

            // TODO store references to your views
            //holder.text = (TextView) convertView.findViewById(R.id.text);

            convertView.setTag(holder);

        } else {
			// Get the ViewHolder back to get fast access to the TextView
            // and the ImageView.
            holder = (ViewHolder) convertView.getTag();
        }

        ${itemClass} item = getItem(position);

        
		if (item != null){
			// TODO Bind your data efficiently with the holder.
			//holder.text.setText(item.getName());
		}


        return convertView;
    }

    // -------------------------------------------------------------
    //  ViewHolder
    // -------------------------------------------------------------

    private static class ViewHolder {
		
        // TODO define members for each view in the item layout
        //public TextView text;

    }


    // -------------------------------------------------------------
    //  Getters and Setters
    // -------------------------------------------------------------


    public Context getContext() {
        return mContext;
    }

}

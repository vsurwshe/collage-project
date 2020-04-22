package com.example.vishvanath.dsruwv03;

import android.app.Activity;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;


/**
 * Created by Vishvanath on 10/12/2017.
 */
public class CustomListview extends ArrayAdapter<String> {
    private String[] fruitname;
    private String[] desc;
    private Integer[] imgid;
    private Activity context;

    public CustomListview(Activity context, String[] fruitname, String[] desc, Integer[] imgid) {
        super(context,R.layout.listview_layout,fruitname);
        this.context=context;
        this.fruitname=fruitname;
        this.desc=desc;
        this.imgid=imgid;
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {
        View r=convertView;
        ViewHloder viewHloder=null;
        if(r==null)
        {
            LayoutInflater layoutInflater=context.getLayoutInflater();
            r= layoutInflater.inflate(R.layout.listview_layout,null,true);
            viewHloder=new ViewHloder(r);
            r.setTag(viewHloder);
            viewHloder.ivw1.setImageResource(imgid[position]);
            viewHloder.tvw1.setText(fruitname[position]);
            viewHloder.tvw2.setText(desc[position]);
            viewHloder.bt1.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Toast.makeText(v.getContext(), "Click the Food "+fruitname[position], Toast.LENGTH_SHORT).show();
                    Intent intent = new Intent(v.getContext(), main.class);
                    intent.putExtra("fruit", fruitname[position]);
                    intent.putExtra("rate", desc[position]);
                    v.getContext().startActivity(intent);
                }
            });


        }
        else{

            viewHloder=(ViewHloder)r.getTag();
        }


        return r;
    }

    class ViewHloder
    {
        TextView tvw1;
        TextView tvw2;
        ImageView ivw1;
        Button bt1;

        ViewHloder(View v)
        {
            tvw1=(TextView)v.findViewById(R.id.tvfuritname);
            tvw2=(TextView)v.findViewById(R.id.tvdescription);
            ivw1=(ImageView)v.findViewById(R.id.imageView);
            bt1=(Button)v.findViewById(R.id.ibut);
        }
    }
}

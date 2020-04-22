package com.example.vishvanath.dssruwtv20;

import android.app.ActionBar;
import android.app.AlertDialog;
import android.app.Dialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.Layout;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.PopupWindow;
import android.widget.Toast;

public class Main extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button b1=(Button) findViewById(R.id.start);
        b1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AlertDialog.Builder mBuider=new AlertDialog.Builder(Main.this);
                View mView=getLayoutInflater().inflate(R.layout.main2,null);
                final EditText na=(EditText)mView.findViewById(R.id.n);
                final EditText mo=(EditText)mView.findViewById(R.id.mo);
                Button bt2=(Button)mView.findViewById(R.id.m2o);
                Button bt3=(Button)mView.findViewById(R.id.m2c);

                bt2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        if(!na.getText().toString().isEmpty() && !mo.getText().toString().isEmpty())
                        {
                            Toast.makeText(Main.this,
                                    R.string.Sucess_oder_msg,
                                    Toast.LENGTH_SHORT).show();
                        }else
                        {
                            Toast.makeText(Main.this,
                                    R.string.Error_Order_msg,
                                    Toast.LENGTH_SHORT).show();
                        }
                    }
                });
                mBuider.setView(mView);
                AlertDialog dialog=mBuider.create();
                dialog.show();

            }
        });
    }
}

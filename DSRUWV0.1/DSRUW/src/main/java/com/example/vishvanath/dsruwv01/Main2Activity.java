package com.example.vishvanath.dsruwv01;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;

import java.util.HashMap;
import java.util.Map;

public class Main2Activity extends AppCompatActivity {
    Button button;
    EditText name,tal,qty;
    TextView tv,prc;
    String server_url="http://192.168.1.12:8080/ds/headchefload.php";
    AlertDialog.Builder builder;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        Intent intent=getIntent();
        String val=intent.getStringExtra("fruit");
        String val2=intent.getStringExtra("rate");
        tv=(TextView)findViewById(R.id.ma2fo);
        prc=(TextView)findViewById(R.id.ma2prc);
        tv.setText(val);
        prc.setText(val2);

        button=(Button)findViewById(R.id.but);
        name=(EditText)findViewById(R.id.n);
        tal=(EditText)findViewById(R.id.ta);
        qty=(EditText)findViewById(R.id.qt);

        builder=new AlertDialog.Builder(Main2Activity.this);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                final String na=name.getText().toString();
                final String ta=tal.getText().toString();
                final String f =tv.getText().toString();
                final String q=qty.getText().toString();
                final String r=prc.getText().toString();
                StringRequest stringRequest=new StringRequest(Request.Method.POST, server_url,
                        new Response.Listener<String>() {
                            @Override
                            public void onResponse(String response) {
                                builder.setTitle("Server Responce");
                                builder.setMessage("Response :" + response);
                                builder.setPositiveButton("Ok", new DialogInterface.OnClickListener() {
                                    @Override
                                    public void onClick(DialogInterface dialog, int which) {
                                        name.setText("");
                                        tal.setText("");
                                        qty.setText("");
                                        Intent intent1=new Intent(Main2Activity.this,main.class);
                                        startActivity(intent1);
                                    }
                                });
                                AlertDialog alertDialog=builder.create();
                                alertDialog.show();


                            }
                        }
                        , new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {

                        Toast.makeText(Main2Activity.this, "Error: "+error+"", Toast.LENGTH_SHORT).show();
                        error.printStackTrace();
                    }
                }){

                    @Override
                    protected Map<String, String> getParams() throws AuthFailureError {
                        Map<String,String> pa=new HashMap<String, String>();
                        pa.put("nam",na);
                        pa.put("table",ta);
                        pa.put("food",f);
                        pa.put("qty",q);
                        pa.put("rat",r);
                        return pa;
                    }
                };

                MySingleton.getmIstance(Main2Activity.this).addTorequestque(stringRequest);

            }
        });
    }
}

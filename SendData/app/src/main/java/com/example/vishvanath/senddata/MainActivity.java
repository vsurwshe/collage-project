package com.example.vishvanath.senddata;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;

import java.util.HashMap;
import java.util.Map;

public class MainActivity extends AppCompatActivity {
    Button button;
    EditText name,day,tal,fod,qty,rat,gst;
    String server_url="http://192.168.1.11:8000/ds/headchefload.php";
    AlertDialog.Builder builder;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        button=(Button)findViewById(R.id.b1);
        name=(EditText)findViewById(R.id.n);
        day=(EditText)findViewById(R.id.d);
        tal=(EditText)findViewById(R.id.t);
        fod=(EditText)findViewById(R.id.f);
        qty=(EditText)findViewById(R.id.q);
        rat=(EditText)findViewById(R.id.r);
        gst=(EditText)findViewById(R.id.g);
        builder=new AlertDialog.Builder(MainActivity.this);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                final String na=name.getText().toString();
                final String da=day.getText().toString();
                final String ta=tal.getText().toString();
                final String f=fod.getText().toString();
                final String q=qty.getText().toString();
                final String r=rat.getText().toString();
                final String g=gst.getText().toString();
                StringRequest stringRequest=new StringRequest(Request.Method.DEPRECATED_GET_OR_POST, server_url,
                        new Response.Listener<String>() {
                            @Override
                            public void onResponse(String response) {
                            builder.setTitle("Server Responce");
                                builder.setMessage("Response :" + response);
                                builder.setPositiveButton("Ok", new DialogInterface.OnClickListener() {
                                    @Override
                                    public void onClick(DialogInterface dialog, int which) {
                                        name.setText("");
                                        day.setText("");
                                        tal.setText("");
                                        fod.setText("");
                                        qty.setText("");
                                        rat.setText("");
                                        gst.setText("");

                                    }
                                });
                                AlertDialog alertDialog=builder.create();
                                alertDialog.show();


                            }
                        }
                        , new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {

                        Toast.makeText(MainActivity.this,"Error.....",Toast.LENGTH_SHORT).show();
                        error.printStackTrace();
                    }
                }){

                    @Override
                    protected Map<String, String> getParams() throws AuthFailureError {
                        Map<String,String> params=new HashMap<String, String>();
                        params.put("nam",na);
                        params.put("day",da);
                        params.put("table",ta);
                        params.put("food",f);
                        params.put("qty",q);
                        params.put("rat",r);
                        params.put("gst",g);
                        return super.getParams();
                    }
                };

                MySingleton.getmIstance(MainActivity.this).addTorequestque(stringRequest);

        }
        });

    }
}

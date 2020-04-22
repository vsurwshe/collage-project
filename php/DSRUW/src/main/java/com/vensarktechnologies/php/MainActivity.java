package com.vensarktechnologies.php;

import android.content.DialogInterface;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import android.preference.DialogPreference;
import android.support.v7.app.AlertDialog;
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
    EditText name,day,table,foo,rate,total,gst,fitotal,qu;
    String server_url="http://192.168.1.11:8080/ds/headchefload.php";
    AlertDialog.Builder builder;


    HttpPost httppost;
    StringBuffer buffer;
    HttpResponse response;
    HttpClient httpclient;
    List<NameValuePair> nameValuePairs;
    ProgressDialog dialog = null;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);

        button=(Button)findViewById(R.id.button);
        name=(EditText)findViewById(R.id.n);
        day=(EditText)findViewById(R.id.d);
        table=(EditText)findViewById(R.id.ta);
        foo=(EditText)findViewById(R.id.f);
        qu=(EditText)findViewById(R.id.q);
        rate=(EditText)findViewById(R.id.ra);
        total=(EditText)findViewById(R.id.to);
        gst=(EditText)findViewById(R.id.g);
        fitotal=(EditText)findViewById(R.id.fit);
        builder=new AlertDialog.Builder(MainActivity.this);

        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                final String na=name.getText().toString();
                final String d=day.getText().toString();
                final String t=table.getText().toString();
                final String f=foo.getText().toString();
                final String qt=qu.getText().toString();
                final String r=rate.getText().toString();
                final String to=total.getText().toString();
                final String g=gst.getText().toString();
                final String fit=fitotal.getText().toString();
                StringRequest stringRequest=new StringRequest(Request.Method.POST, server_url,
                        new Response.Listener<String>() {
                            @Override
                            public void onResponse(String response) {
                            builder.setTitle("Server Responces");
                                builder.setMessage("Responces :" + response);
                                builder.setPositiveButton("Submit", new DialogInterface.OnClickListener() {
                                    @Override
                                    public void onClick(DialogInterface dialog, int which) {
                                        name.setText("");
                                        day.setText("");
                                        table.setText("");
                                        foo.setText("");
                                        qu.setText("");
                                        rate.setText("");
                                        total.setText("");
                                        gst.setText("");
                                        fitotal.setText("");
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
                       Map<String,String> pa=new HashMap<String, String>();
                        pa.put("nam",na);
                        pa.put("day",d);
                        pa.put("table",t);
                        pa.put("food",f);
                        pa.put("qty",qt);
                        pa.put("rat",r);
                        pa.put("tot",to);
                        pa.put("gst",g);
                        pa.put("fit",fit);
                        return pa;
                    }
                };
                MySingleton.getmInstance(MainActivity.this).addTorequestque(stringRequest);
            }
        });



    }
}

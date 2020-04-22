package com.example.vishvanath.dssruwtv20;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
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
import com.google.android.gms.appindexing.Action;
import com.google.android.gms.appindexing.AppIndex;
import com.google.android.gms.common.api.GoogleApiClient;

import java.util.HashMap;
import java.util.Map;

public class Oder extends AppCompatActivity {
    Button button;
    EditText name, tal, qty;
    TextView tv, prc;
    String server_url = "http://192.168.1.102:8080/ds/headchefload.php";
    AlertDialog.Builder builder;
    /**
     * ATTENTION: This was auto-generated to implement the App Indexing API.
     * See https://g.co/AppIndexing/AndroidStudio for more information.
     */
    private GoogleApiClient client;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        Intent intent = getIntent();
        String val = intent.getStringExtra("fruit");
        String val2 = intent.getStringExtra("rate");
        tv = (TextView) findViewById(R.id.ma2fo);
        prc = (TextView) findViewById(R.id.ma2prc);
        tv.setText(val);
        prc.setText(val2);

        button = (Button) findViewById(R.id.but);
        name = (EditText) findViewById(R.id.n);
        //tal = (EditText) findViewById(R.id.ta);
        qty = (EditText) findViewById(R.id.qt);

        builder = new AlertDialog.Builder(Oder.this);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                final String na = name.getText().toString();
                final String ta = "4";
                final String f = tv.getText().toString();
                final String q = qty.getText().toString();
                final String r = prc.getText().toString();
                StringRequest stringRequest = new StringRequest(Request.Method.POST, server_url,
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
                                        Intent intent1 = new Intent(Oder.this, Main.class);
                                        startActivity(intent1);
                                    }
                                });
                                AlertDialog alertDialog = builder.create();
                                alertDialog.show();


                            }
                        }
                        , new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {

                        Toast.makeText(Oder.this, "Error: " + error + "", Toast.LENGTH_SHORT).show();
                        error.printStackTrace();
                    }
                }) {

                    @Override
                    protected Map<String, String> getParams() throws AuthFailureError {
                        Map<String, String> pa = new HashMap<String, String>();
                        pa.put("nam", na);
                        pa.put("table", ta);
                        pa.put("food", f);
                        pa.put("qty", q);
                        pa.put("rat", r);
                        return pa;
                    }
                };

                MySingleton.getmIstance(Oder.this).addTorequestque(stringRequest);

            }
        });
        // ATTENTION: This was auto-generated to implement the App Indexing API.
        // See https://g.co/AppIndexing/AndroidStudio for more information.
        client = new GoogleApiClient.Builder(this).addApi(AppIndex.API).build();
    }

    @Override
    public void onStart() {
        super.onStart();

        // ATTENTION: This was auto-generated to implement the App Indexing API.
        // See https://g.co/AppIndexing/AndroidStudio for more information.
        client.connect();
        Action viewAction = Action.newAction(
                Action.TYPE_VIEW, // TODO: choose an action type.
                "Oder Page", // TODO: Define a title for the content shown.
                // TODO: If you have web page content that matches this app activity's content,
                // make sure this auto-generated web page URL is correct.
                // Otherwise, set the URL to null.
                Uri.parse("http://host/path"),
                // TODO: Make sure this auto-generated app deep link URI is correct.
                Uri.parse("android-app://com.example.vishvanath.dssruwtv20/http/host/path")
        );
        AppIndex.AppIndexApi.start(client, viewAction);
    }

    @Override
    public void onStop() {
        super.onStop();

        // ATTENTION: This was auto-generated to implement the App Indexing API.
        // See https://g.co/AppIndexing/AndroidStudio for more information.
        Action viewAction = Action.newAction(
                Action.TYPE_VIEW, // TODO: choose an action type.
                "Oder Page", // TODO: Define a title for the content shown.
                // TODO: If you have web page content that matches this app activity's content,
                // make sure this auto-generated web page URL is correct.
                // Otherwise, set the URL to null.
                Uri.parse("http://host/path"),
                // TODO: Make sure this auto-generated app deep link URI is correct.
                Uri.parse("android-app://com.example.vishvanath.dssruwtv20/http/host/path")
        );
        AppIndex.AppIndexApi.end(client, viewAction);
        client.disconnect();
    }
}

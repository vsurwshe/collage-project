package com.example.vishvanath.dssruwtv21;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class Home extends AppCompatActivity {
    final Activity mactivity=this;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);
        Button b1=(Button)findViewById(R.id.start);
        b1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                AlertDialog.Builder mBuider = new AlertDialog.Builder(Home.this);

                View mView = getLayoutInflater().inflate(R.layout.userinfo, null);

                final EditText nam = (EditText) mView.findViewById(R.id.name);
                final EditText mob = (EditText) mView.findViewById(R.id.mob);
                Button bt2 = (Button) mView.findViewById(R.id.oB1);
                Button bt3 = (Button) mView.findViewById(R.id.oB2);

                bt2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        if (!nam.getText().toString().isEmpty() && !mob.getText().toString().isEmpty()) {
                            Intent myIntent = new Intent(mactivity, USERMAIN.class);
                            myIntent.putExtra("Custname", nam.getText().toString());
                            myIntent.putExtra("Mobileno", mob.getText().toString());
                            mactivity.startActivity(myIntent);
                            mactivity.finish();
                            Toast.makeText(Home.this,
                                    "CORRECT INFORMATION FILED MR/MRS. " + nam.getText(),
                                    Toast.LENGTH_SHORT).show();
                        } else {
                            Toast.makeText(Home.this,
                                    "Please Sir/Madam Fill Data Proper In Above Text Filed Sir",
                                    Toast.LENGTH_SHORT).show();
                        }
                    }
                });

                mBuider.setView(mView);
                final AlertDialog dialog = mBuider.create();
                dialog.show();

                bt3.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        dialog.dismiss();
                    }
                });
            }
        });
    }
}

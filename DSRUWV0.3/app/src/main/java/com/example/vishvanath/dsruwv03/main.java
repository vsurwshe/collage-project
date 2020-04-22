package com.example.vishvanath.dsruwv03;

/**
 * Created by Vishvanath on 10/28/2017.
 */
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;

public class main extends AppCompatActivity {
    ListView lst;
    String[] fruitname = {"cake", "dahikichdi", "dahivada", "jalebi", "masaladosa", "masalakhchadi","pasta","rasgula","somsa","soop","upma"};
    String[] desc = {"45", "20", "20", "20", "30", "40","75","50","20","30","20"};
    Integer[] imgid = {R.drawable.cake, R.drawable.dahikichdi, R.drawable.dahivada, R.drawable.jalebi, R.drawable.masaladosa, R.drawable.masalakhchadi,R.drawable.pasta,R.drawable.rasgula,R.drawable.somsa,R.drawable.soop,R.drawable.upma};
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        lst = (ListView) findViewById(R.id.listView);
        CustomListview customListview = new CustomListview(this, fruitname, desc, imgid);
        lst.setItemsCanFocus(false);
        lst.setAdapter(customListview);

        Toast.makeText(getApplicationContext(), "WelCome Sir In The Restraunt", Toast.LENGTH_SHORT).show();
        lst.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Toast.makeText(getApplicationContext(), "WelCome Sir In the Order Menu", Toast.LENGTH_SHORT).show();

            }
        });

    }
}

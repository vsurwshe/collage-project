package com.example.vishvanath.dssruwtv20;

import android.content.Context;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.Volley;

/**
 * Created by Vishvanath on 10/7/2017.
 */
public class MySingleton {

    private static  MySingleton mIstance;
    private RequestQueue requestQueue;
    private static Context mCtx;

    private MySingleton(Context context)
    {
        mCtx=context;
        requestQueue=getRequestQueue();
    }

    public static  synchronized  MySingleton getmIstance(Context context)
    {
        if(mIstance==null)
        {
            mIstance=new MySingleton(context);
        }
        return mIstance;
    }

    public  RequestQueue getRequestQueue(){
        if(requestQueue==null)
        {
            requestQueue= Volley.newRequestQueue(mCtx.getApplicationContext());
        }
        return  requestQueue;
    }

    public <T> void addTorequestque(Request<T> request)
    {
        requestQueue.add(request);
    }
}

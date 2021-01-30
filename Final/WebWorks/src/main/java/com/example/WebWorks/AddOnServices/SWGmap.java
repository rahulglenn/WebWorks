package com.example.WebWorks.AddOnServices;

import java.util.Map;
import java.util.TreeMap;

public class SWGmap {
    //private9
    static String swg[]={"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","14.5","15","15.5","16","16.5","17","17.5","18","18.5","19","19.5","20","20.5","21","21.5","22","22.5","23","24","25","26","27","28","29","30"};
    static double mmaa[][]={{8.230,53.1730},{7.620,45.5806},{7.010,38.5750},{6.401,32.1636}};
    static Map<String,double[]> map=new TreeMap<>();
    public static void main(String a[])
    {
        int i;
        for(i=0;i<4;i++)
        {
            map.put(swg[i],mmaa[i]);
        }

    }
}

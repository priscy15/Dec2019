package com.hexaware.trainer;

import java.util.HashMap;
import java.util.Map;

public class Demo {

    public String propertyList(String key){
		Map<String,String> m=new HashMap<String,String>();
		m.put("Meena","Java");
		m.put("Bhargav","Reddy");
		m.put("Harish","K");
		m.put("Sai","Bharath");
		return m.get(key);
	}
    public boolean evenodd(int n) {
        if (n%2==0) {
            return true;
        } else {
            return false;
        }
    }

    public String validate(String s) {
        String res = new String("Hexaware");
        if (s.equals("Hexaware")) {
            return res;
        } else {
            return null;
        }
    }
    public int minArray(int[] a) {
        int min=a[0];
        for(int i=0;i<a.length;i++) {
            if (min > a[i]) {
                min=a[i];
            }
        }
        return min;
    }
    public String sayHello() {
        return "Welcome to Junit Programming...";
    }
    public int sum(int a,int b) {
        return a+b;
    }
    public int max3(int a,int b,int c) {
        int m=a;
        if (m < b) {
            m = b;
        }
        if (m < c) {
            m = c;
        }
        return m;
    }
}
package far;

import java.io.*;
import java.net.*;
import java.util.*;
import com.sun.net.httpserver.*;

public class Transaction{
	public int buyer;
	public int seller;
	public String symbolName;
	public String type;
	public int quantity;
	public  int buyerMoney;
	public int sellerMoney;

	public Transaction(int b,int s, String sy, String t, int q, int bm, int sm){
		buyer = b;
		seller = s;
		symbolName = sy;
		type = t;
		quantity = q;
		buyerMoney = bm;
		sellerMoney = sm;
	}

	public static ArrayList<Transaction> list = new ArrayList<Transaction>();
	public static Transaction getTrans(int i){return list.get(i);}
}
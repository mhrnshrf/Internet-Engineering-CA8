package far;

import java.io.*;
import java.net.*;
import java.util.*;
import com.sun.net.httpserver.*;
//import ir.ramtung.coolserver.*;

public class WaitingCustomer{
	public Customer customer;
	public int amount;
	public static ArrayList<WaitingCustomer> waitList = new ArrayList<WaitingCustomer>();
	public static int findAmount(int id){
		for (int i = 0; i < waitList.size() ; i++)
			if(waitList.get(i).getID() == id)
				return waitList.get(i).getAmount();
		return 0;
	}

	public WaitingCustomer(Customer c, int a){
		customer = c;
		amount = a;
	}
	public int getID(){return customer.getID();}
	public int getAmount(){return amount;}
}

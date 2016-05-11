package far;

import java.io.*;
import java.net.*;
import java.util.*;
import com.sun.net.httpserver.*;
//import ir.ramtung.coolserver.*;

public class WaitingCustomer{
	public Customer customer;
	public int amount;
	public static ArrayList<waitingCustomer> waitList = new ArrayList<waitingCustomer>();
	public waitingCustomer(Customer c, int a){
		customer = c;
		amount = a;
	}
}

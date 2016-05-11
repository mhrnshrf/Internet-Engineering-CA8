package far;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

public class CSVBuilder {
	
	
	public File buildFile() throws IOException {
		File file = new File("backup.csv");
		try {
			
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));

            //Buyer, Seller, instrument, type of trade, quantity, Buyer Remained Money, Seller Current Money
            for(int i=0; i<Transaction.list.size();i++){
    				bufferedWriter.write('"' + Integer.toString(Transaction.list.get(i).buyer) + '"');
    				bufferedWriter.write(",");
    				bufferedWriter.write('"' + Integer.toString(Transaction.list.get(i).seller) + '"');
    				bufferedWriter.write(",");
    				bufferedWriter.write('"' + Transaction.list.get(i).symbolName + '"');
    				bufferedWriter.write(",");
    				bufferedWriter.write('"' + Transaction.list.get(i).type + '"');
    				bufferedWriter.write(",");
    				bufferedWriter.write('"' + Integer.toString(Transaction.list.get(i).quantity) + '"');
    				bufferedWriter.write(",");
    				bufferedWriter.write('"' + Integer.toString(Transaction.list.get(i).buyerMoney) + '"');
    				bufferedWriter.write(",");
    				bufferedWriter.write('"' + Integer.toString(Transaction.list.get(i).sellerMoney) + '"');
    				bufferedWriter.newLine();
                    
   			}
            bufferedWriter.close();
        } finally{}

		return file;
	}
}
package util;

import java.io.*;

public class FileUtil {
	
	public static void saveImage(String root, String pimagename, byte[] pimagefile) throws IOException {
		
		root += "/images";
		File f = new File(root);
		
		
		if(!f.exists()) {
			f.mkdir();
		}
		
		f = new File(root + "/" + pimagename);
		
		FileOutputStream out = new FileOutputStream(f);
		
		out.write(pimagefile);
		
		out.close();
		
		
	}
	
	

	
}

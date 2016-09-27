package core.support;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class ImageProcess {
	public ImageProcess(){
		
	}
	static public File cropImageSquareFromCenter(File filePath, File destinationPath){
		BufferedImage originalImgage;
		try {
			originalImgage = ImageIO.read(filePath);
			int height = originalImgage.getHeight();
			int width = originalImgage.getWidth();
			int startX = 0;
			int startY = 0;
			int endX = width;
			int endY = height;
			System.out.println("Beginning: " + startX + "||"+ startY + "||"+ endX + "||"+ endY);
			if(height > width){ // crop height
				int half = (height - width)/2;
				startY = half;
				endY = width;
			}
			if(height < width){ //crop weight
				int half = (width - height)/2;
				startX = half;
				endX = height;
			}
			System.out.println("Ending: " + startX + "||"+ startY + "||"+ endX + "||"+ endY);
			BufferedImage img = originalImgage.getSubimage(startX, startY, endX, endY); //fill in the corners of the desired crop location here
			System.out.println("Ending: " + img.getWidth() + "||"+ img.getHeight());
			String format = destinationPath.getAbsolutePath().substring(destinationPath.getAbsolutePath().lastIndexOf(".")).replace(".", ""); 
			System.out.println("format: " + format);
			ImageIO.write(img, format, destinationPath);
			return destinationPath; //or use it however you want
		} catch (IOException e) { 
			e.printStackTrace();
		}
		return null;
	}
}

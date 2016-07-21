package searchGoogle;

import java.util.Scanner;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.Point;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class searchGoogle {


	public static void main(String[] args) throws InterruptedException {
		

System.setProperty("webdriver.chrome.driver", "C:\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.manage().window().setPosition(new Point(-2000, 0));
		
		
System.out.println("Enter search: ");
Scanner scanner = new Scanner(System.in);
String search = scanner.nextLine();
scanner.close();

driver.get("http://pearsonschool.com");
driver.findElement(By.id("q")).clear();
driver.findElement(By.id("q")).sendKeys(search);

driver.findElement(By.id("q")).sendKeys(Keys.ENTER);

Thread.sleep(2500);
driver.switchTo().frame("googleSearchFrame"); 
String fond = driver.findElement(By.id("resInfo-0")).getText();
System.out.print("results for " +search +  " = " +fond);

driver.quit();


	}

}

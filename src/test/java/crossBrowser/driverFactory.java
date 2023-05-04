package crossBrowser;

import java.io.IOException;
import java.time.Duration;

import org.openqa.selenium.PageLoadStrategy;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.safari.SafariDriver;

import io.github.bonigarcia.wdm.WebDriverManager;
import utilities.Loggerload;

public class driverFactory {
	public static WebDriver driver;
	public WebDriver initializeDrivers(String browser) throws IOException {if(browser.equalsIgnoreCase("chrome"))
	{
		Loggerload.info("Testing on chrome");
		//System.setProperty("webdriver.chrome.driver", driverLocation);
		WebDriverManager.chromedriver().setup();
		//WebDriverManager.chromedriver().browserVersion("110.0.0").setup();
		ChromeOptions chromeOptions = new ChromeOptions();
		chromeOptions.setPageLoadStrategy(PageLoadStrategy.NORMAL);
		chromeOptions.setAcceptInsecureCerts(true);
		chromeOptions.setScriptTimeout(Duration.ofSeconds(30));
		chromeOptions.setPageLoadTimeout(Duration.ofMillis(30000));
		chromeOptions.setImplicitWaitTimeout(Duration.ofSeconds(20));
		driver =new ChromeDriver(chromeOptions);
		
		//WebDriverManager.chromedriver().browserVersion("108.0.0").setup();
		//System.setProperty("webdriver.chrome.driver", driverLocation);
		
	}
	else if(browser.equalsIgnoreCase("firefox")){
		Loggerload.info("Testing on firefox");
		WebDriverManager.firefoxdriver().setup();
		//System.setProperty("webdriver.gecko.driver", driverLocation);
		driver =new FirefoxDriver();	
	}
	 else if (browser.equalsIgnoreCase("safari")) {
		 Loggerload.info("Testing on safari");
		WebDriverManager.safaridriver().setup();
		driver = new SafariDriver();	
	}
	 else if (browser.equalsIgnoreCase("edge")) {
		 Loggerload.info("Testing on Edge");
		WebDriverManager.edgedriver().setup();
		driver = new EdgeDriver();
	}
	
	
	// Set Page load timeout
	//driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(10));
	//driver.manage().window().maximize();		    ************
	return driver;	
}

public void closeallDriver() {
	//driver.close();	  *************************
}

public static WebDriver getdriver() {
	return driver;
}

}


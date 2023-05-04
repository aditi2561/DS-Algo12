package pages;

import java.io.IOException;
import java.util.List;
import java.util.Map;
//import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
//import org.apache.poi.ss.usermodel.Sheet;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
//import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.support.PageFactory;

import crossBrowser.driverFactory;
import io.cucumber.datatable.DataTable;
import utilities.ConfigReader;
import utilities.Loggerload;

public class registerPage {

	
	public static WebDriver driver=driverFactory.getdriver();
	By registerLink=By.linkText("Register");
	@FindBy(xpath="//input[@name='username']") WebElement user_Name;
	@FindBy(name="password1") WebElement pass_word;
	@FindBy(name="password2") WebElement confirm_pwd;
	@FindBy (xpath="//*[@class='alert alert-primary']") WebElement errorMsg;
	By registerSubmitButton = By.xpath(" //input[@value='Register']");
	@FindBy(linkText = "Sign in") WebElement signIn;
	
	public registerPage()
	{
		PageFactory.initElements(driver,this);
		
	}
	public void getRegisterPage() throws IOException
	{
		ConfigReader.loadConfig();
		String URL=ConfigReader.getHomePage();
		driver.get(URL);
		//driver.findElement(registerBut).click();
		
	
	}

	public void clickRegisterLink()
	{
		driver.findElement(registerLink).click();
	}
	public void clickSubmitRegister()
	{
		driver.findElement(registerSubmitButton).click();
		
	}
	public String getPageTitle()
	{
		String title= driver.getTitle();
		return title;
		
	}
	public String getEmptyfieldErrormsgUser()
	{
		return user_Name.getAttribute("validationMessage");
	}
	public String getEmptyfieldErrormsgPwd()
	{
		return pass_word.getAttribute("validationMessage");
	}
	public String getEmptyfieldErrormsgConfrmPwd()
	{
		return confirm_pwd.getAttribute("validationMessage");
		
	}
	
	
/*
	
	public Boolean getEmptyRequiredUser() {
		boolean isRequired = false;
		// To check empty fields , we need to check "required" field is on an attribute
		if (user_Name.getText().isEmpty()) {
			JavascriptExecutor js_user = (JavascriptExecutor) driver;
			isRequired = (Boolean) js_user.executeScript("return arguments[0].required;", user_Name);
		}
		return isRequired;
	}
	public Boolean getEmptyRequiredPswd() {
		boolean isRequired = false;
		// To check empty fields , we need to check "required" field is on an attribute
		if (pass_word.getText().isEmpty()) {
			JavascriptExecutor js_user = (JavascriptExecutor) driver;
			isRequired = (Boolean) js_user.executeScript("return arguments[0].required;", pass_word);
		}
		return isRequired;
	}
	public Boolean getEmptyRequiredCofmPswd() {
		boolean isRequired = false;
		// To check empty fields , we need to check "required" field is on an attribute
		if (confirm_pwd.getText().isEmpty()) {
			JavascriptExecutor js_user = (JavascriptExecutor) driver;
			isRequired = (Boolean) js_user.executeScript("return arguments[0].required;", confirm_pwd);
		}
		return isRequired;
	}
	
	*/
	//Using Datatable to read username and Password [DataDriven]
	public void enterUsername(DataTable dataTable)
	{
		List<Map<String, String>> userdetail = dataTable.asMaps(String.class,String.class);
				for(Map<String, String> mapData : userdetail)
				{
					String userName = mapData.get("username");
					Loggerload.info("The user enter username as: " + userName);
					user_Name.sendKeys(userName);
					
				}
	}
	
	public void enterPassword(DataTable dataTable)
	{
	  List<Map<String, String>> userDetail =  dataTable.asMaps(String.class,String.class);
		for(Map<String, String>mapData : userDetail)
		{
			String passwd = mapData.get("password");
			Loggerload.info("The user enter password as : " + passwd);
			pass_word.sendKeys(passwd);
			
		}
	}
	public void enterConfirmPassword(DataTable dataTable)
	{
	  List<Map<String,String>> userDetail =  dataTable.asMaps(String.class,String.class);
		for(Map<String ,String>mapData : userDetail)
		{
			String cfmpwd = mapData.get("confirm_password");
			Loggerload.info("The user enter confirm password as: " + cfmpwd);
			pass_word.sendKeys(cfmpwd);
			
	}
	}
	//Data Driven using examples for Register 08
	public void register_link(String username,String password,String confirm_password)throws InterruptedException
	{
		// TODO Auto-generated method stub
	     driver.findElement(registerLink).click();
	     user_Name.sendKeys(username);
	     pass_word.sendKeys(password);
	     confirm_pwd.sendKeys(confirm_password);
	     driver.findElement(registerSubmitButton).click();
	     
	     
	}
	public void getErrorMsg()
	{
		String Error_Message=errorMsg.getText();
		Loggerload.info("Error Message : " +Error_Message);
	}
	public void getSignIn()
	{
		signIn.click();
	}
	public String register__page()
	{
		String title = driver.getTitle();
		return title;
	}
	}
	

	
	
	
	
	
	
	
	

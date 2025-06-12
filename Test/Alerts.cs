using Microsoft.Extensions.Configuration;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebDriverManager.DriverConfigs.Impl;

namespace MayNunitEGIndiaTraining2025.Selenium
{
    internal class Alerts :Utilities.Base
    {
        //IWebDriver driver;

        //[SetUp]
        //public void startbrowser()
        //{
        //    //configure the web driver manager to set up the chrome capabilitites

        //    new WebDriverManager.DriverManager().SetUpDriver(new ChromeConfig());

        //    //initialize the web driver

        //    driver = new ChromeDriver();
        //}


        [Test]
        public void testcase1()
        {
            //launch the browser

            //driver.Navigate().GoToUrl("https://the-internet.herokuapp.com/javascript_alerts");

            Thread.Sleep(3000);

            var config = new ConfigurationBuilder()
              .AddJsonFile("C:\\Users\\paldh\\source\\repos\\MayNunitEGIndiaTraining2025\\MayNunitEGIndiaTraining2025\\Utilities\\appsettings.json")
              .Build();

            string URL = config["alert"];
            driver.Navigate().GoToUrl(URL);


            IWebElement simplealert = driver.FindElement(By.XPath("//button[normalize-space()='Click for JS Alert']"));
            simplealert.Click();
            //simple alert

            //switch the control to alert to the popup
            IAlert alt = driver.SwitchTo().Alert();

            //click on ok button

            alt.Accept();
            Thread.Sleep(2000);
            
            //confirmationla alert
            IWebElement confalert = driver.FindElement(By.XPath("//button[normalize-space()='Click for JS Confirm']"));
            confalert.Click();
            alt.Dismiss();
            Thread.Sleep(2000);

            //prompt alert
            IWebElement promptalert = driver.FindElement(By.XPath("//button[normalize-space()='Click for JS Prompt']"));
            promptalert.Click();

            //string alerttext =alt.Text;
            //Console.WriteLine(alerttext);

            Thread.Sleep(2000); 
            alt.SendKeys("hello");
            alt.Accept();

        }
        //[TearDown]
        //public void tearDownbrowser()
        //{
        //    //this closes the current opened browser session
        //    Thread.Sleep(1000);
        //    driver.Close();
        //}
    }
}

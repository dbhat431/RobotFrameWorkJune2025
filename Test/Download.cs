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
    internal class Download:Utilities.Base
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
            var config = new ConfigurationBuilder()
           .AddJsonFile("C:\\Users\\paldh\\source\\repos\\MayNunitEGIndiaTraining2025\\MayNunitEGIndiaTraining2025\\Utilities\\appsettings.json")
           .Build();

            string URL = config["alert"];
            driver.Navigate().GoToUrl(URL);

            driver.Manage().Window.Maximize();

            //launch the browser
            //driver.Navigate().GoToUrl("https://the-internet.herokuapp.com/download");
            IWebElement downlodButton = driver.FindElement(By.XPath("//a[normalize-space()='some-file.txt']"));
            downlodButton.Click();

            string downloadDirectory = "C:\\Users\\paldh\\Downloads";

            var files = Directory.GetFiles(downloadDirectory);
            if (files.Length > 0)
            {
                Console.WriteLine("File downloaded: " + Path.GetFileName(files[0]));
            }
            else
            {
                Console.WriteLine("Download failed.");
            }


        }
        //[TearDown]
        //    public void tearDownbrowser()
        //    {
        //        //this closes the current opened browser session
        //        Thread.Sleep(1000);
        //        driver.Close();
        //    }


   

    }
}

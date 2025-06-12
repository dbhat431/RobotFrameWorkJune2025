using AngleSharp.Dom;
using Microsoft.Extensions.Configuration;
using OpenQA.Selenium;
using OpenQA.Selenium.Edge;
using OpenQA.Selenium.Interactions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebDriverManager.DriverConfigs.Impl;

namespace MayNunitEGIndiaTraining2025.Selenium
{
    internal class ActionsClass :Utilities.Base
    {
       

        [Test]
        public void testcase1()
        {
            
            Thread.Sleep(3000);

            var config = new ConfigurationBuilder()
              .AddJsonFile("C:\\Users\\paldh\\source\\repos\\MayNunitEGIndiaTraining2025\\MayNunitEGIndiaTraining2025\\Utilities\\appsettings.json")
              .Build();

            string URL = config["amazon"]; 
            driver.Navigate().GoToUrl(URL);


            //driver.Navigate().GoToUrl("https://www.amazon.in/");

            driver.Manage().Window.Maximize();

            IWebElement today = driver.FindElement(By.XPath("//a[normalize-space()=\"Today's Deals\"]"));

            //double click
            new Actions(driver).DoubleClick(today).Perform();
            Thread.Sleep(2000);

            IWebElement mobile = driver.FindElement(By.LinkText("Mobiles"));


            //driver.Navigate().Back();
            //Thread.Sleep(4000);
            //driver.Navigate().Refresh();

            //context click
            new Actions(driver).ContextClick(mobile).Perform();
            Thread.Sleep(2000);




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

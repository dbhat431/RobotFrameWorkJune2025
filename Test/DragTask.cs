using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Interactions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebDriverManager.DriverConfigs.Impl;

namespace MayNunitEGIndiaTraining2025.Selenium
{
    internal class DragTask
    {
        IWebDriver driver;

        [SetUp]
        public void startbrowser()
        {
            //configure the web driver manager to set up the chrome capabilitites
            new WebDriverManager.DriverManager().SetUpDriver(new ChromeConfig());

            //initialize the web driver
            driver = new ChromeDriver();
        }


        [Test]
        public void testcase1()
        {
            //launch the browser
            driver.Navigate().GoToUrl("https://www.tutorialspoint.com/selenium/practice/droppable.php");

            driver.Manage().Window.Maximize();

            IWebElement src = driver.FindElement(By.XPath("//div[@id='draggable']"));
            IWebElement dest = driver.FindElement(By.XPath("//div[@id='droppable']"));

            new Actions(driver).DragAndDrop(src, dest).Perform();

            Thread.Sleep(3000);


        }


        [TearDown]
        public void tearDownbrowser()
        {
            //this closes the current opened browser session
            Thread.Sleep(1000);
            driver.Close();
        }
    }
}

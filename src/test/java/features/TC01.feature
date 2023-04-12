Feature: Automation Exercies US01
  Scenario: TC01
    * configure driver = { type: 'chrome', executable: 'C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe', addOptions: ["--remote-allow-origins=*"] }
    Given driver 'http://www.automationexercise.com'
    * driver maximize()
  * def homeText = text("//i[@class='fa fa-home']")
    * def title = driver.title
    And match title == 'Automation Exercise'
    And assert title == 'Automation Exercise'
    * click("//a[normalize-space()='Signup / Login']")
    * def NewLogin = text("//*[.='Login to your account']")
    Then match NewLogin == 'Login to your account'
    * delay(3000)
    * def bytes = screenshot(false)
    * def file = karate.write(bytes,'test.png')
    Then input("(//input[@name='email'])[1]","Rooney")


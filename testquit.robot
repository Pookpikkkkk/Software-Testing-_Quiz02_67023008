***Settings***
Library                 SeleniumLibrary     timeout=120s         implicit_wait=5s
Suite Setup             Open Browser        https://chiangmuan.igovapp.com/  chrome
Suite Teardown          Close Browser
 
#ข้อมูลที่เราใช้ในการทดสอบ
***Variables***
${email}             aapinyaa51@gmail.com
${password}          prince2549
 
***Keywords***
Click login button
    Click Element        //*[@id="root"]/div/nav/header/div/a[1]
 
Input email
    Input Text          //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[1]/input     ${email}

Input password
    Input Text          //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[2]/input     ${password}

Click login1 button
    Click Element        //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[3]/button

Click health button 
    Click Element        //*[@id="root"]/div/main/section/div[3]/div[2]/div/div/a[1]/div

Click History button 
    Click Element        //*[@id="root"]/div/main/section[2]/div/div[2]/div[1]/a

Click Data button 
    Click Button        //*[@id="react-aria5618277265-«r19»-1509966500786-00145-$.0"]/a

***Test Cases***
 
Input standard
    Click login button
    Sleep    2s
    Input email
    Input password
    Click login1 button
    Sleep    10s
    Click health button
    Sleep    2s
    Click History button 
    Sleep    2s
    Click Data button 

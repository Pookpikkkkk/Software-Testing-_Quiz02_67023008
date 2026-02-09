***Settings***
Library                 SeleniumLibrary     timeout=120s         implicit_wait=5s
Suite Setup             Open Browser        https://chiangmuan.igovapp.com/  chrome
Suite Teardown          Close Browser
 
#ข้อมูลที่เราใช้ในการทดสอบ
***Variables***
${email}             
${password}          
 
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
    Click Element        xpath=//a[normalize-space()='ตรวจสอบ']

Click Do button 
    Click Element         xpath=//a[normalize-space()='ทำแบบประเมิน']

Click element1
    Click Element           xpath=//div[contains(@aria-label, '1. เบื่อ')]/descendant::label[1]

Click element2
    Click Element           xpath=//div[contains(@aria-label, '2. ไม่สบายใจ')]/descendant::label[1]

Click element3
    Click Element           xpath=//div[contains(@aria-label, '3. หลับยาก')]/descendant::label[1]

Click element4
    Click Element           xpath=//div[contains(@aria-label, '4. เหนื่อยง่าย')]/descendant::label[1]

Click element5
    Click Element           xpath=//div[contains(@aria-label, '5. เบื่ออาหาร')]/descendant::label[1]

Click element6
    Click Element           xpath=//div[contains(@aria-label, '6. รู้สึกไม่ดี')]/descendant::label[1]

Click element7
    Click Element           xpath=//div[contains(@aria-label, '7. สมาธิไม่ดี')]/descendant::label[1]

Click element8
    Click Element           xpath=//div[contains(@aria-label, '8. พูดช้า')]/descendant::label[1]

Click element9
    Click Element           xpath=//div[contains(@aria-label, '9. คิดทำร้ายตัวเอง')]/descendant::label[1]

Click send button
    Click Element           xpath=//button[contains(text(), 'ส่งคำตอบ แบบประเมิน')]

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
    Sleep    1s
    Click Data button
    Sleep    1s
    Click Do button
    Sleep    1s
    Click element1
    Click element2
    Click element3
    Click element4
    Click element5
    Click element6
    Click element7
    Click element8
    Click element9
    Sleep    2s
    Click send button
    Sleep    5s

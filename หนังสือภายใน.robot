*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
เจ้าหน้าที่ยกร่างหนังสือ
    เปิด chrome browser เข้า website เข้าระบบ E-office
    เข้าสู่ระบบ    sunisa.ra    P@ssw0rd    
    เข้าเมนูระบบสารบรรณ
    เข้าเมนูทะเบียนหนังสือส่ง 
    เข้าเมนูยกร่างหนังสือ
    กดปุ่มออกเลขหนังสือ
    กดปุ่มเสนอ
    รอจนเสนอเสร็จเเละปิด browser



*** Keywords ***
เปิด Chrome Browser เข้าระบบ E-office
    Open Browser    url=https://rd-dev.summitthai.com/rd-app/login.xhtml    browser=chrome
เข้าสู่ระบบ
    Input Text    name=form-login:userId    sunisa.ra
    Input Text    name=form-login:password    P@ssw0rd
    Click Element    form-login:btn
เข้าเมนูระบบสารบรรณ
    Click Link    //*[@id="menuform:j_idt163_0"]/a
เข้าเมนูยกร่างหนังสือ
    Click Link    //*[@id="menuform:j_idt163_1"]/a
    Click Link    //*[@id="menuform:j_idt163_1_1"]/a
กรอกข้อมูลหนังสือส่ง
    #ลงวันที่
    Click Element    id=formc:bookDate1_input
    #ดำเนินการภายในวันที่
    Click Element    id=formc:formc:withinDate_input
    #เรื่อง
    Input Text    id=formc:subject1    หนังสือประชาสัมพันะการยื่นแบบแสดงรายการภาษีเงินได้บุคคลธรรมดา ปีภาษี 2563
    #เรียน
    Input Text    id=formc:receiverNameAuto1_input    ผู้อำนวยการกองมาตรฐานการจัดเก็บภาษี
กดปุ่มออกเลขหนังสือ
    Click Element    id=formc:e_btnInsert 
กดปุ่มเสนอ
    Wait Until Page Contains Element    id=formc:btnOfferS
    Scroll Element Into View    id=formc:btnOfferS
รอจนเสนอเสร็จเเละปิด browser
    Close All Browsers
# Web Application Setup Guide

This document outlines the steps to set up and run the web application locally on your machine.

## Prerequisites

Make sure you have the following software installed on your system:

- **XAMPP** (for Windows or any other version suitable for your OS)
- **Visual Studio Code**
- **Terminal (CMD in VS Code)** or **Command Prompt**

## Steps to Launch the Web Application

1. **Start XAMPP:**
   - Open XAMPP and click on the `Start` button for both **Apache** and **MySQL** services.

2. **Import Database:**
   - Access PhpMyAdmin by visiting `http://localhost/phpmyadmin/` in your browser.
   - Import the `Mydb.sql` file to create the required database tables.

3. **Run the Web Page:**
   - Open your terminal (either CMD in VS Code or Command Prompt).
   - Navigate to the project directory and type the command: `npm start` or `npm run mon` to launch the web application.

4. **Access the Web Application:**
   - Open your browser and go to `http://localhost:3000`.
   - If you want to access the seller page directly and skip the login process, navigate to `http://localhost:3000/alr-login`.

## Additional Notes

- Ensure all required services and dependencies are running before accessing the web pages.





# คู่มือการติดตั้งและใช้งานเว็บแอปพลิเคชัน

เอกสารนี้จะแนะนำขั้นตอนการติดตั้งและรันเว็บแอปพลิเคชันในเครื่องของคุณ

## สิ่งที่ต้องเตรียม

ตรวจสอบให้แน่ใจว่าคุณได้ติดตั้งโปรแกรมต่อไปนี้แล้ว:

- **XAMPP** (สำหรับ Windows หรือเวอร์ชันอื่นๆ ที่เหมาะกับระบบของคุณ)
- **Visual Studio Code**
- **Terminal (CMD ใน VS Code)** หรือ **Command Prompt**

## ขั้นตอนการเปิดใช้งานเว็บแอปพลิเคชัน

1. **เริ่มต้น XAMPP:**
   - เปิดโปรแกรม XAMPP และคลิกที่ปุ่ม `Start` ในส่วนของ **Apache** และ **MySQL**

2. **นำเข้าฐานข้อมูล:**
   - เข้าสู่ PhpMyAdmin โดยไปที่ `http://localhost/phpmyadmin/` ผ่านเว็บเบราว์เซอร์
   - นำเข้าไฟล์ `Mydb.sql` เพื่อสร้างตารางในฐานข้อมูลให้เรียบร้อย

3. **รันหน้าเว็บ:**
   - เปิด Terminal (CMD ใน VS Code หรือ Command Prompt)
   - เข้าไปยังโฟลเดอร์โปรเจ็กต์และพิมพ์คำสั่ง `npm start` หรือ `npm run mon` เพื่อเริ่มต้นเว็บแอปพลิเคชัน

4. **เข้าใช้งานเว็บแอปพลิเคชัน:**
   - เปิดเว็บเบราว์เซอร์และไปที่ `http://localhost:3000`
   - หากต้องการเข้าสู่หน้าผู้ขายโดยตรงและข้ามขั้นตอนการล็อกอิน ให้เข้าไปที่ `http://localhost:3000/alr-login`

## หมายเหตุเพิ่มเติม

- ตรวจสอบให้แน่ใจว่าโปรแกรมและบริการที่จำเป็นทั้งหมดทำงานก่อนเข้าใช้งานเว็บแอปพลิเคชัน

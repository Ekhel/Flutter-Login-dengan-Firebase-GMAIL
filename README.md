CARA CLONE DAN MENJALANKAN PROJECT INI
-------------------------------------------------------------------------------------------------------------------------------


Persiapan
-------------------------------------------------------------------------------------------------------------------------------
INSTALL FLUTTER
-------------------------------------------------------------------------------------------------------------------------------
Persiapan : Install Visual Studio Code (Pilih Sesuai OS)

- File Master Flutter Bisa Download File Flutter Disini (https://flutter.dev/docs/get-started/install/windows)
- Untuk Mac Atau Linux bisa cek disini (https://flutter.dev/docs/get-started/install )
- Instalasi Flutter Cek Vidio (https://www.youtube.com/watch?v=kx0jbUQIS10 )
- Versi Lengkap : Integrasi dengan VS Code Bisa Cek disini (https://www.youtube.com/watch?v=5izFFbdHnWY ) tapi Sebelum nya Aktifkan Emulator nya dulu ya, atau jika Emulator pada Android Studio Teralu Besar/Berat bisa Coba Emulator lain Seperti Geny Montion, atau Build Langsung di Real Device Smartphone android nya.


FIREBASE
------------------------------------------------------------------------------------------------------------------------------

- Masuk di https://console.firebase.google.com 
- Buat Project Dengan Cara klik Add Project
- Masukan Nama project klik Create Project
- Pilih Icon Android (Untuk Integrasi dengan Project Flutter Android)
  <img width="575" alt="dashboard fb" src="https://user-images.githubusercontent.com/22437935/60421566-1580db00-9c25-11e9-9d48-5b44996e55f2.png">
- Masukan android package name : contoh (com.latihan3.project) terserah anda.
- Masukan app nick name : contoh (latihan3) terserah anda.
- Masukan Debug signing certificate SHA-1 : (Cara Mendapat SHA1-1 : Masuk ke CMD (Windows) ketikan perintah :

keytool -list -v -keystore "C:\Users\yourname\ .android\debug.keystore" -alias androiddebugkey -storepass android -keypass android

Catatan : Ganti Tulisan yourname diatas dengan Path Android anda di PC/Laptop
<img width="756" alt="keystore" src="https://user-images.githubusercontent.com/22437935/60421766-74465480-9c25-11e9-9858-0df1a6aa8235.png">
<img width="756" alt="SHA1" src="https://user-images.githubusercontent.com/22437935/60421789-83c59d80-9c25-11e9-9d37-a91a2cf093a9.png">

- Copy SHA1 nya paste pada Form Register APP di Console Firebase Setelah itu Klik Register
  <img width="575" alt="Finish Firebase Register" src="https://user-images.githubusercontent.com/22437935/60422061-24b45880-9c26-11e9-97ad-c46c09cf04ef.png">
- Download file (google-service.json)
  <img width="611" alt="Download google-service" src="https://user-images.githubusercontent.com/22437935/60422177-65ac6d00-9c26-11e9-8ce9-5d4468fbc591.png">
- Masuk Kembali ke Console Firebase Klik Menu Sidebar Authentication dan klik Tab Sign-in method.
  <img width="575" alt="Sign-In Method" src="https://user-images.githubusercontent.com/22437935/60430433-43bbe600-9c38-11e9-86d3-b4974e334e88.png">
- Pilih field project support email Pilih/ganti dengan Email anda.
- Pilih google dan Aktifkan Radio Button di kanan atas Menajadi Enable.
  <img width="575" alt="Enable" src="https://user-images.githubusercontent.com/22437935/60430535-7fef4680-9c38-11e9-8f24-020108a360c9.png">



INSTALASI PROJECT
---------------------------------------------------------------------------------------------------------------------------

- Clone Project ini.
- Setting File Build.grandle di folder Project ( Android/app/build.grandle) ganti DefaultConfig : applicationId dengan android package
name: contoh(com.latihan3.project)  yang tadi anda sudah register.
  
  <img width="300" alt="set build grandle" src="https://user-images.githubusercontent.com/22437935/60432189-99928d00-9c3c-11e9-884f-2412e8f63fd9.png">
<img width="520" alt="app id" src="https://user-images.githubusercontent.com/22437935/60432240-b8911f00-9c3c-11e9-9593-fc15da251888.png">
<img width="534" alt="apply plugin" src="https://user-images.githubusercontent.com/22437935/60432246-bc24a600-9c3c-11e9-9dfb-5063cf439a82.png">
- Di paling bawah file build.grandle setelah depedencies tambahkan plugin (apply plugin : ‘com.google.gms.google.services’)
  
- Setelah itu Config File build.grandle yang kedua terletak di (android/build.grandle) jadi kita akan mengonfig 2 File Grandle tetapi yang satu di path (android/app/build.grandle) yang tadi sudah kira config diatas dan yang satu lagi di path(android/build.grandle) oke buka file build.grandle di path (android/build.grandle) tambahkan classpath didalam dependencies (classpath ‘com.google.gms:google-services:3.2.1’).

  <img width="639" alt="dependencies" src="https://user-images.githubusercontent.com/22437935/60432320-eece9e80-9c3c-11e9-8337-5fb91d2dee1c.png">
  
  
- Setelah itu Copy File google-services.json yang tadi sudah kita download ke Project kita paste di Path (android/app/).
  
  <img width="300" alt="google-services copy" src="https://user-images.githubusercontent.com/22437935/60430908-6995ba80-9c39-11e9-9c60-e2209858f60c.png">
- Pastikan Emulator kita berjalan dengan Baik.
- RUN Project dengan Menekan F5.



SELAMAT MENCOBA

Regards Michael.




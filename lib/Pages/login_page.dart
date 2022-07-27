import 'package:flutter/material.dart';
import 'package:login_page/Pages/otp_page.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
     var heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: heightSize * 0.33,
                    width: MediaQuery.of(context).size.width * 1,
                    child: FittedBox(fit: BoxFit.fitWidth, child: Image.asset('assets/loginAd.png'))),
                SizedBox(
                  height: heightSize * 0.07,
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),),
                  ),
                ),
                SizedBox(height: heightSize * 0.08, child: emailLogin()),
                Container(
                    height:  heightSize * 0.04,
                    alignment: Alignment.topRight,
                    child: TextButton(onPressed: (){}, child: const Text('want to Change Email?', style: TextStyle(fontSize: 12),))),
                SizedBox(height: heightSize * 0.03, child: const Center(child: Text('Or', style: TextStyle(fontSize: 14),))),
                SizedBox(height: heightSize * 0.08, child: phoneLogin()),
                Container(
                    height: heightSize * 0.04,
                    alignment: Alignment.topRight,
                    child: TextButton(onPressed: (){}, child: const Text('want to Change Mobile?', style: TextStyle(fontSize: 12),))),
                SizedBox(height: heightSize * 0.1, child: loginButton()),
                SizedBox(height: heightSize * 0.05, child: const Center(child: Text('OR', style: TextStyle(fontSize: 14),))),
                SizedBox(height: heightSize * 0.1,child: googleLoginButton()),
                SizedBox(
                  height: heightSize * 0.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const Text('new to the app?', style: TextStyle(fontSize: 14),),
                     TextButton(onPressed: (){}, child: const Text('Register', style: TextStyle(fontSize: 14),),)
                    ],
                  ),
                )
              ],
            ),
      ),
    );
  }
  LayoutBuilder emailLogin(){
    return LayoutBuilder(
      builder: (context, hw) {
        return Column(
          children: [
            SizedBox(
              child: ListTile(
                horizontalTitleGap: 10,
                minVerticalPadding: 0,
                minLeadingWidth: 0,
                leading:  const Icon(Icons.alternate_email_outlined, color: Colors.grey,),
                title: TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: const InputDecoration(
                      hintText: 'Email ID'
                  ),
                ),
              ),
            ),
          ],
        );
      }
    );

  }

  LayoutBuilder phoneLogin(){
    return LayoutBuilder(
      builder: (context, hw) {
        return Column(
          children: [
            SizedBox(
              child: ListTile(
                horizontalTitleGap: 10,
                minVerticalPadding: 0,
                minLeadingWidth: 0,
                leading:  const Icon(Icons.phone, color: Colors.grey,),
                title: TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      hintText: 'Mobile',
                  ),
                ),
              ),
            ),
          ],
        );
      }
    );
  }

  GestureDetector loginButton(){
    return GestureDetector(
      onTap: ()  {
         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OtpPage()),
      );},
      child: Center(
        child: Container(
          width: 340,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(child: Text('Login', style: TextStyle(fontSize: 20, color: Colors.white),)),
        ),
      ),
    );
  }

  GestureDetector googleLoginButton(){
    return GestureDetector(
      onTap: (){},
      child: Center(
        child: Container(
          width: 340,
          height: 50,

          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children:  [
                Image.asset('assets/GoogleLogo.png'),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 44),
                  child: Text('Login with Google', style: TextStyle(fontSize: 16),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

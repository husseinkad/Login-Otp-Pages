import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    var heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: heightSize * 0.5,
                width: MediaQuery.of(context).size.width * 1,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    FittedBox(fit: BoxFit.fill,child: Image.asset('assets/otpAd.png')),
                    SafeArea(child: IconButton(onPressed: (){ Navigator.pop(context); }, icon: const Icon(Icons.arrow_back_ios_new_outlined)))
                  ],
                )),
            SizedBox(
              height: heightSize * 0.1,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Text('Enter OTP', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
              ),
            ),
            SizedBox(
              height: heightSize * 0.03,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text('the 4 digit code has been sent to', style: TextStyle(fontSize: 12),),
              ),
            ),
            SizedBox(
              height: heightSize * 0.03,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text('+94 72543276623', style: TextStyle(fontSize: 12),),
              ),
            ),
            // const SizedBox(height: 50,),
            SizedBox(
              height: heightSize * 0.2,
              child: Form(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 64, width:  68,
                    child: TextFormField(
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1){},
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue)),
                        hintText: '0',
                        hintStyle: const TextStyle(color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(height: 64, width:  68,
                    child: TextFormField(
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1){},
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue)),
                        hintText: '0',
                        hintStyle: const TextStyle(color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(height: 64, width:  68,
                    child: TextFormField(
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1){},
                      decoration: InputDecoration(
                      filled: true,
                        fillColor: Colors.blue,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue)),
                        hintText: '0',
                        hintStyle: const TextStyle(color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(height: 64, width:  68,
                    child: TextFormField(
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1){},
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue)),
                        hintText: '0',
                        hintStyle: const TextStyle(color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),
                  ),

                ],
              )),
            ),
            SizedBox(
              height: heightSize * 0.14,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('want to change', style: TextStyle(fontSize: 14),),
                  TextButton(onPressed: (){}, child: const Text('Mobile ?', style: TextStyle(fontSize: 14),),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

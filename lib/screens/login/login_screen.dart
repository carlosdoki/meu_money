import 'package:flutter/material.dart';
import 'package:meu_money/constants.dart';
import 'package:meu_money/screens/home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBackgroundColor,
          appBar: AppBar(
            backgroundColor: kBackgroundColor,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Container(
            height: double.infinity,
            child: Column(
              children: <Widget>[
                Text(
                  "É a hora de iniciar a sua jornada!",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 32,
                  ),
                ),
                Text(
                  "Crie sua conta and inicie a transformação da suas finaças",
                  style: TextStyle(
                    color: kTextLightColor,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                _buildEmailTF(
                  onPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '- OU -',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Entrar com',
                      style: TextStyle(
                        color: kTextColor,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildSocialBtn(
                        () => print('Entrar com Facebook'),
                        // () => _FacebookLogInButton(),
                        AssetImage('assets/images/facebook.png'),
                        Colors.white,
                      ),
                      _buildSocialBtn(
                        // () => signInWithGoogle(),
                        () => print('Entrar com Google'),
                        AssetImage('assets/images/google_logo.png'),
                        Colors.white,
                      ),
                      // if (supportsAppleSignIn == true)
                      _buildSocialBtn(
                        () => print('Entrar com Apple'),
                        // () => signInWithApple(),
                        AssetImage('assets/images/apple.png'),
                        Colors.black,
                      ),
                      _buildSocialBtn(
                        () => print('Entrar com Itau'),
                        // () => signInWithApple(),
                        AssetImage('assets/images/itau.png'),
                        Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo, Color colors) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colors,
            boxShadow: [
              BoxShadow(
                color: Colors.white54,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              ),
            ],
            image: DecorationImage(
              image: logo,
            )),
      ),
    );
  }

  Widget _buildEmailTF({Function onPress}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          // decoration: BoxDecoration(
          //   border: true,
          // ),
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: kTextColor,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                hintStyle: TextStyle(
                  color: kTextLightColor,
                ),
                hintText: 'Digite o seu email'),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          // decoration: BoxDecoration(
          //   border: true,
          // ),
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                hintStyle: TextStyle(
                  color: kTextLightColor,
                ),
                hintText: 'Digite a sua senha'),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: FlatButton(
            onPressed: () => print('Botao esquecer senha pressionado'),
            padding: EdgeInsets.only(right: 0.0),
            child:
                Text('Esqueceu a senha', style: TextStyle(color: kTextColor)),
          ),
        ),
        Container(
          height: 20.0,
          child: Row(
            children: <Widget>[
              Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white),
                child: Checkbox(
                  value: true, //_rememberMe,
                  checkColor: Colors.green,
                  activeColor: Colors.white,
                  // onChanged: (value) {
                  //   setState(() {
                  //     // _rememberMe = value;
                  //   });
                  // },
                ),
              ),
              Text(
                'Lembrar',
                style: TextStyle(
                  color: kTextColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          width: double.infinity,
          child: RaisedButton(
            elevation: 5.0,
            onPressed: onPress,
            padding: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Colors.white,
            child: Text(
              'ENTRAR',
              style: TextStyle(
                color: Color(0xFF527DAA),
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

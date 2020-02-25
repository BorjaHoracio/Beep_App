import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          backgroundCircular(),
          icon(),
          texts(),
          button()
        ],
      )
    );
  }
   Widget backgroundCircular() {
    return Stack(
      children: <Widget>[
        Positioned(
          left: -298,
          top: -264,
          child: Container(
            width: 614,
            height: 614,
            decoration: BoxDecoration(
              color: Color.fromRGBO(187, 107, 217, .15),
              shape: BoxShape.circle
            ),
          ),
        ),
        Positioned(
          left: 203,
          top: -144,
          child: Container(
            width: 394,
            height: 394,
            decoration: BoxDecoration(
              color: Color.fromRGBO(187, 107, 217, .15),
              shape: BoxShape.circle
            ),
          ),
        ),
      ],
    );
  }

  Widget icon() {
    return Positioned(
      left: 30,
      top: 318,
      child: Container(
        child: Image(
          width: 46,
          height: 46,
          image: AssetImage('assets/img/Group.png'),
          fit: BoxFit.contain,
        )
      ),
    );
  }

  Widget texts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Container(
            margin: EdgeInsets.only(left: 30, right: 20, top: 140),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: 'Beeper ipsum dolor sit', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 48, color: Colors.black)),
                  TextSpan(text: ' amet', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 48, color: Color.fromRGBO(187, 107, 217, 1),)),
                ],
              ),
            )
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(left: 30, right: 20, top: 30),
            child: Text(
              'Proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(
                fontSize: 22,
              )
            ),
          ),
        )
      ],
    );
  }

  Widget button() {
    return GestureDetector(
      onTap: (){
        print('object');
      },
      child: Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 57.0),
          child: Container(
            alignment: AlignmentDirectional.center,
            height: 68,
            width: 323,
            child: Text(
              'COMENZAR',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(187, 107, 217, 1),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),
      ),
    );
  }
}
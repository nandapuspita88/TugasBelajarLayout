import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BelajarStackWidget(),
  ));
}

class BelajarStackWidget extends StatefulWidget {
  @override
  _BelajarStackWidgetState createState() => _BelajarStackWidgetState();
}

class _BelajarStackWidgetState extends State<BelajarStackWidget> {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.postimg.cc/W1dk93h5/image.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            left: 40.0,
            top: 100.0,
            child: Text(date.hour.toString() + ':' + date.minute.toString(), style: TextStyle(color: Colors.white, fontSize: 45.0)),
          ),
          Positioned(
            left: 40.0,
            top: 150.0,
            child: Text("Senin, 23 Mei 2022", style: TextStyle(color: Colors.white, fontSize: 16.0)),
          ),
          Positioned(
            left: 35.0,
            bottom: 150.0,
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: NetworkImage('https://i.postimg.cc/tJ5VZn7z/Whats-App-Infos-kostenloser-Download.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 112.0,
            bottom: 150.0,
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: NetworkImage('https://i.postimg.cc/W4hK5Mvh/Twitter.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            right: 112.0,
            bottom: 150.0,
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: NetworkImage('https://i.postimg.cc/B67rqMB5/Pinterest-red-app-icon.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            right: 35.0,
            bottom: 150.0,
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: NetworkImage('https://i.postimg.cc/hv5c5KYB/iphone-ios-14-app-icons-lavender-purple-violet-lilac-discord.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            right: 35.0,
            bottom: 60.0,
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: NetworkImage('https://i.postimg.cc/4Nx1vXZ3/Black-Aesthetic-Phone-App-Icon-for-Ios14.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            right: 112.0,
            bottom: 60.0,
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: NetworkImage('https://i.postimg.cc/MKnQKHq1/download-3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 112.0,
            bottom: 60.0,
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: NetworkImage('https://i.postimg.cc/HLrYbcvt/Documents-by-Readdle-on-the-App-Store.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 35.0,
            bottom: 60.0,
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: NetworkImage('https://i.postimg.cc/D07y42WQ/kathryn-on-Twitter-1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

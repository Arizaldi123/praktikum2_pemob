import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Penuhi Lindungi',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.lightBlue,
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Entering a public space?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Stay alert to stay safe',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.info, color: Colors.white),
                          SizedBox(height: 0.0),
                          Image.network(
                            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMIAAACUCAMAAAD26AbpAAAA6lBMVEX///+Z2PX/xKwwRk/x8fH/39L/wqnzn36o3vb/wKaV1/UpQUr/4dWg2/X/vqP/y7aSkpL/z7z3+Pj/+vgALDj/18f/ybD/9fH/283g4uMfOkQYNkD/7+n/593/08H1+/47UFgAJTL5tJhOX2bJzc+rsbRwfIHa8PvD5/nP7PrV2NlndHlGWF+hqKt5hIkAGyq6v8HwvKbKo5O5mItwaWf/p4FFRUVZaXCTnKCGkJUADyOUh4JXWFvLr6Tt2tMAN0YAACHkxLeDdnOpjYKZgXnYwrrasaCNal/gnoTDhG17ZF1pW1egdWb5mnOwRyM4AAAJV0lEQVR4nO2bCXeiaBaGVZZAQAkoiGwhcUvcYmI6mupMO5PUpLumu/7/35l7P0RwATEuUOfwnpPuOtVW132428uHFAq5cuXKlStXrly5cuXKlStXrly5cuX6kuhGg047hkNEt9qdZrPTbqQdyBeltIYjt2YIglHr9NIO5ivqDTsD0xAoIrP/y+WhMewPBD9+lDFMO6S9RI+bAogKy+j8Oj2ttKY3tdXwUQI1TjuyRFLo1si8MTDiDQjzF6gkpdGauQ+mgFfcbTbdAEJAKCPzDd0Yz6amSblw/d1mf3R11fHjN81mB3GMVtoxxokez/qCSS67Fz9qQMqn5r62e41xjaJqQyXtOCPVeu27puFdc/fKF2TBqNVG4x6ZRE2BEppZnUn0yA0WgNH3AQZU7WbaXrqjNqYhoxtamZrhBUYQRgOh9o0aNkKF03iAopqlF2acZjer47/faWJSZmtFQ3cMaOxsNsPaFoP5QzVft1QMNvRDJmcS/W0VwO2/jrde6wZsC6N/7vCSqPcQil/oz8ZR+4semRR1k8VK8rMgmLVmdPyoNiJk0idRpBdq1KzViL/EPVwNmaykmYkEbXpniSiv8Ekji9sNB77QTFLjbVjgQvvkAe0vZQoDf5Dk4jamUEnTkwf0BaF1eEhkHUYIm0WT0YB+Nl+TfLKNjZ/FGx8aL66Z5JMNmElGJ4urASvpJlkloePOYiX1Bnhxk3xyLGT0MIZYh0SVVMjsYQxaByORdcC2cbNoV9E6JDOhvRu8hT51PF+QMkq63QpmZisJB34i64A+ScjiTMKBLySaSXh7UcuiTyr0jaQD34W2mWaykvAUMlGbDvEwJosnk7QLbTpKYh3Qm2dyJiWvJBo/KWTRJ7WgPsxEbZrcm59biDBK0qY9QYBPnjyeLwgP69xElZTYm59bxDok8knkMCaLlaQIQkLr0Erszc8ttA5mkoGPlURRWdxuvW/xA9+yRdsivxqaGT2MoclznKiBb1cqPM/DP1QLvLmRzWM9Ba3DQ0Ql6ZXSQmyFVX8fUOYgiyajZ0Q+x7HZUkis9jh5fstiJTWIddj2X+rSCgJI0p7+ZVXPHeFuRVYSs04A0kqaap09xF1qwb3AtmO9urwFAQtKss8fZLy8gb/5+/Z2AmBgM8dABv7GEUtV5SMQSiU+awyt5jbrYJWisoCJyFg/KGhXN76lYFeiCaAfMjaXZvjcbc2uVp3oOkIGJ1sM5IB47XamLsURgMR0Yo1SHx9Fra6GuqrKsWnQstUOQ2HjWM9iRCY2Edkppbpl2/Yf5KHVil21ASE2DZmYrFXbKfE8C9Ka689xqoy4zIIWwVBJPQ02X/EnvzbBk4zwTKozoq36jRtRUKyUWuye9PDc1+ZYSaHVUGeYRRJYddOx+mlIt5TqK5tLfsZHDaGZZIuMviggqxDh94C8Xk+PYG35ak/z1cMYaAVnkYRCwYkgAHRHt62qoviToNvtXl+fC2E1C6VHA7dbUEm6qGpevcN11qPdEsvzkkWDFKLLYpnj7u7ugeT0CFVpxUBo73j/GSDw3hxiS1gpdiQBfkSmA10WL1FFJOGA5LQpsfgQA8s/fZvP/42HMbAoGN2u63h2UdHI3KzHeFZYcQFBF4L35JOUy6ckqTveUuChFnRR/3j6fJSkElspyTL8y67aDON7iKjNQBDEAOF+iRCSR1NGkuNDVC1bFKEd0ZaymqYBQUlyRJTKLm0c3Rh+xiDwfwQId9sQQiCXkBNs+ONnpa6RmpIkSWOBgEGpEpmXdK/dN2+eY9wSG0LgohFQZa5cvsR2IdXVPSaJQ2pdwxxIHgAuNhviH48EfK1hHoOgWQFCLECxyGFzwM8iJUXS8UcZw5a3fTUNe3OJ4Pyn/Tqoed/qnk8iGVgphBCfhCJ36TGs1BbkBqbwgWN4MTNJFuQAYeK9ViW4riAMIhualQOE61iE8iVHamn99xddUuYORMA+wB+ZWRbS9zn5Jmv/6mpECZFpAAu1ZaZu6wOOI82wgbAkOQABbZzkFRJYBi8Novo5IDloklcCjOZjBALP7JipPkIZAOKSVCwegAAGAsdpSfIYwB6JjPP4TJLgdshrDYbwHlFK4bUQM1NJ+DsYDkGoyiwsM5aFRGAqHkGTgVdG1JS82ABT6WM7QwihGhdhVP0cCQHu0WAjS/Lj59PT0+Tj+/f357c313tFxh15r/cI7mQbA6vZAUJk+NgDm318VAR0RqD/vr+///7xMUGr8Tl59t5wcKd9ryuo71v6ITxTlSgCsg8i+/hYCCQTElSSBLXk6CDoBo+BvK0nzIW3P//atHsrMzUiNHL9T11ISCDzfoAOA1MJOvrzTfBf0Zu//fnjr9vbLQhqyKfGZuH0CMtzbNZfDbr0ThAgAf/7cXFxu/WAktUTzFRshd0EByMEN3FysJ8x/vnfEP/FRcQtQxjhLjK4XRvhKAhW8GzTt0miMxGEtx8XvyFBlMHQQmshJs5zZCE4DVgWEiN//HPxGwGIJCiFZmocQiIdLQulkuqlwWG9BICiAFZ9apIrfUKEghzqVkdndNXRbhcAF9EPS8L3/t0VhHLCHj4igqUtRxKYPtjV/JLgNpLAQ8DTFxxIKwS4j7ndG/mYCAVLrqB4cHu3oItAMU+s8PhC6V1dNZTVgcRxHsdeDAcjFKp1267Dj+0gCbCwlV1JKJVgpjY6Ly8jhVZCPtU3RBy3T4sfjoAS0a+Sy6uC41a1nQgiJOHt5eWtsXLvz3GLnbxXGo5CsOxpVsepJIqlSIQFKsxUZfTydlXYQPB+zo2w/NIFu7x3u92KgB3viFB1Itx1KnR7DK1wvYJQTgehujyE51V/vVU2EFie1WRVXJzKk2lEBlK3HEbgFiPpzAjBoxBe9xFWsoCHlyVZZ6y1pwrkUDvsU73g9yQ4CoK8WUiLXsCj1wqvOYy9Hv5S9+QcOEiDpz0IjtILTmBHF+18+/Pnz1sNT1p1EaKPez7YvbsrLw63vDSU9yQ4CkL4myM6DFVZlkVYFVWi3X8cj3u73Tuu6B3S7esvjjNULTypJ1+JhM0mq19+Gqh07++4ZUrOigCmWycVc5z/2TWSYDKS0RznLz2FrgkJolzGo6Qd6E5Bm9zfIUpkTtKOMKGw4e8RZQtJ2rHtJTK6SFLKIZC0o/qS/DHsTa+0ozlI16Tl044iV65cuXLlypUrV65c2dX/ASyT32Q5UAocAAAAAElFTkSuQmCC',
                            height: 60,
                            width: 60,
                          ),
                        ])
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_downward, color: Colors.black),
                    SizedBox(width: 8.0),
                    Text(
                      'Check-In Preference',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.document_scanner, color: Colors.blue),
                          SizedBox(width: 8.0),
                          Text(
                            'Check-in',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: MenuCard(
                      backgroundColor: Colors.yellow,
                      icon: Icons.assignment,
                      title: 'COVID-19 Vaccine',
                    ),
                  ),
                  Expanded(
                    child: MenuCard(
                      backgroundColor: Colors.red,
                      icon: Icons.medical_information,
                      title: 'COVID-19 Test Results',
                    ),
                  ),
                  Expanded(
                    child: MenuCard(
                      backgroundColor: Colors.green,
                      icon: Icons.security,
                      title: 'EHAC',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: MenuCard(
                      backgroundColor: Colors.green,
                      icon: Icons.shopping_bag,
                      title: 'Travel Regulations',
                    ),
                  ),
                  Expanded(
                    child: MenuCard(
                      backgroundColor: Colors.yellow,
                      icon: Icons.medical_services,
                      title: 'Telemedicine',
                    ),
                  ),
                  Expanded(
                    child: MenuCard(
                      backgroundColor: Colors.green,
                      icon: Icons.local_hospital,
                      title: 'Healthcare Facility',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final Color backgroundColor;
  final IconData icon;
  final String title;

  MenuCard(
      {required this.backgroundColor, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Icon(
                icon,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            title,
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

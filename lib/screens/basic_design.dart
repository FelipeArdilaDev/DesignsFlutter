import 'package:flutter/material.dart';

class BasicDesgignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagen
          Image(image: AssetImage('assets/landscape.jpg')),

          // Titulo
          Title(),

          // Buttom section
          ButtomSection(),

          // Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text(
                'Eiusmod qui tempor proident nisi nulla incididunt ipsum qui velit consequat. Elit ut adipisicing laborum dolor ea consectetur nulla cillum officia elit irure esse. Lorem elit ut cupidatat excepteur labore labore voluptate id id culpa. Eiusmod occaecat ut cillum reprehenderit sunt aliqua ea non ea cupidatat. Irure adipisicing ut cupidatat enim est nisi quis fugiat consequat ex culpa et. Deserunt aliquip cupidatat est sit. Consequat commodo aute reprehenderit non nisi ad laboris dolore cupidatat deserunt fugiat dolor occaecat.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtomSection extends StatelessWidget {
  const ButtomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButtom(icon: Icons.call, text: 'Call'),
          CustomButtom(icon: Icons.location_on_outlined, text: 'Route'),
          CustomButtom(icon: Icons.share, text: 'Share')
        ],
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButtom({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blueAccent,
          size: 30,
        ),
        Text(text, style: TextStyle(color: Colors.blueAccent)),
      ],
    );
  }
}

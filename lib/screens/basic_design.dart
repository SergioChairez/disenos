import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: const [
            // Image
            Image(image: AssetImage('assets/landscape.jpg')),

            // Title
            Title(),

            //Button Section
            ButtonSection(),
            
            // Description
            Description()
          ]
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 30, vertical: 30 ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold ),),
              SizedBox( height: 8, ),
              Text('Kandersteg, Switzerland', style: TextStyle( color: Colors.black45 ),)
            ],
          ),
          
          Expanded(child: Container()),
          
          const Icon(Icons.star, color: Colors.red,),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [

        CustomButton(icon: Icons.phone, text: 'CALL'),
        CustomButton(icon: Icons.navigation, text: 'ROUTE'),
        CustomButton(icon: Icons.share, text: 'SHARE'),

      ],
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( icon, color: Colors.blue, ),
        Text( text, style: const TextStyle( color: Colors.blue, ),)
      ],
    );
  }
}

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 20 ),
      child: const Text('Mensas studere, tanquam varius luba.Mensas studere, tanquam varius luba.Mensas studere, tanquam varius luba.Mensas studere, tanquam varius luba.Mensas studere, tanquam varius luba.Mensas studere, tanquam varius luba.Mensas studere, tanquam varius luba.Mensas studere, tanquam varius luba.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}




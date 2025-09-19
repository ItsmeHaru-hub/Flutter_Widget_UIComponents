import 'package:flutter/material.dart'; 
import 'package:expansion_tile_card/expansion_tile_card.dart'; 

void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget { 
@override 
Widget build(BuildContext context) { 
	return MaterialApp( 
	title: 'ExpansionTileCard', 
	theme: ThemeData( 
		primarySwatch: Colors.green, 
	), 
  debugShowCheckedModeBanner: false,
	home: MyHomePage(title: "GeekForGeeks"), 
	); 
} 
} 
class MyHomePage extends StatefulWidget { 
MyHomePage({super.key, required this.title});

final String title;

@override 
_MyHomePageState createState() => _MyHomePageState(); 
} 

class _MyHomePageState extends State<MyHomePage> { 
final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey(); 
final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey(); 

@override 
Widget build(BuildContext context) { 
	return Scaffold( 
	appBar: AppBar( 
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
		title: Text(widget.title), 
	), 
	body: ListView(
		children: <Widget>[
			Padding(
				padding: const EdgeInsets.symmetric(horizontal: 12.0),
				child: ExpansionTileCard(
					key: cardB,
					leading: CircleAvatar(child: Text('A')),
					title: Text('Tap to Expand!'),
					subtitle: Text('It has the GFG Logo.'),
					children: <Widget>[
						Divider(
							thickness: 1.0,
							height: 1.0,
						),
						Align(
							alignment: Alignment.center,
							child: Padding(
								padding: const EdgeInsets.symmetric(
									horizontal: 16.0,
									vertical: 8.0,
								),
								child: Image.network('https://i.imgur.com/utyq2su.png')
							),
						),
					],
				),
			),
			// Additional ExpansionTileCards
			Padding(
				padding: const EdgeInsets.symmetric(horizontal: 12.0),
				child: ExpansionTileCard(
					leading: CircleAvatar(child: Text('B')),
					title: Text('Addtional Tile Card'),
					subtitle: Text('Tap to see Photos'),
					children: <Widget>[
						Divider(thickness: 1.0, height: 1.0),
						Align(
							alignment: Alignment.center,
							child: Padding(
								padding: const EdgeInsets.symmetric(
									horizontal: 16.0,
									vertical: 8.0,
								),
								child: Image.network('https://i.imgur.com/o2LgzKl.jpeg'),
							),
						),
					],
				),
			),
			Padding(
				padding: const EdgeInsets.symmetric(horizontal: 12.0),
				child: ExpansionTileCard(
					leading: CircleAvatar(child: Text('C')),
					title: Text('Addtional Tile Card'),
					subtitle: Text('Tap to see Photos'),
					children: <Widget>[
						Divider(thickness: 1.0, height: 1.0),
						Align(
							alignment: Alignment.center,
							child: Padding(
								padding: const EdgeInsets.symmetric(
									horizontal: 16.0,
									vertical: 8.0,
								),
								child: Image.network('https://i.imgur.com/qHSpAGY.jpeg'),
							),
						),
					],
				),
			),
			Padding(
				padding: const EdgeInsets.symmetric(horizontal: 12.0),
				child: ExpansionTileCard(
					leading: CircleAvatar(child: Text('D')),
					title: Text('Addtional Tile Card'),
					subtitle: Text('Tap to see Photos'),
					children: <Widget>[
						Divider(thickness: 1.0, height: 1.0),
						Align(
							alignment: Alignment.center,
							child: Padding(
								padding: const EdgeInsets.symmetric(
									horizontal: 16.0,
									vertical: 8.0,
								),
								child: Image.network('https://i.imgur.com/nSmCK51.jpeg'),
							),
						),
					],
				),
			),
			Padding(
				padding: const EdgeInsets.symmetric(horizontal: 12.0),
				child: ExpansionTileCard(
					leading: CircleAvatar(child: Text('E')),
					title: Text('Addtional Tile Card'),
					subtitle: Text('Tap to see Photos'),
					children: <Widget>[
						Divider(thickness: 1.0, height: 1.0),
						Align(
							alignment: Alignment.center,
							child: Padding(
								padding: const EdgeInsets.symmetric(
									horizontal: 16.0,
									vertical: 8.0,
								),
								child: Image.network('https://i.imgur.com/WxmKG1B.jpeg'),
							),
						),
					],
				),
			),
		],
	),
	);
}
}


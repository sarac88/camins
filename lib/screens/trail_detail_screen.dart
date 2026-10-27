import 'package:camins/data/sample_images.dart';
import 'package:camins/models/phase.dart';
import 'package:camins/styles/app_styles.dart';
import 'package:camins/widgets/stat_item.dart';
import 'package:camins/widgets/tag_chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TailDetailScreen extends StatelessWidget {
  	const TailDetailScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: AppStyles.background,
			body: ListView(
				padding: .zero,
				children: [
					Stack(
					  	children: [
							Container(
								height: 320,
								decoration: BoxDecoration(
									image: DecorationImage(
										image: AssetImage('assets/images/header.jpg'),
										fit: .cover,
									),
								),
							),
							Positioned.fill(
								child: Container(
									height: 250,
									decoration: BoxDecoration(
										gradient: AppStyles.imageShade.gradient,
									),
								),
							),
							Positioned(
								left: 16,
								bottom: 16,
								right: 16,
							  	child: Column(
									crossAxisAlignment: .start,
									children: [
										Container(
											decoration: BoxDecoration(
												color: AppStyles.orange,
												borderRadius: .circular(20),
											),
											child: Padding(
												padding: .symmetric(horizontal: 8, vertical: 4),
												child: Text("PIRINEU · VAL D'ARAN", style: TextStyle(
													color: Colors.white,
													fontWeight: .bold,
													fontSize:10,
													letterSpacing: 1.5,)
												),
											),
										),
										AppStyles.tinySeparator,
										Text('Circuit dels Estanys de Colomers', style: AppStyles.mainTitle),
										AppStyles.tinySeparator,
										Row(
											children: [
											Icon(Icons.star, size:16, color:AppStyles.orange),
											AppStyles.tinySeparator,
											Text('4,8', style: TextStyle(
												color: Colors.white,
												fontWeight: .bold
												),
											),
											AppStyles.tinySeparator,
											Text('(126 opinions)', style: TextStyle(
												color: CupertinoColors.inactiveGray
												),
											),
											],
										),
									],
								),
							)
						],
					),
					Padding(
					  padding: .all(20),
					  child: Column(
					    children: [
							Container(
								height: 88,
								padding: .all(8.0),
								decoration: BoxDecoration(
									color: Colors.white,
									borderRadius: .circular(20) ,
									boxShadow: [
										BoxShadow(
											color: Colors.black.withValues(alpha: 0.1),
											blurRadius: 10,
											offset: Offset(0, 5),
										),
									],
								),
								child: Row(
									mainAxisAlignment: MainAxisAlignment.spaceEvenly,
									children: [
										StatItem(icon: Icons.route, text: '9,4 km', info: 'Distáncia'),
										VerticalDivider(width: 1, thickness: 1, indent: 4, endIndent: 4, color: Colors.grey.shade200),
										StatItem(icon: Icons.trending_up, text: '620 m', info: 'Desnivell'),
										VerticalDivider(width: 1, thickness: 1, indent: 4, endIndent: 4, color: Colors.grey.shade200),
										StatItem(icon: Icons.schedule, text: '3 h 45', info: 'Durada'),
										VerticalDivider(width: 1, thickness: 1, indent: 4, endIndent: 4, color: Colors.grey.shade200),
										StatItem(icon: Icons.terrain, text: 'Moderada', info: 'Dificultat', iconColor: AppStyles.orange),
									],
								),
							),
							AppStyles.mediumSeparator,
							Column(
								crossAxisAlignment: .start,
								children: [
								Text(
									'Sobre la ruta',
									style: AppStyles.sectionTitle,
								),
								AppStyles.tinySeparator,
								Text(
									"Una volta circular pel cor del circ de Colomèrs, amb una desena d'estanys d'origen glacial. El camí està ben senyalitzat i la pujada és constant però sense trams tècnics. Ideal per a finals de primavera i estiu.",
									style: TextStyle(
										fontSize: 14,
										color: AppStyles.greyText
									),
								),
							],),
					      AppStyles.mediumSeparator,
					      Wrap(
					      	spacing: 8,     
					      	runSpacing: 8,  
					      	children: [
					      		TagChip(
					      			icon: Icons.people,
					      			label: 'Circular'		
					      		),
					      		TagChip(
					      			icon: Icons.people,
					      			label: 'Estanys'		
					      		),
					      		TagChip(
					      			icon: Icons.people,
					      			label: 'Gossos permesos'		
					      		),
					      		TagChip(
					      			icon: Icons.people,
					      			label: "Font d'aigua"		
					      		),
					      		TagChip(
					      			icon: Icons.people,
					      			label: "Refugi"		
					      		),
					      	],
					      ),
					      AppStyles.bigSeparator,
					      Column(
					      	crossAxisAlignment: .start,
					      	children: [
					      		Row(
					      			mainAxisAlignment: .spaceBetween,
					      			children: [
					      				Text(
					      					'Fotos',
					      					style: AppStyles.sectionTitle,
					      				),
					      				Text(
					      					'Veure-les totes',
					      					style: TextStyle(
					      						color: AppStyles.green,
					      						fontWeight: .w600,
					      					),
					      				),
					      			],
					      		),
					      		SizedBox(height: 12),
					      		GridView.count(
					      			padding: .zero,
					      			crossAxisCount: 3,
					      			crossAxisSpacing: 8,
					      			mainAxisSpacing: 8,
					      			shrinkWrap: true,
					      			children: [
					      				for (final image in images)
					      					ClipRRect(
					      						borderRadius: BorderRadius.circular(12),
					      						child: Image.asset(image.imageUrl, fit: .cover),
					      					),
					      			],
					      		),
					      	],
					      ),
					      AppStyles.bigSeparator,
					      Column(
					      	crossAxisAlignment: .start,
					      	children: [
					      		Text(
					      			'Etapes',
					      			style: AppStyles.sectionTitle,
					      		),
					      		AppStyles.mediumSeparator,
					      		for (final (i, phase) in phases.indexed)
					      			Padding(
					      				padding: EdgeInsets.only(bottom: 20),
					      				child: Row(
					      					children: [
					      						Container(
					      							width: 28,
					      							height: 28,
					      							alignment: .center,
					      							decoration: BoxDecoration(
					      								color: AppStyles.green.withValues(alpha: 0.12),
					      								shape: .circle,
					      							),
					      							child: Text(
					      								'${i + 1}',
					      								style: TextStyle(
					      									color: AppStyles.green,
					      									fontWeight: .bold,
					      									fontSize: 13,
					      								),
					      							),
					      						),
					      						AppStyles.mediumSeparator,
					      						Expanded(
					      							child: Column(
					      								crossAxisAlignment: .start,
					      								children: [
					      									Text(
					      										phase.nom,
					      										style: TextStyle(fontSize: 15, fontWeight: .w600),
					      									),
					      									SizedBox(height: 2),
					      									Text(
					      										phase.detall,
					      										style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
					      									),
					      								],
					      							),
					      						),
					      						Text(
					      							phase.temps,
					      							style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
					      						),
					      					],
					      				),
					      			),
					      	],
					      ),
					    ],
					  ),
					)
				],
			),
			bottomNavigationBar: SafeArea(
				child: Container(
					padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
					decoration: BoxDecoration(
						color: Colors.white,
						border: Border(top: BorderSide(color: Colors.grey.shade200)),
					),
					child: Row(
						children: [
							Expanded(
								child: Column(
									mainAxisSize: .min,
									crossAxisAlignment: .start,
									children: [
										Text(
											'Punt de sortida',
											style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
										),
										Text(
											'Banys de Tredòs',
											style: TextStyle(fontSize: 15, fontWeight: .bold),
										),
									],
								),
							),
							OutlinedButton(
								onPressed: () {
									// Descargar
								},
								style: OutlinedButton.styleFrom(
									padding: EdgeInsets.all(12),
									minimumSize: Size(48, 48),
									side: BorderSide(color: Colors.grey.shade300),
									shape: RoundedRectangleBorder(
										borderRadius: BorderRadius.circular(14),
									),
								),
								child: Icon(Icons.download, color: Colors.black87),
							),
							SizedBox(width: 8),
							FilledButton.icon(
								onPressed: () {
									// Empezar ruta
								},
								icon: Icon(Icons.navigation),
								label: Text('Començar'),
								style: FilledButton.styleFrom(
									backgroundColor: AppStyles.green,
									minimumSize: Size(0, 48),
									padding: EdgeInsets.symmetric(horizontal: 20),
									shape: RoundedRectangleBorder(
										borderRadius: BorderRadius.circular(14),
									),
								),
							),
						],
					),
				),
			),
		);
	}
}
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:ui_kit/ui_kit.dart';

class ExerciseModel {
  final int id;
  final String name;
  final String description;

  ExerciseModel({
    required this.id,
    required this.name,
    required this.description,
  });

  factory ExerciseModel.fromJson(Map<String, dynamic> json) {
    return ExerciseModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }
}

Future<List<ExerciseModel>> loadExercisesFromAsset() async {
  final jsonString = await rootBundle.loadString('assets/data.json');
  final List<dynamic> jsonList = json.decode(jsonString);
  return jsonList.map((json) => ExerciseModel.fromJson(json)).toList();
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<ExerciseModel>> futureExercises;

  @override
  void initState() {
    super.initState();
    futureExercises = loadExercisesFromAsset();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ExerciseModel>>(
      future: futureExercises,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            itemCount: snapshot.data!.length,
            separatorBuilder: (context, index) => Gap(6.0),
            itemBuilder: (context, index) => ListTile(
              title: Text(
                snapshot.data![index].name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                snapshot.data![index].description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {},
              textColor: AppColors.color99001F,
              splashColor: AppColors.color99001F.withAlpha(20),
            ),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

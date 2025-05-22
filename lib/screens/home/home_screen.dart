import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:my_app/models/exercise.dart';
import 'package:my_app/navigation_service.dart';
import 'package:ui_kit/ui_kit.dart';

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
    final navigation = NavigationService();

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
              onTap: () => navigation.goExercise(
                id: snapshot.data![index].id,
              ),
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planks_and_plants/features/plank/plank_screen.dart';
import 'package:planks_and_plants/features/planks/bloc/planks_bloc.dart';
import 'package:planks_and_plants/features/planks/bloc/planks_state.dart';
import 'package:planks_and_plants/main.dart';
import 'package:planks_and_plants/navigation/app_routes.dart';

class PlanksScreen extends StatelessWidget {
  const PlanksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlanksBloc(),
      child: BlocBuilder<PlanksBloc, PlanksState>(
        builder: (context, state) {
          if (state.screenState == PlanksScreenState.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.screenState == PlanksScreenState.error) {
            return Center(child: Text(state.errorMessage));
          }

          return ListView.builder(
            itemCount: state.planks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.planks[index].title),
                onTap: () {
                  router.pushNamed(
                    AppRoutes.plank.name,
                    extra: PlankScreenArgs(
                      plank: state.planks[index],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:chopper_demo/app/controller/app_controller.dart';
import 'package:chopper_demo/app/model/app.model.dart';
import 'package:chopper_demo/app/service/app.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(
          appService: ChopperConstants.chopper.getService<AppService>()),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const CircularProgressIndicator.adaptive(),
            completed: (model) {
              if (model.products != null && model.products!.isNotEmpty) {
                return ListView.builder(
                  itemCount: model.products?.length,
                  itemBuilder: (BuildContext context, int index) {
                    final data = model.products![index];
                    return Center(
                      child:
                          Text('${data.id} - ${data.brand} - ${data.category}'),
                    );
                  },
                );
              }

              return const Center(
                child: Text('No Data'),
              );
            },
          );
        },
      ),
    );
  }
}

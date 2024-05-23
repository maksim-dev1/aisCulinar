import 'package:bloc/bloc.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';
part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc() : super(_Initial()) {
    on<RecipeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

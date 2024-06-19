import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/UI/widgets/card_recipe_for_list.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeSearchScreen extends StatelessWidget {
  final String category;

  const RecipeSearchScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<RecipeBloc>(context),
      child: Scaffold(
        body: RecipeSearchScreenBody(category: category),
      ),
    );
  }
}

class RecipeSearchScreenBody extends StatefulWidget {
  final String category;

  const RecipeSearchScreenBody({Key? key, required this.category})
      : super(key: key);

  @override
  State<RecipeSearchScreenBody> createState() => _RecipeSearchScreenBodyState();
}

class _RecipeSearchScreenBodyState extends State<RecipeSearchScreenBody> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  String? _selectedCategory;
  int _selectedCookingTime = 0;
  bool _isClearButtonActive = false;

  final List<int> _cookingTimesInMinutes = [
    15,
    30,
    45,
    60,
    75,
    90,
    105,
    120,
    121,
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_searchFocusNode);
    });
    _selectedCategory = widget.category.isNotEmpty ? widget.category : null;
    _filterRecipes();
    _loadRecipes();
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  void _clearSearch() {
    setState(() {
      _searchController.clear();
    });
    _searchRecipes('');
  }

  void _searchRecipes(String query) {
    BlocProvider.of<RecipeBloc>(context).add(SearchRecipes(query));
  }

  void _loadRecipes() {
    final category = widget.category.isNotEmpty ? widget.category : '';
    BlocProvider.of<RecipeBloc>(context).add(GetRecipesByCategory(category));
  }

  void _filterRecipes() {
    if (_selectedCategory != null || _selectedCookingTime != 0) {
      String selectedTime = _selectedCookingTime.toString();
      BlocProvider.of<RecipeBloc>(context).add(FilterRecipes(
        _selectedCategory ?? '',
        selectedTime,
      ));
      setState(() {
        _isClearButtonActive = true;
      });
    } else {
      setState(() {
        _isClearButtonActive = false;
      });
    }
  }

  void _clearFilters() {
    setState(() {
      _selectedCategory = null;
      _selectedCookingTime = 0;
      _isClearButtonActive = false;
    });
    BlocProvider.of<RecipeBloc>(context).add(const LoadRecipes());
  }

  int _countActiveFilters() {
    int count = 0;
    if (_selectedCategory != null) count++;
    if (_selectedCookingTime != 0) count++;
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: arrowLeftIcon,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              focusNode: _searchFocusNode,
              onChanged: (query) => _searchRecipes(_searchController.text),
              decoration: InputDecoration(
                labelText: 'Поиск',
                labelStyle: Theme.of(context).textTheme.labelSmall,
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                ),
                suffixIcon: IconButton(
                  onPressed: _clearSearch,
                  icon: deleteTextIcon,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return AlertDialog(
                            title: const Text('Фильтры'),
                            content: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Wrap(
                                    spacing: 4,
                                    runSpacing: -10,
                                    children: [
                                      'Завтрак',
                                      'Обед',
                                      'Ужин',
                                      'Десерт',
                                      'Салаты',
                                      'Закуски'
                                    ].map((String category) {
                                      return ChoiceChip(
                                        label: Text(
                                          category,
                                          style: GoogleFonts.inter(
                                            textStyle: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        selected: _selectedCategory == category,
                                        onSelected: (bool selected) {
                                          setState(() {
                                            _selectedCategory =
                                                selected ? category : null;
                                            _isClearButtonActive =
                                                _countActiveFilters() > 0;
                                          });
                                        },
                                      );
                                    }).toList(),
                                  ),
                                  const SizedBox(height: 16),
                                  const Text('Время приготовления:'),
                                  Wrap(
                                    spacing: 4,
                                    runSpacing: -10,
                                    children:
                                        _cookingTimesInMinutes.map((int time) {
                                      String label;
                                      if (time > 120) {
                                        label = 'Более 120 минут';
                                      } else {
                                        label = '$time минут';
                                      }
                                      return ChoiceChip(
                                        label: Text(
                                          label,
                                          style: GoogleFonts.inter(
                                            textStyle: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        selected: _selectedCookingTime == time,
                                        onSelected: (bool selected) {
                                          setState(() {
                                            _selectedCookingTime =
                                                selected ? time : 0;
                                            _isClearButtonActive =
                                                _countActiveFilters() > 0;
                                          });
                                        },
                                      );
                                    }).toList(),
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: _isClearButtonActive
                                            ? () {
                                                _clearFilters();
                                                Navigator.of(context).pop();
                                              }
                                            : null,
                                        child: Text(
                                          'Сбросить (${_countActiveFilters()})',
                                          style: GoogleFonts.inter(
                                            textStyle: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          _filterRecipes();
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'Применить',
                                          style: GoogleFonts.inter(
                                            textStyle: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Фильтры',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: secondaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    if (_isClearButtonActive)
                      Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: filterIcon),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: BlocBuilder<RecipeBloc, RecipeState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return Center(
                    child: AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircularProgressIndicator(
                            color: secondaryColor,
                          ),
                          const SizedBox(height: 16),
                          const Text('Loading...'),
                        ],
                      ),
                    ),
                  );
                  } else if (state is Loaded) {
                    if (state.recipes.isEmpty) {
                      return Center(child: Text('No recipes found.'));
                    }
                    return ListView.builder(
                      itemCount: state.recipes.length,
                      itemBuilder: (context, index) {
                        final recipe = state.recipes[index];
                        return CardRecipeForList(recipe: recipe);
                      },
                    );
                  } else if (state is Error) {
                    return Center(child: Text('Error: ${state.message}'));
                  }
                  return Center(child: Text('Start searching for recipes.'));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

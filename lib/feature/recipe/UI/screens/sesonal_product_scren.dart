import 'package:culinar/design/colors.dart';
import 'package:culinar/design/icons.dart';
import 'package:culinar/feature/recipe/bloc/recipe_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeasonalProductDetailScreen extends StatefulWidget {
  final String productId;

  const SeasonalProductDetailScreen({super.key, required this.productId});

  @override
  State<SeasonalProductDetailScreen> createState() =>
      _SeasonalProductDetailScreenState();
}

class _SeasonalProductDetailScreenState
    extends State<SeasonalProductDetailScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      try {
        if (kDebugMode) {
          print('Adding LoadSeasonalProductDetail event');
        }
        BlocProvider.of<SesonalProductBloc>(context)
            .add(LoadSeasonalProductDetail(widget.productId));
      } catch (e) {
        if (kDebugMode) {
          print('Error: $e');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SesonalProductBloc, RecipeState>(
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
      } else if (state is SeasonalProductDetailLoaded) {
        final product = state.seasonalProduct;

        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                surfaceTintColor: Colors.transparent,
                elevation: 0,
                snap: false,
                floating: false,
                pinned: true,
                automaticallyImplyLeading: false,
                expandedHeight: 500,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      if (product.productIdImage.isNotEmpty)
                        Image.network(product.productIdImage,
                            fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 35, left: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: arrowLeftIcon,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(30),
                  child: Container(
                    height: 65,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, top: 5, right: 30),
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.6,
                            ),
                            child: Text(
                              product.title,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                      ],
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                _buildSectionTitle('Описание продукта'),
                                const SizedBox(height: 9),
                                _buildSectionContent(product.description),
                                const SizedBox(height: 22),
                                _buildSectionTitle('История'),
                                const SizedBox(height: 9),
                                _buildSectionContent(product.history),
                                const SizedBox(height: 22),
                                _buildSectionTitle('Сезон'),
                                const SizedBox(height: 9),
                                _buildSectionContent(product.season),
                                const SizedBox(height: 22),
                                _buildSectionTitle('Вкус'),
                                const SizedBox(height: 9),
                                _buildSectionContent(product.taste),
                                const SizedBox(height: 22),
                                _buildSectionTitle('Польза и вред'),
                                const SizedBox(height: 9),
                                _buildSectionContent(product.benefitsAndHarms),
                                const SizedBox(height: 22),
                                _buildSectionTitle('Хранение'),
                                const SizedBox(height: 9),
                                _buildSectionContent(product.storage),
                                const SizedBox(height: 22),
                                _buildSectionTitle('Рекомендации'),
                                const SizedBox(height: 9),
                                _buildSectionContent(product.recommendation),
                                const SizedBox(height: 25),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        );
      } else if (state is Error) {
        return Center(child: Text(state.message));
      } else {
        return const Center(child: Text('Unknown state'));
      }
    });
  }

  Widget _buildSectionTitle(String title) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Text(
              content,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

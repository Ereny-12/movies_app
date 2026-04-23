import 'package:flutter/material.dart';
import 'package:movies_app/core/resources/colors_manager.dart';

import '../../core/shared_widgets/bottom_nav_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body:  SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              _CustomSearchBar(),
              Expanded(child: _EmptyStateView()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}

class _CustomSearchBar extends StatelessWidget {
  const _CustomSearchBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:ColorsManager.gray ,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const TextField(
        style: TextStyle(color: ColorsManager.white),
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: ColorsManager.white),
          prefixIcon: Icon(Icons.search, color: ColorsManager.white),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}
class _EmptyStateView extends StatelessWidget {
  const _EmptyStateView();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.local_movies_rounded,
            size: 100,
            color: ColorsManager.gray.withOpacity(0.8),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}


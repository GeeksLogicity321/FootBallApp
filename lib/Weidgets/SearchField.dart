import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchField extends StatelessWidget {
  SearchField({
    super.key,
  });

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.h,
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search...',
          // Add a clear button to the search bar
          // fillColor:,
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () => _searchController.clear(),
          ),
          // Add a search icon or button to the search bar
          prefixIcon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Perform the search here
            },
          ),
        ),
      ),
    );
  }
}

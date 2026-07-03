import 'package:flutter/material.dart';
import 'package:skyscout/colors.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController searchController;
  final VoidCallback onSearch;
  final bool isLoading;

  const SearchBarWidget({
    super.key,
    required this.searchController,
    required this.onSearch,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey), // Replace AppColors.grey if not defined
      ),
      child: Row(
        children: [
          // Expanded TextField
          Expanded(
            child: TextField(
              controller: searchController,
              onSubmitted: (_) => onSearch(),
              decoration: const InputDecoration(
                hintText: "Search for destinations",
                border: InputBorder.none,
              ),
            ),
          ),
          // Search Icon or Loading Indicator
          GestureDetector(
            onTap: onSearch,
            child: isLoading
                ? const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                color: Colors.blue, // Replace with AppColors.primaryColor if defined
                strokeWidth: 2,
              ),
            )
                : const Icon(
              Icons.search,
              color: AppColors.grey, // Replace with AppColors.primaryColor if defined
            ),
          ),
        ],
      ),
    );
  }
}

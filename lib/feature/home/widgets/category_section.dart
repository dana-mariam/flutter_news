import 'package:flutter/material.dart';
class CategorySection extends StatefulWidget {
  final Function(String) onSelect;

  const CategorySection({
    super.key,
    required this.onSelect,
  });

  @override
  State<CategorySection> createState() =>
      _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  final List<String> categories = [
    "All",
    "Business",
    "Sports",
    "Health",
    "Technology",
    "Science",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });

              widget.onSelect(
                categories[index],
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xFFC53030)
                    : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color:
                  isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
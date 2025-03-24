import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final List<Widget> children;
  final Color? backgroundColor; // لون خلفية مخصص
  final Color? textColor; // لون نص مخصص
  final double? titleFontSize; // حجم خط مخصص

  const CustomExpansionTile({
    required this.title,
    required this.children,
    this.backgroundColor,
    this.textColor,
    this.titleFontSize,
    super.key,
  });

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = widget.backgroundColor ?? Colors.white;
    final textColor = widget.textColor ?? Colors.blue.shade700;
    final titleFontSize = widget.titleFontSize ?? 18;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            spreadRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Container(
              height: isExpanded ? null : 50, // ارتفاع مرن
              decoration: BoxDecoration(
                color: isExpanded ? Colors.blue.shade700 : backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(50),
                  topRight: const Radius.circular(50),
                  bottomLeft: isExpanded ? Radius.zero : const Radius.circular(50),
                  bottomRight: isExpanded ? Radius.zero : const Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: isExpanded ? 12 : 8,
                    spreadRadius: isExpanded ? 3 : 1,
                    offset: Offset(0, isExpanded ? 6 : 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontFamily: 'Fedra Sans',
                      color: isExpanded ? Colors.white : textColor,
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: isExpanded ? Colors.white : textColor,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 300),
            firstChild: Container(),
            secondChild: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(children: widget.children),
            ),
            crossFadeState: isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
          ),
        ],
      ),
    );
  }
}

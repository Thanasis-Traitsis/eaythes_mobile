import 'package:flutter/material.dart';

import '../../../../../../core/constants/sizes.dart';
import '../../../../../../core/constants/styles.dart';
import '../../../../../../core/usecases/calculate_size.dart';

class SearchTextfield extends StatefulWidget {
  const SearchTextfield({super.key});

  @override
  State<SearchTextfield> createState() => _SearchTextfieldState();
}

class _SearchTextfieldState extends State<SearchTextfield> {
  final TextEditingController _controller = TextEditingController();
  bool _showClearIcon = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateClearIconVisibility);
  }

  @override
  void dispose() {
    _controller.removeListener(_updateClearIconVisibility);
    _controller.dispose();
    super.dispose();
  }

  void _updateClearIconVisibility() {
    setState(() {
      _showClearIcon = _controller.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurface,
          borderRadius:
              const BorderRadius.all(Radius.circular(borderRadius / 3))),
      height: calculateSize(context, searchbarHeight),
      child: TextField(
        controller: _controller,
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyLarge!.color,
          fontSize: calculateSize(
            context,
            Theme.of(context).textTheme.bodyLarge!.fontSize!,
          ),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).disabledColor, width: 1.0),
            borderRadius: BorderRadius.circular(borderRadius / 3),
          ),
          border: const OutlineInputBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(borderRadius / 3))),
          prefixIcon: Icon(
            Icons.search_rounded,
            size: calculateSize(context, AppValues().searchbarIconSize),
          ),
          suffixIcon: _showClearIcon
              ? IconButton(
                  icon: Icon(
                    Icons.clear,
                    size: calculateSize(context, AppValues().searchbarIconSize),
                    color: Theme.of(context).disabledColor,
                  ),
                  onPressed: () {
                    _controller.clear();
                  },
                )
              : null,
          prefixIconColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

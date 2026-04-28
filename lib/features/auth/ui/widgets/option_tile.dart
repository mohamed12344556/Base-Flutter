import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class OptionTile extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData? icon;
  final String value;
  final String selectedOption;
  final Function(String, String?) onOptionSelected;

  const OptionTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.value,
    required this.selectedOption,
    required this.onOptionSelected,
  });

  @override
  State<OptionTile> createState() => _OptionTileState();
}

class _OptionTileState extends State<OptionTile> {
  bool showTextField = false;
  String? inputValue;
  late String? currentSubtitle;

  @override
  void initState() {
    super.initState();
    currentSubtitle = widget.subtitle; // Initialize with the initial subtitle
  }

  @override
  Widget build(BuildContext context) {
    bool isSelected = widget.selectedOption == widget.value;
    final isDark = context.isDarkMode;

    return GestureDetector(
      onTap: () {
        setState(() {
          showTextField = true;
        });
        widget.onOptionSelected(widget.value, inputValue ?? widget.subtitle);
      },
      child: Column(
        children: [
          Container(
            padding: AppPadding.all16,
            decoration: BoxDecoration(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.05)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(AppSizes.radiusMd),
              border: Border.all(
                color: isSelected
                    ? AppColors.primary
                    : (isDark
                          ? Colors.white.withValues(alpha: 0.2)
                          : Colors.grey[300]!),
                width: isSelected ? 2 : 1,
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: AppPadding.all12,
                  decoration: BoxDecoration(
                    color: isDark
                        ? Colors.white.withValues(alpha: 0.1)
                        : Colors.grey[100],
                    borderRadius: BorderRadius.circular(AppSizes.radiusRound),
                  ),
                  child: Icon(
                    widget.icon,
                    color: isDark ? Colors.white70 : Colors.grey[600],
                    size: AppSizes.iconLg,
                  ),
                ),
                AppSpacing.h16,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: AppTextStyling.font14W400.copyWith(
                          color: isDark ? Colors.white70 : Colors.grey[600],
                        ),
                      ),
                      AppSpacing.v4,
                      Text(
                        currentSubtitle ?? 'Enter your Email',
                        style: AppTextStyling.font16W500.copyWith(
                          color: isDark ? Colors.white : Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                Radio(
                  value: widget.value,
                  groupValue: widget.selectedOption,
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        showTextField = true; // Show TextField on selection
                      });
                      widget.onOptionSelected(widget.value, inputValue);
                    }
                  },
                  activeColor: AppColors.primary,
                ),
              ],
            ),
          ),
          if (isSelected && showTextField)
            Padding(
              padding: AppPadding.listItem,
              child: CustomTextFormField(
                label: 'Enter your value',
                icon: widget.icon ?? Icons.email_outlined,
                onFieldSubmitted: (value) {
                  setState(() {
                    inputValue = value;
                    currentSubtitle = value; // Update subtitle
                    showTextField =
                        false; // Hide TextFormField after submission
                  });
                  // Update parent widget with new inputValue
                  widget.onOptionSelected(widget.value, inputValue);
                },
                onChanged: (value) {
                  setState(() {
                    inputValue = value; // Update inputValue dynamically
                  });
                  // Send updated value to parent
                  widget.onOptionSelected(widget.value, value);
                },
              ),
            ),
        ],
      ),
    );
  }
}

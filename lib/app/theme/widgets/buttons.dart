import 'package:flutter/material.dart';
import '../app_theme.dart';

class AuraButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ButtonStyle? style;
  final bool isLoading;
  final Widget? icon;

  const AuraButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.style,
    this.isLoading = false,
    this.icon,
  }) : super(key: key);

  factory AuraButton.primary({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    bool isLoading = false,
    Widget? icon,
  }) {
    return AuraButton(
      key: key,
      text: text,
      onPressed: onPressed,
      isLoading: isLoading,
      icon: icon,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled))
              return AppTheme.primaryColor.withOpacity(0.6);
            if (states.contains(WidgetState.pressed))
              return AppTheme.primaryColor.withOpacity(0.8);
            return AppTheme.primaryColor;
          },
        ),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }

  factory AuraButton.secondary({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    bool isLoading = false,
    Widget? icon,
  }) {
    return AuraButton(
      key: key,
      text: text,
      onPressed: onPressed,
      isLoading: isLoading,
      icon: icon,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled))
              return AppTheme.secondaryColor.withOpacity(0.6);
            if (states.contains(WidgetState.pressed))
              return AppTheme.secondaryColor.withOpacity(0.8);
            return AppTheme.secondaryColor;
          },
        ),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }

  factory AuraButton.outline({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    bool isLoading = false,
    Widget? icon,
  }) {
    return AuraButton(
      key: key,
      text: text,
      onPressed: onPressed,
      isLoading: isLoading,
      icon: icon,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled))
              return AppTheme.primaryColor.withOpacity(0.6);
            if (states.contains(WidgetState.pressed))
              return AppTheme.primaryColor.withOpacity(0.8);
            return AppTheme.primaryColor;
          },
        ),
        side: WidgetStateProperty.resolveWith<BorderSide>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return BorderSide(color: AppTheme.primaryColor.withOpacity(0.6));
            }
            if (states.contains(WidgetState.pressed)) {
              return BorderSide(color: AppTheme.primaryColor.withOpacity(0.8));
            }
            return const BorderSide(color: AppTheme.primaryColor);
          },
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: style,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[icon!, const SizedBox(width: 8)],
          if (isLoading)
            const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          else
            Text(
              text,
              style: Theme.of(context).textTheme.labelLarge,
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../app_theme.dart';

class AuraCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final double elevation;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;

  const AuraCard({
    Key? key,
    required this.child,
    this.padding,
    this.backgroundColor,
    this.elevation = 1,
    this.onTap,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultRadius = BorderRadius.circular(16);

    return Material(
      color: backgroundColor ?? theme.colorScheme.surface,
      elevation: elevation,
      borderRadius: borderRadius ?? defaultRadius,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius ?? defaultRadius,
        child: Padding(
          padding: padding ?? const EdgeInsets.all(16),
          child: child,
        ),
      ),
    );
  }
}

class AuraInfoCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;
  final Color? backgroundColor;

  const AuraInfoCard({
    Key? key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.onTap,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final spacing = theme.extension<AppSpacing>() ?? const AppSpacing();

    return AuraCard(
      backgroundColor: backgroundColor,
      onTap: onTap,
      child: Row(
        children: [
          if (leading != null) ...[leading!, SizedBox(width: spacing.md)],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium,
                ),
                if (subtitle != null) ...[SizedBox(height: spacing.xs),
                  Text(
                    subtitle!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ],
            ),
          ),
          if (trailing != null) ...[SizedBox(width: spacing.md), trailing!],
        ],
      ),
    );
  }
}

class AuraStatsCard extends StatelessWidget {
  final String label;
  final String value;
  final Widget? icon;
  final Color? valueColor;
  final Color? backgroundColor;

  const AuraStatsCard({
    Key? key,
    required this.label,
    required this.value,
    this.icon,
    this.valueColor,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final spacing = theme.extension<AppSpacing>() ?? const AppSpacing();

    return AuraCard(
      backgroundColor: backgroundColor,
      padding: EdgeInsets.all(spacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[icon!, SizedBox(height: spacing.sm)],
          Text(
            value,
            style: theme.textTheme.headlineMedium?.copyWith(
              color: valueColor ?? theme.colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: spacing.xs),
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.textTheme.bodySmall?.color,
            ),
          ),
        ],
      ),
    );
  }
}
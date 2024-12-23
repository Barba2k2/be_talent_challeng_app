import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class NotificationBadge extends StatelessWidget {
  final String count;

  const NotificationBadge({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          Icons.notifications_none_rounded,
          color: ColorsDS.black,
          size: 36,
        ),
        Positioned(
          right: 0,
          top: 14,
          child: Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              color: ColorsDS.primary,
              shape: BoxShape.circle,
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: 2.0,
                ),
                child: Text(
                  count,
                  textAlign: TextAlign.center,
                  style: TypographyDS.h3.copyWith(
                    color: ColorsDS.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stylek_app/core/styles/colors.dart';


class GradientScaffold extends StatelessWidget {
  const GradientScaffold({
    super.key,
    required this.child,
    this.horizontalPadding = 16,
    this.physics = const ClampingScrollPhysics(),
    this.fillHeight = false,
  });

  final Widget child;
  final double horizontalPadding;
  final ScrollPhysics physics;
  final bool fillHeight;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColor.backgroundGradientColors,
            ),
          ),
          child: SafeArea(
            child: fillHeight ? _FillHeightBody(this) : _ScrollBody(this),
          ),
        ),
      ),
    );
  }
}

class _ScrollBody extends StatelessWidget {
  const _ScrollBody(this.screen);

  final GradientScaffold screen;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: screen.physics,
      padding: EdgeInsets.symmetric(horizontal: screen.horizontalPadding),
      child: screen.child,
    );
  }
}

class _FillHeightBody extends StatelessWidget {
  const _FillHeightBody(this.screen);

  final GradientScaffold screen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: screen.physics,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screen.horizontalPadding,
              ),
              child: screen.child,
            ),
          ),
        );
      },
    );
  }
}

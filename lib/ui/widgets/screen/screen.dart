import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:pineamite/configs/configs.dart';
import 'package:pineamite/ui/widgets/bottom_bar/bottom_bar.dart';

class Screen extends StatefulWidget {
  const Screen({
    super.key,
    required this.child,
    this.padding = EdgeInsets.zero,
    this.renderSettings = true,
    this.bottomBar = false,
    this.resizeToAvoidBottomInset = false,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.scaffoldBackgroundColor,
   
    this.appBar,
    this.bottomBarHeightChanged,
    this.backgroundImage,
  });

  final Widget child;
  final EdgeInsets padding;
  final bool renderSettings;
  final bool bottomBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Color? scaffoldBackgroundColor;
  final bool resizeToAvoidBottomInset;
  final PreferredSizeWidget? appBar;
  final void Function(double height)? bottomBarHeightChanged;
  final ImageProvider? backgroundImage;

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final bottomBarKey = GlobalKey();

  double get _getBottomBarHeight {
    final renderBox =
        bottomBarKey.currentContext?.findRenderObject() as RenderBox?;
    final height = renderBox?.size.height ?? context.bottomSafe();
    return height;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.bottomBarHeightChanged?.call(_getBottomBarHeight);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget body = Padding(padding: widget.padding, child: widget.child);

    if (widget.backgroundImage != null) {
      body = Stack(
        fit: StackFit.expand,
        children: [
          Image(image: widget.backgroundImage!, fit: BoxFit.cover),
          body,
        ],
      );
    }

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        backgroundColor:
            widget.scaffoldBackgroundColor ??
            Theme.of(context).scaffoldBackgroundColor,
        floatingActionButton: widget.floatingActionButton,
        floatingActionButtonLocation: widget.floatingActionButtonLocation,
        appBar: widget.appBar,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(child: body),

            if (widget.bottomBar)
              const Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: BottomBar(),
              ),
          ],
        ),
      ),
    );
  }
}

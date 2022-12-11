import 'package:auto_e_invoice/config/styles/colors/app_colors.dart';
import 'package:auto_e_invoice/config/utils/size_manager.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  final IconData? trailing;
  final String text;
  final IconData leadingIcon;
  final VoidCallback onTap;
  final bool? isOnTap;
  final Widget firstChildWidget;
  const DrawerMenu({
    Key? key,
    required this.onTap,
    required this.text,
    required this.leadingIcon,
    this.trailing,
    this.isOnTap,
    required this.firstChildWidget,
  }) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> with TickerProviderStateMixin {
  bool isDropDown = false;
  late AnimationController _animateIconController;

  @override
  void initState() {
    super.initState();
    _animateIconController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      upperBound: 0.5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: widget.isOnTap == true
            ? () {
                setState(() {
                  if (isDropDown) {
                    _animateIconController.reverse(from: 0.5);
                  } else {
                    _animateIconController.forward(from: 0.0);
                  }
                  isDropDown = !isDropDown;
                });
              }
            : widget.onTap,
        child: Column(
          children: [
            ListTile(
              leading: SizedBox(
                height: SizeMg.width(20),
                width: SizeMg.width(20),
                child: Icon(
                  widget.leadingIcon,
                  color: AppColors.gray100,
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  widget.text,
                  style: TextStyle(
                      fontSize: SizeMg.text(17),
                      fontWeight: FontWeight.w500,
                      color: AppColors.gray100),
                ),
              ),
              trailing: RotationTransition(
                turns:
                    Tween(begin: 0.0, end: 0.5).animate(_animateIconController),
                child: Icon(
                  widget.trailing,
                  color: AppColors.gray100,
                ),
              ),
            ),
            widget.isOnTap == true
                ? AnimatedCrossFade(
                    alignment: Alignment.topRight,
                    firstChild: widget.firstChildWidget,
                    secondChild: const SizedBox.shrink(),
                    duration: const Duration(milliseconds: 500),
                    crossFadeState: isDropDown
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}

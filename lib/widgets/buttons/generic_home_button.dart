import 'package:flutter/material.dart';

class GenericHomeButton extends StatelessWidget {
  final Function onClick;
  final Widget child;

  const GenericHomeButton({
    super.key,
    required this.onClick,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            offset: Offset(0, 0),
            spreadRadius: 0.1,
            color: Colors.grey.shade500,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          splashColor: Colors.grey,
          onTap: () {},
          child: Padding(padding: EdgeInsets.only(left: 16), child: child),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_web_basics/locator.dart';
import 'package:flutter_web_basics/services/navigation_service.dart';
import 'package:flutter_web_basics/ui/shared/custom_flat_button.dart';

class CustomMenuApp extends StatelessWidget {
  const CustomMenuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) => (constraints.maxWidth > 520)
          ? SizedBox(height: 80, child: _DesktopMenu())
          : _MobileMenu(),
    );
  }
}

class _DesktopMenu extends StatelessWidget {
  const _DesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomFlatButton(
            text: 'Contador StateFull',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/statefull'),
            icon: Icons.alarm,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador Provider',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
            icon: Icons.settings,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra Pagina',
            onPressed: () => locator<NavigationService>().navigateTo('/404'),
            icon: Icons.error_outline_rounded,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador StateFull 100',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/statefull/100'),
            icon: Icons.alarm,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador Provider Query',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider?base:100'),
            icon: Icons.settings,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        children: [
          CustomFlatButton(
            text: 'Contador StateFull',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/statefull'),
            icon: Icons.alarm,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador Provider',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
            icon: Icons.settings,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra Pagina',
            onPressed: () => locator<NavigationService>().navigateTo('/404'),
            icon: Icons.error_outline_rounded,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

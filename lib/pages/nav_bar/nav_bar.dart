import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/providers/utility_provider.dart';
import 'package:provider/provider.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopNavBar();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return const DesktopNavBar();
        } else {
          return const MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatefulWidget {
  const DesktopNavBar({super.key});

  @override
  State<DesktopNavBar> createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  late UtilityProvider utilityProvider;
  late ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(child: websiteIcon()),
          Flexible(child: navBarItems(scrollController)),
        ],
      ),
    );
  }
}

class MobileNavBar extends StatefulWidget {
  const MobileNavBar({super.key});

  @override
  State<MobileNavBar> createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar> {
  late UtilityProvider utilityProvider;
  late ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: websiteIcon(),
        ),
        const SizedBox(
          height: 20,
        ),
        navBarItems(scrollController),
      ],
    );
  }
}

Widget websiteIcon() {
  return GestureDetector(
    onTap: () {},
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            border: const Border(
              left: BorderSide(width: 2),
              right: BorderSide(width: 2),
              bottom: BorderSide(width: 2),
              top: BorderSide(width: 2),
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              AppLocalization.current.kIconFirstLetter,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Text(
          AppLocalization.current.kIconRemainingLetters,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

Widget navBarItems(ScrollController scrollController) {
  return Row(
    // mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      navBarOptions(AppLocalization.current.kAbout, 1, () {
        scrollController.animateTo(
          scrollController.position.minScrollExtent + 120,
          duration: const Duration(seconds: 1),
          curve: Curves.ease,
        );
      }),
      navBarOptions(AppLocalization.current.kServices, 2, () {
        scrollController.animateTo(
          0.30 * scrollController.position.maxScrollExtent,
          duration: const Duration(seconds: 2),
          curve: Curves.ease,
        );
      }),
      navBarOptions(AppLocalization.current.kPortfolio, 3, () {
        scrollController.animateTo(
          0.60 * scrollController.position.maxScrollExtent,
          duration: const Duration(seconds: 2),
          curve: Curves.ease,
        );
      }),
      navBarOptions(AppLocalization.current.kContact, 4, () {
        scrollController.animateTo(
          1 * scrollController.position.maxScrollExtent,
          duration: const Duration(seconds: 2),
          curve: Curves.ease,
        );
      }),
    ],
  );
}

Widget navBarOptions(String title, int position, VoidCallback function) {
  return InkWell(
    onTap: function,
    hoverColor: Colors.grey[200],
    borderRadius: BorderRadius.circular(16),
    child: Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Text(
        title,
        // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}

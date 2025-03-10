import 'package:flutter/material.dart';

class HomeScreenCard extends StatelessWidget {
  final VoidCallback tapAction;
  final String buttonText;
  final String caption;
  final String image;
  final IconData icon;

  const HomeScreenCard(
      {super.key,
      required this.tapAction,
      required this.buttonText,
      required this.caption,
      required this.image,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Theme.of(context).brightness != Brightness.dark ? Theme.of(context).primaryColor.withAlpha(10) : Theme.of(context).colorScheme.primary,
      // color: Theme.of(context).colorScheme.primary.withOpacity(0.000000000000001),
      borderRadius: BorderRadius.circular(10),
      elevation: 0.7,
      borderOnForeground: true,
      surfaceTintColor: Theme.of(context).colorScheme.primary,
      shadowColor: Theme.of(context).disabledColor.withOpacity(0.1),
      child: InkWell(
        borderRadius: BorderRadius.circular(40),
        onTap: tapAction,
        // enableFeedback: false,
        // Note: Add double tap to open preview
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 20,
          height: 110,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SvgPicture.asset(
                //   image,
                //   width: 60,
                // ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        buttonText,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text(
                          caption,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontWeight: FontWeight.normal),
                          softWrap: true,
                          overflow:
                              TextOverflow.clip, // Use ellipsis for truncation
                        ),
                      ),
                    ],
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(100),
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: InkWell(
                    onTap: tapAction,
                    splashColor: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      // borderRadius: BorderRadius.circular(10)),
                      // color: Colors.red,
                      child: Icon(
                        // color: Colors.white,
                        icon,
                        size: 30,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      // ),
    );
  }
}

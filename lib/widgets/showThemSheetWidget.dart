import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy/Provider.dart';
import 'package:provider/provider.dart';

class ShowThemeSheet extends StatelessWidget {
  const ShowThemeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var methods = Provider.of<myProvider>(context, listen: false);
    var provider = Provider.of<myProvider>(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            methods.changeTeme('dark');
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  'Darth mood',
                  style: GoogleFonts.elMessiri(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: provider.Theme == 'dark'
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                Spacer(),
                provider.Theme == 'dark'
                    ? Icon(
                        Icons.done,
                        color: Theme.of(context).colorScheme.onSurface,
                      )
                    : Container()
              ],
            ),
          ),
        ),
        Divider(
          thickness: 2,
          height: 2,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        InkWell(
          onTap: () {
            methods.changeTeme('light');
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  'Light mood',
                  style: GoogleFonts.elMessiri(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: provider.Theme == 'light'
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                Spacer(),
                provider.Theme == 'light'
                    ? Icon(
                        Icons.done,
                        color: Theme.of(context).colorScheme.onSurface,
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ],
    );
  }
}

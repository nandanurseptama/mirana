import 'package:flutter/material.dart';

class ErrorWithReloadWidget extends StatelessWidget {
  final String errorMessage;
  final String? buttonCaption;
  final void Function()? onReload;
  const ErrorWithReloadWidget({super.key, required this.errorMessage, this.onReload, this.buttonCaption});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              errorMessage,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
              maxLines: 10,
            ),
          ),
          FilledButton(onPressed: onReload, child: Text(buttonCaption ?? "Muat Ulang"))
        ],
      ),
    );
  }
}

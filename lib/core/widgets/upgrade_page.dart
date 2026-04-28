import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../generated/l10n.dart';
import 'custom_button.dart';

class UpgradePage extends StatelessWidget {
  const UpgradePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.system_update, size: 80),
                const SizedBox(height: 24),
                Text(
                  S.of(context).force_update_title,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Text(
                  S.of(context).force_update_body,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                CustomButton(
                  text: S.of(context).force_update_button,
                  onPressed: () => _launchStore(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchStore() async {
    final uri = Uri.parse(
      Platform.isAndroid
          ? 'https://play.google.com/store/apps/details?id=com.example.base_flutter'
          : 'https://apps.apple.com/app/id123456789',
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}

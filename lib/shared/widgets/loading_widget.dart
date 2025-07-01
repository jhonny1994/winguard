import 'package:fluent_ui/fluent_ui.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ProgressRing(),
    );
  }
}

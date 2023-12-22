import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditCommunityScreen extends ConsumerStatefulWidget {
  const EditCommunityScreen({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  ConsumerState<EditCommunityScreen> createState() => _EditCommunityScreenState();
}

class _EditCommunityScreenState extends ConsumerState<EditCommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

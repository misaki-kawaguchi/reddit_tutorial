import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPostTypeScreen extends ConsumerStatefulWidget {
  const AddPostTypeScreen({
    Key? key,
    required this.type,
  }) : super(key: key);

  final String type;

  @override
  ConsumerState<AddPostTypeScreen> createState() => _AddPostTypeScreenState();
}

class _AddPostTypeScreenState extends ConsumerState<AddPostTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

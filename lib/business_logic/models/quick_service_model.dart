import 'package:flutter/cupertino.dart';

class QuickService {
  final String id;
  final String label;
  final String route;
  final String imageUrl;
  final bool visible;

  QuickService({
    @required this.id,
    @required this.label,
    @required this.route,
    this.visible = false,
    @required this.imageUrl,
  });
}

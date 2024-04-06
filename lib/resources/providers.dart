import 'package:flutter_riverpod/flutter_riverpod.dart';

final menuIndexProvider = StateProvider<int>((ref) => -1);
final isAppProvider = StateProvider<bool>((ref) => false);
final hoveredIndexProvider = StateProvider<dynamic>((ref) => -1);
final isGraphicProvider = StateProvider<bool>((ref) => false);
final isDataAnalystProvider = StateProvider<bool>((ref) => false);

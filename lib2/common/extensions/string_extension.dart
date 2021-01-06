extension StringExtension on String {
  String intelliTrim(int titleLen) {
    return this.length > titleLen ? '${this.substring(0, 15)}...' : this;
  }
}

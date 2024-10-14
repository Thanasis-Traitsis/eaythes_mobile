extension TimeAgoExtension on String {
  String timeAgo() {
    final now = DateTime.now();
    final difference = now.difference(DateTime.parse(this));

    if (difference.inSeconds < 60) {
      return 'Πριν από μερικά δευτερόλεπτα';
    } else if (difference.inMinutes < 60) {
      return difference.inMinutes == 1
          ? 'Πριν 1 λεπτό'
          : 'Πριν από ${difference.inMinutes} λεπτά';
    } else if (difference.inHours < 24) {
      return difference.inHours == 1
          ? 'Πριν 1 ώρα'
          : 'Πριν από ${difference.inHours} ώρες';
    } else if (difference.inDays < 7) {
      return difference.inDays == 1
          ? 'Πριν 1 μέρα'
          : 'Πριν από ${difference.inDays} μέρες';
    } else if (difference.inDays < 30) {
      final weeks = (difference.inDays / 7).floor();
      return weeks == 1 ? 'Πριν 1 εβδομάδα' : 'Πριν από $weeks εβδομάδες';
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return months == 1 ? 'Πριν 1 μήνα' : 'Πριν από $months μήνες';
    } else {
      final years = (difference.inDays / 365).floor();
      return years == 1 ? 'Πριν 1 χρόνο' : 'Πριν από $years χρόνια';
    }
  }
}

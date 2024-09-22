enum Pages { home, blogs }

extension AppPageExtension on Pages {
  String get screenPath {
    switch (this) {
      case Pages.blogs:
        return "/blogs";
      default:
        return "/";
    }
  }

  String get screenName {
    switch (this) {
      case Pages.blogs:
        return "blogs";
      default:
        return "home";
    }
  }

  String get screenTitle {
    switch (this) {
      case Pages.blogs:
        return "Ανακοινώσεις";
      default:
        return "Αρχική";
    }
  }
}

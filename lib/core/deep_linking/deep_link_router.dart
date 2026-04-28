sealed class DeepLinkIntent {
  const DeepLinkIntent();
}

class CourseDeepLinkIntent extends DeepLinkIntent {
  final String courseId;
  const CourseDeepLinkIntent(this.courseId);
}

Future<DeepLinkIntent?> parse(Uri uri) async {
  final scheme = uri.scheme.toLowerCase();
  if (scheme != 'http' && scheme != 'https') {
    return null;
  }

  final path = uri.path;

  final courseLinkPattern = RegExp(r'^/c/([^/]+)$', caseSensitive: false);
  final match = courseLinkPattern.firstMatch(path);
  if (match != null) {
    return CourseDeepLinkIntent(match.group(1)!);
  }

  return null;
}

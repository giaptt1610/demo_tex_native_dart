String removeTrailingSlash(String url) {
  return url.replaceFirst(RegExp(r'\/+$'), '');
}

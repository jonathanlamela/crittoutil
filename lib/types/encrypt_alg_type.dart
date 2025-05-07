class AlgType {
  final String name;
  final bool requireIv;
  final bool requirePrivateKey;

  AlgType({
    required this.name,
    this.requireIv = false,
    this.requirePrivateKey = false,
  });
}

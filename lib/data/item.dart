class Item {
  String content;
  bool enabled;
  late final bool originalValue;

  Item(this.content, this.enabled){
    originalValue = enabled;
  }
}
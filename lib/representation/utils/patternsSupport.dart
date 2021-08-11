class PatternsSupport {
  PatternsSupport() {
    print('support pattern class has just instantiated');
    _buildList();
  }

  List<String>? _patterns;

  List<String> getListOfPatterns() => this._patterns ?? [];

  void _buildList() {
    _patterns = [
      "Singleton",
      "Adapter",
      "TemplateMethod",
      "Composite",
      "Strategy",
      "State",
      "Facade",
      "Interpreter",
      "Iterator",
      "Factory",
      "abstract Factory",
      "command",
      "Memento",
      "ProtoType",
      "Proxy",
      "Decorator",
      "Bridge",
      "Builder",
      "FlyWeight",
      "Chain of Responsibility",
      "Visitor",
      "Mediator",
      "Observer"
    ];
  }
}

import 'package:tw_presentation_exchange/presentation_definitions/presentation_definition.dart';

abstract class PresentationDefinitionSource {
  PresentationDefinitionSource();

  factory PresentationDefinitionSource.passByValue({required PresentationDefinition presentationDefinition}) =>
      PresentationDefinitionSourcePassByValue(presentationDefinition: presentationDefinition);

  factory PresentationDefinitionSource.fetchByReference({required Uri uri}) =>
      PresentationDefinitionSourceFetchByReference(uri: uri);

  factory PresentationDefinitionSource.implied({required List<String> scope}) =>
      PresentationDefinitionImplied(scope: scope);
}

class PresentationDefinitionSourcePassByValue extends PresentationDefinitionSource {
  PresentationDefinitionSourcePassByValue({required this.presentationDefinition}) : super();

  final PresentationDefinition presentationDefinition;
}

class PresentationDefinitionSourceFetchByReference extends PresentationDefinitionSource {
  PresentationDefinitionSourceFetchByReference({required this.uri}) : super();

  final Uri uri;
}

class PresentationDefinitionImplied extends PresentationDefinitionSource {
  PresentationDefinitionImplied({required this.scope}) : super();

  final List<String> scope;
}

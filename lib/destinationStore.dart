import 'package:mobx/mobx.dart';

part 'destinationStore.g.dart';

class DestinationStore = _DestinationStore with _$DestinationStore;

abstract class _DestinationStore with Store{
  @observable
  int index = 0;

  @action
  void changeIndex(int newIndex){
    index = newIndex;
  }
}
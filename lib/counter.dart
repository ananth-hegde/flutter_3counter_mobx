import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store{
  @observable
  ObservableList<int> counterArray = ObservableList.of([0,0,0]);
  @observable
  bool isFloatingButtonVisible = true;

  @action
  void incrementCounter(int index){
    counterArray[index]+=1;
  }

  @action
  void changeVisibility(){
    isFloatingButtonVisible = !isFloatingButtonVisible;
  }

  
}
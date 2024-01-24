import 'story.dart';


class StoryBrainCh1
{
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
         'I\'ll hop in. Thanks for the help!',
         'Better ask him if he\'s a murderer first.', '', ''),
  ];

  String getStory() => _storyData[_storyNumber].storyTitle;

  String getChoice1() => _storyData[_storyNumber].choice1;

  String getChoice2() => _storyData[_storyNumber].choice2;

  void nextStory(int choice){

    //_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2
    print('print func');
    if(_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5){
      reset();
      print('in the end');
    }else{
      print('in the beginning');
      if(_storyNumber == 0 && choice == 1){
        _storyNumber = 2;
      }
      else if(_storyNumber == 0 && choice == 2){
        _storyNumber = 1;
      }
      else if(_storyNumber == 2 && choice == 1){
        _storyNumber = 5;
      }
      else if(_storyNumber == 2 && choice == 2){
        _storyNumber = 4;
      }
      else if(_storyNumber == 1 && choice == 1){
        _storyNumber = 2;
      }
      else if(_storyNumber == 1 && choice == 2){
        _storyNumber = 3;
      }
    }


  }

  void reset() => _storyNumber = 0;

  bool buttonShouldBeVisible(){
    if(_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5){
      return false;
    }
    else{
      return true;
    }
  }
}



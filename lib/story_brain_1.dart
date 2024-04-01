import 'story.dart';
import 'story_brain.dart';


class StoryBrainCh1 extends StoryBrain
{
  StoryBrainCh1(){
    storyNumber = 0;
  }

  List<Story> _storyData = [
    Story(
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
         'I\'ll hop in. Thanks for the help!',
         'Better ask him if he\'s a murderer first.', '', ''),
    Story(
        'second question',
        'I\'ll hop in. Thanks for the help!',
        'Better ask him if he\'s a murderer first.', '', '')
  ];

  String getStory() => _storyData[storyNumber].storyTitle;

  String getChoice1() => _storyData[storyNumber].choice1;

  String getChoice2() => _storyData[storyNumber].choice2;

  void nextStory(int choice){

    //_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2
    print('print func');
    if(storyNumber == 1 || storyNumber == 4 || storyNumber == 5){
      reset();
      print('in the end');
    }else{
      print('in the beginning');
      if(storyNumber == 0 && choice == 1){
        storyNumber = 2;
      }
      else if(storyNumber == 0 && choice == 2){
        storyNumber = 1;
      }
      else if(storyNumber == 2 && choice == 1){
        storyNumber = 5;
      }
      else if(storyNumber == 2 && choice == 2){
        storyNumber = 4;
      }
      else if(storyNumber == 1 && choice == 1){
        storyNumber = 2;
      }
      else if(storyNumber == 1 && choice == 2){
        storyNumber = 3;
      }
    }


  }


}



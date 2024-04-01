abstract class StoryBrain
{
  late int storyNumber;

  void reset() => storyNumber = 0;

  bool buttonShouldBeVisible(){
    if(storyNumber == 1 || storyNumber == 4 || storyNumber == 5){
      return false;
    }
    else{
      return true;
    }
  }

  String getStory();
  String getChoice1();
  String getChoice2();
  String getChoice3();
  String getChoice4();
}
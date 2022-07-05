struct numberHolder{
  int number;
  int encountered;
};

int stray(std::vector<int> numbers) {
  numberHolder encounter [2];
  encounter[0].number = numbers[0];
  encounter[0].encountered = 1;
  encounter[1].encountered = 0;
  
  for(int i = 1; i < numbers.size(); i++){
    if(numbers[i] == encounter[0].number){
      encounter[0].encountered++;
    } else {
      encounter[1].number = numbers[i];
      encounter[1].encountered++;
    }
    
    if(encounter[1].encountered != 0){
      if(encounter[1].encountered > encounter[0].encountered){
        return encounter[0].number;
      } else if(encounter[1].encountered < encounter[0].encountered){
        return encounter[1].number;
      }
    }
  }
};

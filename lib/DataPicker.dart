import 'package:calculator/Calculate.dart';

class DataPicker
{
  int firstvalue=0,secondvalue=0;
  String data='';
  int startinglength=0;
  String validating(String char)
  {
    if(char=='C'){
      data='';
      return data;
    }
    else if(char=='DEL'){
      data=data.substring(0,data.length-1);
      return data;
    }
    else if(char=='+' || char =='-' || char=='*' || char=='/' || char == '%') {
        this.firstvalue=int.parse(data.substring(0,data.length));
        this.startinglength=data.length;
        data=data+char;
        return data;
    }
    else if(char=='='){
      this.secondvalue=int.parse(data.substring(startinglength+1,data.length));
      Calculate c=new Calculate();
      data=c.checking(data.substring(startinglength,startinglength+1), firstvalue, secondvalue);
      startinglength=data.length;
      firstvalue=int.parse(data);
      return data;
    }
    else {
      data=data+char;
      return data;
    }
    //return '';
  }

}
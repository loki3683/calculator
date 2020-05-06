class Calculate
{

  String addition(int a,int b) {
    return (a+b).toString();
  }

  String subtraction(int a,int b) {
    return (a-b).toString();
  }

  String multiplication(int a,int b) {
    return (a*b).toString();
  }

  String division(int a, int b) {
    print((a/b).toString());
    return (a/b).toString();
  }

  String modulo(int a, int b) {
    return (a%b).toString();
  }

  String checking(String data,int a,int b)
  {
    Calculate c=new Calculate();
    String result;
    switch(data)
    {
      case '+':
        print('Addition');
        result=c.addition(a,b);
        break;
      case '-':
        print('Subtraction');
        result=c.subtraction(a,b);
        break;
      case '/':
        print('Division');
        result=c.division(a,b);
        break;
      case '*':
        print('Multiplication');
        result=c.multiplication(a,b);
        break;
      case '%':
        print('Multiplication');
        result=c.modulo(a,b);
        break;
      default:
        break;
    }
    return result;
  }

}

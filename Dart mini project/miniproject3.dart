class Banking{
  String accono;
  double balance;
   Banking(this.accono, this.balance);
  void display(){
    print("the account no $accono balance is $balance");
  }
  void deposit(double amount){
    if(amount>0){
      balance +=amount;
      print(" after deposit the balacnce is now:$balance");
    }
    else{
        print("invalid amount");
      }  
    }

    void withdraw(double amount){
      if(amount>0 && amount<=balance){
        balance -=amount;
        print("After withdraw amount balance is:$balance");
      }
      else{
        print("insufficiant balance");
      }
      }

    
}
  
  
void main(){
  var acc1=Banking("45ad000",30000);
  acc1.display();
  acc1.deposit(2000);
  acc1.withdraw(500);
  
}
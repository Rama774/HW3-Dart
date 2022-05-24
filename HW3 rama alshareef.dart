import 'dart:io';


List<Map<String,dynamic>> students =[
{"name":"rama alshareef",
"age":16 ,
"id":100000,
"pass":false,
"Gpa":59},

{"name":"rand alshareef",
"age":18 ,
"id":100001,
"pass":true,
"Gpa":58},

{"name":"faisal alshareef",
"age":11 ,
"id":100002,
"pass":false,
"Gpa":57},

{"name":"talal alshareef",
"age":6 ,
"id":100003,
"pass":true,
"Gpa":56}];



void main(){
for(var i = 0; i < 10; i++){
msgSelete();
var input = stdin.readLineSync()!;
seletedUser(inputUser: input);
}
}


msgSelete(){
print("please select from this");
print("1: select from this");
print("2: select from this");
print("3: delet user by id");
print("exit: end app ");
}

showAll(){
print("**********");
for(var student in students){
  print("___________");
  print(student);
}
print("************");
}

seletedUser({String? inputUser}){
  if(inputUser == "1"){
    showAll();
  } else if(inputUser == "2"){
    print("enter id");
    var inputId = stdin.readLineSync()!;
    searchById(id: inputId);
   }else if(inputUser == "exit"){
    exit(0);
  }else if (inputUser == "3"){
    print("enter id");
    var removeId = stdin.readLineSync()!;
    deleteId(id: removeId);
    
    
  }

}


searchById({String? id}){
  for (var st in students){
    if (st["id"] == int.parse(id!)){
      print(st);
    }
  }
}

deleteId({String? id}){
  bool found =false;
  for (var i = 0; i< students.length; i++){
    if( students[i]["id"]== int.parse(id!)){
    print("remove done..");
    print(students[i]);
    students.removeAt(i);
   }

   //...........
    if(found == false){
      print("not found");
    }else{
      print("remove done..");
    }
    }
  }

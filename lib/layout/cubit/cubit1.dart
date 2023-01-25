import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frist_demo/layout/cubit/states.dart';
import 'package:frist_demo/moduels/home_pages/home_screen.dart';

class Appcubit extends Cubit<AppStates>{
  Appcubit():super(InitialState());

  BuildContext? get context => null;
  static Appcubit get(context)=>BlocProvider.of(context);

  int currentIndex = 1;
  List<Widget> bottomScreens = [
    HomeScreen(),
   // MailScreen(),//not creat yet
   // ProfileScreen(),

  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(ChangeBottomNavState());
  }





//////////////////
  bool isSearching=false;
  final textSearchControll = TextEditingController();

  Widget buildSearchField(){
    return TextField(
      controller: textSearchControll,
      cursorColor: Colors.white70,
      cursorHeight: 25.0,
      cursorWidth: 3.0,
      decoration: InputDecoration(
        hintText: ' Search  ',
        hintStyle: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
        border: InputBorder.none,
      ),
      onChanged: (textControll){
        // addItemInListSearch(textControll);
      },

    );
  }



}

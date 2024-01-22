import 'package:get/get.dart';
import 'package:meal/dash/home_view/model/home_model.dart';

class HomeController extends GetxController{

  var foodList=<HomeModel>[].obs;

  @override
  void onInit() {
    addDataToList();
    // TODO: implement onInit
    super.onInit();
  }

  void addDataToList(){
    foodList.add(HomeModel(image: "assets/images/burger.png", title: "Burger", description: "A hamburger, or simply burger, is a food consisting of fillings—usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chilis; condiments such as ketchup, mustard, mayonnaise, relish, or a special sauce"));
    foodList.add(HomeModel(image: "assets/images/pizza.jpg", title: "Pizza", description: "Fancy pizza slang is commonly used by pizza lovers, where whimsical terms describe toppings and pizza styles. Here is a sample of how to describe your pizza in a fancy way: 1. Party/Tavern cut-as shown earliest, the terms describe a circular pizza sliced into square portions. Common at parties such as the Super Bowl."));
    foodList.add(HomeModel(image: "assets/images/roll.jpg", title: "Roll", description: "A bread roll is a small, usually round or oblong individual loaf of bread served as a meal accompaniment (eaten plain or with butter). Rolls can be served and eaten whole or are also commonly cut and filled – the result of doing so is considered a sandwich in English."));

    foodList.add(HomeModel(image: "assets/images/burger.png", title: "Burger", description: "A hamburger, or simply burger, is a food consisting of fillings—usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chilis; condiments such as ketchup, mustard, mayonnaise, relish, or a special sauce"));
    foodList.add(HomeModel(image: "assets/images/pizza.jpg", title: "Pizza", description: "Fancy pizza slang is commonly used by pizza lovers, where whimsical terms describe toppings and pizza styles. Here is a sample of how to describe your pizza in a fancy way: 1. Party/Tavern cut-as shown earliest, the terms describe a circular pizza sliced into square portions. Common at parties such as the Super Bowl."));
    foodList.add(HomeModel(image: "assets/images/roll.jpg", title: "Roll", description: "A bread roll is a small, usually round or oblong individual loaf of bread served as a meal accompaniment (eaten plain or with butter). Rolls can be served and eaten whole or are also commonly cut and filled – the result of doing so is considered a sandwich in English."));

    foodList.add(HomeModel(image: "assets/images/burger.png", title: "Burger", description: "A hamburger, or simply burger, is a food consisting of fillings—usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chilis; condiments such as ketchup, mustard, mayonnaise, relish, or a special sauce"));
    foodList.add(HomeModel(image: "assets/images/pizza.jpg", title: "Pizza", description: "Fancy pizza slang is commonly used by pizza lovers, where whimsical terms describe toppings and pizza styles. Here is a sample of how to describe your pizza in a fancy way: 1. Party/Tavern cut-as shown earliest, the terms describe a circular pizza sliced into square portions. Common at parties such as the Super Bowl."));
    foodList.add(HomeModel(image: "assets/images/roll.jpg", title: "Roll", description: "A bread roll is a small, usually round or oblong individual loaf of bread served as a meal accompaniment (eaten plain or with butter). Rolls can be served and eaten whole or are also commonly cut and filled – the result of doing so is considered a sandwich in English."));

    foodList.add(HomeModel(image: "assets/images/burger.png", title: "Burger", description: "A hamburger, or simply burger, is a food consisting of fillings—usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chilis; condiments such as ketchup, mustard, mayonnaise, relish, or a special sauce"));
    foodList.add(HomeModel(image: "assets/images/pizza.jpg", title: "Pizza", description: "Fancy pizza slang is commonly used by pizza lovers, where whimsical terms describe toppings and pizza styles. Here is a sample of how to describe your pizza in a fancy way: 1. Party/Tavern cut-as shown earliest, the terms describe a circular pizza sliced into square portions. Common at parties such as the Super Bowl."));
    foodList.add(HomeModel(image: "assets/images/roll.jpg", title: "Roll", description: "A bread roll is a small, usually round or oblong individual loaf of bread served as a meal accompaniment (eaten plain or with butter). Rolls can be served and eaten whole or are also commonly cut and filled – the result of doing so is considered a sandwich in English."));

  }
}
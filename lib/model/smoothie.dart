class Smoothie {
  String name;
  String imagePath;
  int color;
  String ingredient1;
  String ingredient2;
  String ingredient3;
  String ingredient4;
  String ingredient5;
  String description;
  String calories;
  String ingImgPath1;
  String ingImgPath2;
  String ingImgPath3;
  String ingImgPath4;
  String ingImgPath5;

  Smoothie(
      {this.name,
      this.imagePath,
      this.calories,
      this.description,
      this.ingredient1,
      this.ingredient2,
      this.ingredient3,
      this.ingredient4,
      this.ingredient5,
      this.ingImgPath1,
      this.ingImgPath2,
      this.ingImgPath3,
      this.ingImgPath4,
      this.ingImgPath5,
      this.color});
}

List smoothies = [
  Smoothie(
      name: "Green Refresher",
      imagePath: "assets/images/avacado.png",
      color: 0xFF72A51A,
      calories: "230",
      ingredient1: "Avacado",
      ingredient2: "Cucumber",
      ingredient3: "Coconut Milk",
      ingredient4: "Ice Cubes",
      ingredient5: "Mint",
      ingImgPath1: "assets/images/avocado.jpg",
      ingImgPath2: "assets/images/cucumber.jpg",
      ingImgPath3: "assets/images/coconutmilk.jpg",
      ingImgPath4: "assets/images/icecubes.jpg",
      ingImgPath5: "assets/images/mint.jpg",
      description:
          "Green smoothies provide a powerful boost of vitamins, minerals, antioxidants and other nutrients without bogging down your digestive system. Since you are eating natural, whole foods in the most optimum form for your digestion and nutrient absorption, you will have more energy to get things done and enjoy your day. "),
  Smoothie(
      name: "Golden Refresher",
      imagePath: "assets/images/apple.png",
      color: 0xFFF5BD17,
      calories: "260",
      ingredient1: "Apple",
      ingredient2: "Banana",
      ingredient3: "Almond Milk",
      ingredient4: "Walnuts",
      ingredient5: "Ice Cubes",
      ingImgPath1: "assets/images/apple.jpg",
      ingImgPath2: "assets/images/banana.jpg",
      ingImgPath3: "assets/images/almondmilk.jpg",
      ingImgPath4: "assets/images/walnuts.jpg",
      ingImgPath5: "assets/images/icecubes.jpg",
      description:
          "Golden smoothies provide a powerful boost of vitamins, minerals, antioxidants and other nutrients without bogging down your digestive system. Since you are eating natural, whole foods in the most optimum form for your digestion and nutrient absorption, you will have more energy to get things done and enjoy your day. "),
  Smoothie(
      name: "Red Refresher",
      imagePath: "assets/images/watermelon.png",
      color: 0xFFF05262,
      calories: "200",
      ingredient1: "Watermelon",
      ingredient2: "Ice Cubes",
      ingredient3: "Ginger",
      ingredient4: "Raspberry",
      ingredient5: "Flax Seeds",
      ingImgPath1: "assets/images/watermelon.jpg",
      ingImgPath2: "assets/images/icecubes.jpg",
      ingImgPath3: "assets/images/ginger.jpg",
      ingImgPath4: "assets/images/raspberry.jpg",
      ingImgPath5: "assets/images/flaxseeds.jpg",
      description:
          "Red smoothies provide a powerful boost of vitamins, minerals, antioxidants and other nutrients without bogging down your digestive system. Since you are eating natural, whole foods in the most optimum form for your digestion and nutrient absorption, you will have more energy to get things done and enjoy your day. "),
];

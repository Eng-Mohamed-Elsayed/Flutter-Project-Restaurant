import 'dart:collection';

import 'package:restaurant/model/m_menu.dart';
import 'package:restaurant/utils/breakfast_path_images.dart';
import 'package:restaurant/utils/dessrt_images.dart';
import 'package:restaurant/utils/dinner_images.dart';
import 'package:restaurant/utils/lunch_images.dart';

class ControllerMenu {
  static final List<ModelMenu> _dataMenu = [
    ModelMenu(
      title: 'French Toast',
      image: BreakfastPathImages.frenchToast,
      urlPage:
          'https://www.jamieoliver.com/recipes/eggs-recipes/baked-eggs-lots-of-ways/',
    ),
    ModelMenu(
      title: 'Casserole',
      image: BreakfastPathImages.casserole,
      urlPage: 'https://www.bbcgoodfoodme.com/',
    ),
    ModelMenu(
      title: 'Creamy Garlic Checken',
      image: LunchPathImages.creamyGarlicChickenBreasts,
      urlPage: 'https://cafedelites.com/creamy-garlic-chicken-breasts/',
    ),
    ModelMenu(
      title: 'Crockpot Chicken Breasts',
      image: LunchPathImages.crockpotChickenBreasts,
      urlPage: 'https://www.thereciperebel.com/slow-cooker-chicken-breast/',
    ),
    ModelMenu(
      title: 'Beiyrut',
      image: DinnerPathImages.beiyrut,
      urlPage:
          'https://www.tripadvisor.com/Restaurant_Review-g4398599-d6478719-Reviews-Beiyrut_Restaurant-Tuart_Hill_Stirling_Greater_Perth_Western_Australia.html',
    ),
    ModelMenu(
      title: 'Mark Wahlb Bergure',
      image: DinnerPathImages.markWahlberger,
      urlPage: 'https://thebrag.com/wahlburgers-sydney/',
    ),
    ModelMenu(
      title: 'Ice Cream',
      image: DessertPathImages.iceCream,
      urlPage: 'https://www.icecream.com/',
    ),
    ModelMenu(
      title: 'Molten Cake',
      image: DessertPathImages.moltenCake,
      urlPage: 'https://www.foodandwine.com/recipes/molten-chocolate-cakes/',
    ),
  ];
  static UnmodifiableListView<ModelMenu> get dataMenu =>
      UnmodifiableListView(_dataMenu);
  static int get dataLength => _dataMenu.length;
  static ModelMenu getMenu(int index) => _dataMenu.elementAt(index);
}

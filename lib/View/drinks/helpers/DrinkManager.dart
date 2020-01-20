
/*
 * Stores items inside a list and translate it into an json.
 * @author GewoonRené - https://github.com/GewoonRene
 * * * */

enum DrinksList {
  Cola,
  Sprite,
  Beer,
  Wine,
  Coffee,
  Thea
}

/*
 * Drink Manger, manage the amount of drinks added to the order.
 * * * */
class DrinkManager {

  double _currentDrinkPrice = 0.00;
  List<DrinksList> orderList = [];

  double get currentDrinkPrice => _currentDrinkPrice;

  /// int [index] - The amount of drinks ordered.
  /// DrinkList [newDrink] - The Drink which is ordered.
  void add(DrinksList newDrink, int index) {
    for (var i = 0; i < index; i++) {
      this.orderList.add(newDrink);
    } this.update();
  }

  /// DrinkList [drink] - Which drink to deplete.
  void remove(DrinksList drink) {
    this.orderList.remove(drink);
    this.update();
  }

  /// Returns Clears the order list.
  void clear() {
    this._currentDrinkPrice = 0.00;
    this.orderList.clear();
  }

  /// Returns [double] - Update the current order price.
  double update() {
    for (var drink in this.orderList) {
      switch(drink) {
        case DrinksList.Cola:
          this._currentDrinkPrice += 1.00;
          break;
        case DrinksList.Sprite:
          this._currentDrinkPrice += 1.00;
          break;
        case DrinksList.Beer:
          this._currentDrinkPrice += 2.40;
          break;
        case DrinksList.Wine:
          this._currentDrinkPrice += 4.20;
          break;
        case DrinksList.Coffee:
          this._currentDrinkPrice += 1.50;
          break;
        case DrinksList.Thea:
          this._currentDrinkPrice += 0.90;
          break;
        default:
          this._currentDrinkPrice += 0.00;
          break;
      }
    }

    return this.currentDrinkPrice;

  }

}


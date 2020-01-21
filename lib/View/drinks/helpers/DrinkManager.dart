
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
 * And translate's the order to json for the API.
 * * * */
class DrinkManager {

  double _currentDrinkPrice = 0.00;
  List<DrinksList> orderList = [];

  /// int [index] - The amount of drinks ordered.
  /// DrinkList [newDrink] - The Drink which is ordered.
  void add(DrinksList newDrink, int index) {
    for (var i = 0; i < index; i++) {
      this.orderList.add(newDrink);
    } this.update();
  }

  /// @ToDo: Fix removing the right Drink / Amount;
  /// DrinkList [drink] - Which drink to deplete.
  void remove(DrinksList drink) {
    this.orderList.remove(drink);
    this.update();
  }

  /// @ToDo: Make this function dynamic;
  /// Drink List [orderList] - The final order to send to the api.
  Map sendDrinkOrder(List<DrinksList> orderList) {
    Map finalOrder = {"Drinks": { 1: orderList[0], 2: orderList[1] } };
    return finalOrder;
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

    return this._currentDrinkPrice;

  }

}


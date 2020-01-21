
/*
 * Stores items inside a list and translate it into an json.
 * @author GewoonRené - https://github.com/GewoonRene
 * * * */

/// Contains all the selectable drinks.
enum DrinksList {
  Cola,
  Sprite,
  Beer,
  Wine,
  Coffee,
  Thea
}

/// ....
/// class [DrinkManager] - A tool to help store and process the
/// drink ordered from the 'Drinks View'.

/// [add] Method - Adds New drinks to the [_orderList].
/// [remove] Method - Removes a drink from the [_orderList].
/// [sendDrinkOrder] Method - Converts the [_orderList] into JSON.
/// [clear] Method - Clears/Empties the current [orderList].
/// [update] Method - Update's the [_currentDrinkPrice] according to the [_orderList].
///
/// ....
class DrinkManager {

  /// The current drink price of the instance.
  double _currentDrinkPrice = 0.00;
  /// The current order list which only contains of [DrinksList]
  List<DrinksList> _orderList = [];

  /// DrinkList [newDrink] - New drink to add.
  /// int [index] - The amount of drink.
  void add(DrinksList newDrink, int index) {
    for (var i = 0; i < index; i++) {
      this._orderList.add(newDrink);
    } this.update();
  }

  /// @ToDo: Fix removing the right Drink / Amount;
  /// DrinkList [drink] - The kind of drink which needs to deplete/delete.
  void remove(DrinksList drink) {
    this._orderList.remove(drink);
    this.update();
  }

  /// @ToDo: Make this function dynamic;
  /// List<DrinkList> [orderList] - The current orderList from the instance.
  Map sendDrinkOrder(List<DrinksList> orderList) {
    Map finalOrder = {"Drinks": { 1: orderList[0], 2: orderList[1] } };
    return finalOrder;
  }

  void clear() {
    this._currentDrinkPrice = 0.00;
    this._orderList.clear();
  }

  double update() {
    for (var drink in this._orderList) {
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



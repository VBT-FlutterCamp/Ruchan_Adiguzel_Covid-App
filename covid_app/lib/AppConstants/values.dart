///There are 3 option right now.
///
///It returns double value
///Low returns 5,
///Medium returns 10,
///High returns 20
enum Values {
  LOW,
  MEDIUM,
  HIGH,
}

extension ValuesExtension on Values {
  ///This method can returns double value by choosen enum
  ///
  ///```Values.HIGH.getValues```
  double get getValues {
    switch (this) {
      case Values.HIGH:
        return 20;
      case Values.MEDIUM:
        return 10;
      case Values.LOW:
        return 5;
      default:
        throw Exception("Invalid enum type $this");
    }
  }

  ///This method can multiply by choosen enum
  ///Example code
  ///```
  ///getValues.Medium.multiplyValues(5)
  ///returns 50
  ///```
  ///
  double multiplyValues(multiply_by) {
    return this.getValues * multiply_by;
  }
}

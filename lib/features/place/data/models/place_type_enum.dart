enum PlaceTypeEnum {
  hospital("Hospital", 0),
  restaurant("Restaurant", 1),
  both("Both", -1);

  const PlaceTypeEnum(this.title, this.id);
  final String title;
  final int id;
}

enum FontSize {
  SMALL,MEDIUM,LARGE
}

extension FontSizeUtil on FontSize{
  double get fontSize{
    switch(this){
      case FontSize.SMALL:
        return 16.0;
      case FontSize.MEDIUM:
        return 18.0;
      case FontSize.LARGE:
        return 20.0;
      default :
        return 16.0;
    }
  }
}
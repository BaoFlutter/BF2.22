class Movie{
// thuộc tính : các biến 
String? name; 
int? launchYear; 
int? revenue; 

Movie({this.name, this.revenue, this.launchYear});

void adjustMovie() {
  switch( this.revenue! > 1000){
    case true:
    print("Bộ phim ${this.name} thành công có lãi");
    break; 

    case false:
    print("Bộ phim ${this.name} này lỗ ");
    break;

    default:
    print("Không xác định");
    break;
  }
}

}
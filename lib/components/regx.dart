class RegxPattern {
  final RegExp emailRegExp = RegExp(
    r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
  );

  final RegExp passwordRegExp = RegExp(r'^(?=.*[A-Z]).{8,}$');

  RegExp nameRegExp = RegExp(r'^[a-zA-Z]{3,}$');
  RegExp phoneRegExp = RegExp(r'^\d{10}$');
}

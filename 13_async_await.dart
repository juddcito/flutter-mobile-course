void main() async{
  
  print('Inicio del programa');
  
  try{
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print('Éxito $value');
  } catch (err){
    print('Tenemos un error: $err');
  } finally {
    print('Fin del try y catch');
  }
  
  print('Fin del programa');
  
}

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw 'Error en la petición';
  
  // return 'Tenemos un valor de la petición';
  
}
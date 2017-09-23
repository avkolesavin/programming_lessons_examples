//Класс Example, который имеет одно поле - number
//у которого значение по умолчанию 123
class Example {
  int number = 123;
}

//Функция, которая принимает экземпляр класса Example
//и меняет значение пеля number на 9999
void change(Example e) {
  e.number = 9999;
}

void setup() {
  //Создание переменной 'a' и присвоение ей значения '10'
  int a = 10;
  
  //Создание переменной 'b' и присвоение ей значения переменной 'a'
  int b = a;
  
  //Вывод на консоль значений переменных 'a' и 'b' через запятую
  //Вывод: 10,10
  println(a + "," + b);
  
  //После вывода происходит изменение значения переменной 'b'
  //Теперь оно = 55
  b = 55;
  
  //Опять вывод значений обоих переменные в том же порядке
  //Вывод: 10,55
  //Зачение переменной 'a' осталось без изменений, а значение переменной 'b'
  //стало другим
  println(a + "," + b);

  //Создание обхекта ex класса Example через оператор new
  Example ex = new Example();
  
  //Создание объекта класса Example и присвоение ему занчения первого объекта
  Example ex2 = ex;
  
  //Вывод значения поля number у обоих объектов
  //Вывод: 123,123
  //Оно равно
  println(ex.number + "," + ex2.number);
  
  //Изменение значения поля number у второго класса
  //по аналогии с переменными
  ex2.number = 5555;
  
  //Теперь оно должно быть 5555
  //Вывод значения поля number у обоих объектов
  //Вывод: 5555,5555
  println(ex.number + "," + ex2.number);
  
  //Изменив значение поля number у второго объекта
  //оно изменилось так же и у первого
  
  //Если передать второй объект в функцию change()
  change(ex2);
  //То на выводе значение поля number измениться опять у обоих объектов
  //Даже у того, который в функцию не передавался
  println(ex.number + "," + ex2.number);
}
{
   calc.pas
   
   Программа.
   Простой калькулятор.
   Исходный код калькулятора на паскале:
   
   Copyright 2013 Nadya <nadya@Home-comp>
   
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.
   
   
}
var a, b, sum, raz, pro, c, n: integer; // Задаём переменные, их типы
del: real;

begin
  writeln (' Введите требуемое действие:' ); // Диалог с пользователем
  writeln (' 1 - сложение, 2 - вычитание, 3 - умножение, 4 - простое деление, 5 - деление с остатком, 6 - квадрат, 7 - кв. корень');  
  readln (n); // считывание действия
  writeln ('Введите числа для операции, если корень или квадрат, то второе число - любое');
  readln (a, b); // считываем два числа
    
    if n = 1 then begin // Если n = 1 (сложение), то начало д.
      sum:=a+b; // складываем числа
      writeln ('сумма - ', sum); // выводим сумму
    end; //конец д.
    
    if n = 2 then begin // Если n = 2 ( вычитание), то начало д.
      raz:= a-b; //вычитаем
      writeln ('разность - ', raz); // выводим разность
    end; // конец д.
    
    if n = 3 then begin // Если n = 3 (умножение), то начало д.
       pro:=a*b; // умножаем
       writeln ('произведение - ', pro); // выводим произведение
    end; // конец действия.
    
    {Дальше комментарии к оператору if отсутствуют, т.к. они почти теже}
    if n = 4 then begin
       del:=a/b; // выполняем простое деление
       writeln ('простое деление - ', del); // выводим обычное деление
    end;
    
    if n = 5 then begin
       c:=a div b; //делаем целочисленное деление
       a:= a mod b; // находим остаток, при этом меняем значение a
       writeln ('целочисленное деление - ', c); // выводим результат целочисленного деления
       writeln ('остаток - ', a); // выводим остаток
    end;
    
    if n = 6 then begin 
       pro:= sqr (a); // находим квадрат первого числа
       writeln ('Квадрат a равен ', pro); // выводим квадрат перового числа 
    end;
    
    if n = 7 then begin
       del:= sqrt (a); // Находим квадратный корень первого числа
       writeln ('Кв. корень равен ',del); // Выводим кв. корень
    end; //
                                  
                                  
end. //конец программы

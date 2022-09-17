using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestFormula
{
    class Program
    {
        static void Main(string[] args)
        {
            // вводимый артикуль
            String artikul = "4/16/4";

            // переменная камерности СП
            int chamb = 0;
             
            // переменная толщины СП
            int thickGP = 0;
            
            // переменная толщины стекла
            int thickGlass = 0;

            // разделение строки, через разделитель и создания массива строк
            String[] mas = artikul.Split('/');

            // цикл для работы с каждым значением массива
            for(int i = 0; i < mas.Length; i++)
            {
                //однокамерный СП
                if (mas.Length == 3)
                {
                    chamb = 1;
                   
                    String[] numb = new String[2];
                    // условный оператор для получения первой и второй цифры толщины СП
                    if (mas[i].Length > 1)
                    {
                        numb[0] = mas[i].Substring(0, 1);
                         numb[1] = mas[i].Substring(1, 1);
                    }
                    else
                    {
                        numb[0] = mas[i].Substring(0, 1);
                        numb[1] = "n";
                    }
                    int result = 0;
                    // условный оператор для проверки, является ли второе число - цифрой
                    if (System.Char.IsDigit(Convert.ToChar( numb[1])) == true)
                    {
                       //формула расчета толщины для 2-х значного числа
                        result = Convert.ToInt32(numb[0]) * 10 + Convert.ToInt32(numb[1]);
                    }
                    else
                    {
                        //формула расчета толщины для 1 значного числа
                        result = Convert.ToInt32(numb[0]);
                    }
                    thickGP += result;
                    if (i != 1)
                    {
                        thickGlass += result;
                    }
                }
                //двухкамерный СП
                else if (mas.Length == 5)
                {
                    chamb = 2;
                    String[] numb = new String[2];
                    
                    if (mas[i].Length > 1)
                    {
                        numb[0] = mas[i].Substring(0, 1);
                        numb[1] = mas[i].Substring(1, 1);
                    }
                    else
                    {
                        numb[0] = mas[i].Substring(0, 1);
                        numb[1] = "n";
                    }
                    int result = 0;
                    
                    if (System.Char.IsDigit(Convert.ToChar(numb[1])) == true)
                    {

                        result = Convert.ToInt32(numb[0]) * 10 + Convert.ToInt32(numb[1]);
                    }
                    else
                    {
                        result = Convert.ToInt32(numb[0]);
                    }
                    thickGP += result;
                    if (i != 1 && i !=3 )
                    {
                        thickGlass += result;
                    }

                }
                else
                {
                    Console.WriteLine("Некорректный ввод артикуля");
                    Console.ReadKey();
                    Environment.Exit(0);
                }
                
            }
            
            Console.WriteLine($"{artikul}\nСтекло {chamb} камерное, толщина СП = {thickGP}, толщина стекла = {thickGlass}");
            Console.ReadKey();

        }
    }
}

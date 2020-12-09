/*:
 ## Упражнение - приведение типов и их контроль
 
 Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
 */
let array: [Any] = [5.0, 4.3, 14, 8, 3, "Hello", "January", true, false]


/*:
 Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
 */
func getInt(array: [Any]) {
    for value in array {
        if let realValue = value as? Int {
            print("Целое число, \(realValue)")
        } else if let realValue = value as? Double {
            print("Вещественное число, \(realValue)")
        } else if let stringValue = value as? String {
            print("Строка, \(stringValue)")
        } else if let boolValue = value as? Bool {
            print("Булево значение, \(value)")
        }
    }
}

getInt(array: array)
/*:
 Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите пары ключ/значения для всех элементов коллекции.
 */
let dictionary: [String: Any] = ["first": 17.1, "third": 5, "fourth": 3, "fifth": "February", "second": 16.5, "sixth": true, "seventh": "July", "eighth": false]

/*:
 Создайте переменную `total` типа `Double`, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`.  Напечатайте значение `total`.
 */
var total: Double = 0

func getSum(dictionary: [String: Any]) {
    
    for (_, value) in dictionary {
        if let stringValue = value as? String {
            total += 1
        } else if let boolValue = value as? Bool {
            boolValue ? (total += 2) : (total -= 3)
        } else if let realValue = value as? Double {
            total += realValue
        } else if let integerValue = value as? Int {
            total += Double(integerValue)
        }
    }
}
getSum(dictionary: dictionary)
//print("Total = \(total)")

/*:
 Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */

func getSum1(dictionary: [String: Any]) {
    
    for (_, value) in dictionary {
        if let stringValue = value as? String {
            total += Double(stringValue.count)
            print(stringValue,stringValue.count)
        } else if let realValue = value as? Double {
            total += realValue
            print(realValue)
        } else if let integerValue = value as? Int {
            total += Double(integerValue)
            print(integerValue)
        }
    }
}

total = 0
getSum1(dictionary: dictionary)
print("Total = \(total)")
//: страница 1 из 2  |  [Далее: упражнение для приложения - типы тренировок](@next)

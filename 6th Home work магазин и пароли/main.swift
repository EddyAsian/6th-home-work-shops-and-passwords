
//  Created on 29/9/22.
import Foundation


//ДЗ №6 Опциональные типы данных и работа с ними

//Используя  известные вам методы создать следующие программы

//№1. Составить программу, которая будет добавлять товары в базу данных товаров магазина. Учесть, что у некоторых товаров может не быть некоторых параметров

//Параметры:
//Название
//Производитель
//Вес
//Штрих-код
//Цена
//Скидка (если есть - указываете, если нет - nil)
//Наличие (если есть - указываете, если нет - nil)
//В конце вывести общее количество товаров (какого вида сколько товаров) и общую стоимость товаров магазина




// создадим пустые массивы
var name : [String] = []
var provider : [String] = []
var weight : [Int] = []
var barcode : [Int] = []
var price : [Int] = []
var discount : [Int] = []
var amount : [Int] = []
var total : [Int] = []
var available : [String] = []
var totalm = 0
var count = 0
var Title = ""
// код для выхода из системы и завершения цикла

while Title != "выход" {
    print("Чтобы добавить товар в базу данных, введите ниже 7 пунктов:\n(для завершения введите `выход`\nНазвание товара:")
    let Title = readLine()!
    if Title == "выход" {
        break
    }
// добавляем согласно критериям и типам данных в массивы след значения:
    name.append(Title)
    print("Производитель")
    let providerNew = readLine()!
    provider.append(providerNew)
    print("Вес (кг)")
    let weightNew = Int(readLine()!)
    weight.append(weightNew ?? 0)
    print("Штрих-код")
    let barcodeNew = Int(readLine()!)
    barcode.append(barcodeNew ?? 0)
    print("Цена (сом)")
    let priceNew = Int(readLine()!)
    price.append(priceNew ?? 0)
    print("Скидка (%)")
    let discountNew = Int(readLine()!)
    discount.append(discountNew ?? 0)
    print("Количество (шт)")
    let amountNew = Int(readLine()!)
    amount.append(amountNew ?? 0)
    price.append(priceNew ?? 0)
    print("Наличие в магазине (да или нет)")
    let availableNew = readLine()!
    available.append(availableNew)
  
    //считаем общую сумма товара учитывая скидку
    
    total.append(amount[count]*price[count]-amount[count]*price[count]*discount[count]/100)
    count += 1
}
// оформляем все в массив если количество больше чем 0, если меньше <0 то запись не идет в массив
for i in 0..<count {
    print("Штрих-код: \(barcode[i]). \(name[i]) / \(provider[i]) / \(weight[i]) кг / цена - \(price[i]) / количество - \(amount[i]) шт / скидка - \(discount[i]) % / сумма - \(total[i]) сом / наличие - \(available[i])  ")
    totalm += total[i]
}

//находим общую сумму всех товаров имеющихся на данный момент:
print("В Магазине имеется товаров на общую сумму - \(totalm) сом")




print("")

//№2. Составить программу, которая будет сохранять имя пользователя, пароль и секретное слово(может быть, а может быть не указано)
//В конце проверить, если человек использует одинаковые пароли - написать “Пароли на Mail.Ru и Facebook похожи. Рекомендуем изменить пароль”(например)


//создаем пустые массивы
var title: [String] = []
var login: [String] = []
var password: [String] = []
var Help: [String] = []
var index = -1
let c = 0

// встречающая надпись в консоли и слово для выхода из цикла:
while c == 0 {
    print("Для сохранения ваших личных данных, введите ниже информацию\n( для завершения введите `готово` )\nНазвание соц сети:")
    let newTitle = readLine()!
    if newTitle == "готово" {
        break
    }
    index += 1
    title.append(newTitle)
    print("Ваш логин или никнейм:")
    let newLogin = readLine()!
    login.append(newLogin)
   
    print("Пароль:")
//функция при совпадении паролей:
    var newPassword = readLine()!
    for i in 0..<index {
        while newPassword == password[i] {
            print("Извините, Ваши пароли совпадают с соц сетью \(title[i]). Это небезопасно.\nПожалуйста, введите другой пароль:")
            newPassword = readLine()!
        }
    }
    password.append(newPassword)
    print("При желании укажите `Секретное слово`")
    let newHelp = readLine()!
    Help.append(newHelp)
}
//  выводим все данные массивов в консоль:
for i in 0...index {
    print("Соц сеть: \(title[i]), Логин: \(login[i]), Пароль: \(password[i]), Секретное слово: \(Help[i])")
}

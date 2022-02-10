### Assignment #1

# HelloSwift

### Opis zadania

Celem zadania jest stworzenie trzech klas oraz jednego rozszerzenia, wykonujących proste funkcje. Dzięki temu zadaniu poznasz lepiej składnię Swifta, oraz nauczysz się tworzyć proste klasy typu *Util*. Nauczysz się też podstaw obsługi *XCode*, oraz procesu uruchamiania testów jednostkowych.

#### Math Tools

Pierwszą klasą jest klasa `MathTools`. Klasa ta posiada jedną metodę, której zadaniem jest policzenie wartości ciągu Fibonacciego dla podanego argumentu. Przykładowe wywołania dla tego klasy mają wyglądać w ten sposób:

```swift
let math = MathTools()
print(math.fibonacci(10))
// prints: 55
```

---

#### String Tools

Drugą klasą jest klasa `StringTools`. W tej klasie stworzymy jedną funkcję, która liczy ilość wystąpień podanego znaku w przekazanym `String`u. Przykładowe użycie mamy poniżej:

```swift
let stringTools = StringTools()
let count = stringTools.countOccurrences(character: "i", from: "Hello. My name is Rafał.")
print(count)
// prints: 2
```

Klasa `StringTools` obsługuje dwie wersje podanej funkcji. Może zliczać wystąpienia zarówno z uwzględnieniem wielkości znaków, jak i w trybie case-insensitive. Parametr `caseSensitive` jest ostatnim parametrem funkcji, który **domyślnie** ma wartość `true`. Poniżej przykładowe wywołanie z użyciem parametru.

```swift
print(StringTools().countOccurrences(character: "h", from: "Hello. My name is Rafał.", caseSensitive: true))
// prints: 1

print(StringTools().countOccurrences(character: "h", from: "Hello. My name is Rafał.", caseSensitive: false))
// prints: 2
```

---

#### Factorization

Kolejne zadanie polega na stworzeniu klasy sprawdzającej czy podana liczba jest liczbą pierwszą, czy złożoną. Do tego celu wykorzystamy swiftowe `enum`y. Chcemy żeby wywołanie naszej klasy wyglądało w ten sposób:

```swift
let result = Factorization.factorize(5)
print(result == .prime)
// prints: true
```

Jak widać w powyższego `print`u – metoda `factorize` zwraca `Optional<Result>`, czyli `Result?`. Dlaczego wykorzystaliśmy typ `Optional`? Niektóre liczby całkowite nie kwalifikują się ani jako pierwsze, ani jako złożone. Wtedy chcemy, żeby funkcja zwróciła `nil`.

W przypadku liczby złożonej funkcja `factorize` zwraca inną opcję z enuma `Result`. Ta opcja zawiera **associated value** będące tablicą dzielników (ułożone niemalejąco czynniki pierwsze z rozkładu parametru).

```swift
Factorization.factorize(1) == nil
Factorization.factorize(5) == .prime
Factorization.factorize(6) == .composite(factors: [2, 3])
Factorization.factorize(8) == .composite(factors: [2, 2, 2])
Factorization.factorize(2 * 2 * 5 * 11 * 13) == .composite(factors: [2, 2, 5, 11, 13])
```

```
func testFactorsOf1() {
  XCTAssertNil(Factorization.factorize(1))
}

func testFactorsOf2() {
  XCTAssertEqual(Factorization.factorize(2), .prime)
}

func testFactorsOf4() {
  XCTAssertEqual(Factorization.factorize(4), .composite(factors: [2, 2]))
}
```

---

#### Int extension

Ostatnie zadanie polega na rozszerzeniu typu `Int` o przydatną metodę do wykonywania zadania wielokrotnie.

```swift
2.times { print("Hello") }

/* prints:
 *
 *   Hello
 *   Hello
 */
```

Jak widać w powyższego `print`u – metoda `times` wywołuje pewien przekazany blok kodu kilka razy.

```swift
var counter = 0
10.times { counter += 10 }
// counter == 100
```

Powyższe wywołanie wykorzystuje trailing closure syntax, ale można też wywołać tę metodę wraz z pełną sygnaturą closure:

```swift
var counter = 0
10.times({ () -> Void in
  counter += 10
})
//counter == 100
```

Powyższe wywołania są równoważne, ale to drugie powinno Wam ułatwić poprawne stworzenie sygnatury metody.

---

### Wskazówki

1. Projekt startowy znajduje się już w folderze `HelloSwift`. To dobre miejsce, żeby zacząć!
2. Stwórz cztery pliki pod rozwiązania odpowiednich zadań (`StringTools.swift`, `MathTools.swift`, `Factorization.swift` oraz `Int+Extension.swift`).
3. Napisz nagłówki funkcji. Przeczytaj odpowiednie informacje o [domyślnych parametrach funkcji](https://docs.swift.org/swift-book/LanguageGuide/Functions.html#ID169).
4. Typ targetu, który mamy w tym projekcie to *biblioteka*. Dlatego nie możesz jej **uruchomić** – możesz jedynie uruchomić testy jednostkowe. Zrób to przy pomocy skrótu klawiaturowego **⌘+U**.
5. Testy jednostkowe, które stworzyłem do zadania pobierz i umieść w projekcie tak, aby móc sprawdzać czy Twoje zadanie się uruchamia i spełnia założenia.
   - `MathToolsTests.swift`
   - `StringToolsTests.swift`
   - `IntExtensionTests.swift`
6. Do zadania 3 nie dołączam testów jednostkowych. Napisałem przykładowe wywołania tych funkcji – wykorzystaj je. Możesz napisać własne testy, ale musisz sobie sam(a) poradzić z ich uruchomieniem.
7. W trzecim zadaniu jako rezultatu użyj odpowiedniego [*enum*](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html).
8. Pamiętaj, żeby opcji `Result.composite` dać **associated value** – `factors: [Int]`.
9. Typ `Result` umieść jako wewnętrzny typ klasy `Factorization` – taki jest pattern w Swifcie, zamiast tworzyć wiszący enum `FactoriationResult`.
10. Podpowiedź: aby móc porównywać do siebie struktury, musisz oznaczyć conformance do protokołu `Equatable`.
11. Napisz poprawne nagłówek funkcji `factorize`. Użyj funkcji statycznej (obiekt `Factorization` nie ma stanu wewnętrznego).
12. Pamiętaj żeby odpowiednio [skonfigurować git'a](https://help.github.com/en/github/using-git/setting-your-username-in-git).

### Kryteria oceny

1. Przechodzące wszystkie testy
2. Styl kodu
3. Umieszczenie klas w osobnych, poprawnie nazwanych plikach
4. Historia commitów

### Odpowiedzi

Odpowiedzi będą automatycznie przyjmowane do końca soboty **13.11.2021, 23:59**. Pamiętaj o pushowaniu swoich commitów!

#### Powodzenia!

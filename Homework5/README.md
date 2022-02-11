### Assignment #4

# Rock, Paper, Scissors

### Opis zadania

Celem zadania jest stworzenie prostej aplikacji do gry w "Papier, Kamień, Nożyce". Aplikacjie należy stworzyć przy pomocy architektury MVVM. Dzięki temu w praktyczny sposób wykorzystasz wiedzę o MVVM. Widoki są już gotowe i nie powinno być potrzebne aby je modyfikować. Twoim celem jest skupienie się na implementacji Modelu i ViewModelu. Postaraj się to zrobić w taki sposób, aby podmiana logiki gry nie była problemem. Na przykład odwrócenie zasad (Kamień bije papiej, papier nożyczki, a nożyczki papier).

#### Rozgrywka

Rozgrywka składa się z rund. Każda runda może zakończyć się zwycięstwem, porażka lub remisem.
Rundy składają się z 2 faz.
1. Faza wybierania *Button* ma napis "Fight ⚔️" i jest disabled do puki nie zostanie wybrana jakaś opcja przez gracza. Wybór przeciwnika jest ukryty i widać jedynie znak ❔.Po kliknięciu *Button* następuje przejście do kolejnej fazy. 
2. Faza wyniku rozgrywki. W tej fazie widać wylosowany dla przeciwnika wybór i rezultat rozgrywki. Dla każdego rezultatu jest wyświetlany inny napis na środkowym *Button*:
  - Zwycięstwo: "You won 👑"
  - Porażka: "You lost 😭"
  - Remis: "It's a tie 👔"
 
 Po kliknięciu *Button* zostają przyznane punkty (przy remisie nikt nie dostaje punktów), wracamy do fazy wybierania i wybory zostają wyczyszczone.
 
 
 ![Simulator Screen Recording - iPhone 12 - 2021-11-29 at 23 34 42](https://user-images.githubusercontent.com/27335471/143955313-4edd7445-c81c-45a4-ad6d-413dcf54eabb.gif)

 
 ### Wskazówki

1. Pamiętaj, aby widok wiedział jak najmniej o logice gry. Nawet takie rzeczy jak to, że jest papier czy kamień.
2. Enumy mogą być bardzo przydatne do modelowania logiki gry. Fazy i rezultaty.
3. Skorzystaj z protokołu, aby móc w przyszłości korzystać z różnch zasad gry.
4. ViewModel powinien podawać już wartości gotowe do wyświetlenia.
5. View nie może wiedzieć o Modelu.
6. Pamiętaj o korzystaniu z bindingów ViewModel i View.


### Kryteria oceny

1. Poprawne użycie MVVM
2. Podział i implementacja logiki aplikcaji.
3. Styl kodu
4. Historia commitów

### Odpowiedzi

Odpowiedzi będą automatycznie przyjmowane do końca **4.12.2021, 23:59** (sobota). Pamiętaj o pushowaniu swoich commitów!

#### Powodzenia!
  

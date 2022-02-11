### Assignment #2

# ZooPreview


### Opis zadania

Celem zadania jest stoworzenie widoku, który wyświetla informacje o kozie *Gotenks*. Dzięki temu zadaniu poznasz lepiej *SwiftUI* i podstawowe *View*. Dane do wyświetlenia reperezentuje struktura *Goat*. W pliku *ZooPreview/Goat.swift* znajduje się również jedna instancja tej struktury - możesz ją wykorzystać lub zmodyfikować. Jeśli nie jesteś fanem kóz ❌🐐 to śmiało zaprezentuj informacje o innym wybranym zwierzęciu!

#### Layout 

Postaraj się jak najlepiej odwzorować layout przedstawiony na grafice poniżej. Zwróć szczególną uwagę na rozmieszczenie elementów, nieco mniej uwagi możesz poświęcić na odwzorowanie ich rozmiarów i kolorów (te parametry są podane żebyś nie musiał/musiała siedzieć i się zastanawiać jaki zrobić padding 😉). Ponadto, jeśli w jakimś miejscu nie ma podanych odległości oznacza to, że jest to przestrzeń dopasowująca się lub korzysta z domyślnych wartości z *SwiftUI*. Obrazki, których nie ma w projekcie pochodzą z [SFSymbols](https://developer.apple.com/sf-symbols/). Kropki w sekcji *FunFacts* mają frame 10x10.

![goat](https://user-images.githubusercontent.com/27335471/141654707-709a4c7e-e99e-4b81-840b-29bb410f3e66.png)

#### Zachowanie ekranu

Ekran powinien zostać zaimplementowany przy użyciu *ScrollView*. Zwróć uwagę na zachowanie poszczególnych elementów podczas scrollowania 🤔.

![Simulator Screen Recording - iPhone 12 - 2021-11-13 at 19 13 00](https://user-images.githubusercontent.com/27335471/141654659-c7b5027a-5b23-4cf2-9fac-0eabddaefa9a.gif)

### Wskazówki

1. Możesz stworzyć dodatkowe pliki dla innych widoków. Staraj się tworzyć i logicznie dzielić na mniejsze widoki. Dzięki temu Tobie i innym będzie łatwiej zrozumieć co się dzieje.
2. Do implementacji zdjęcia które się rozciąga wraz ze scrollowaniem skorzystaj z *GeometryReader* i możliwości sprawdzenia *frame* w globalnej hierarchi widoków.
3. Aby przeładować *Preview* użyj **⌥+⌘+P**. Preview domyślnie uruchamia się na symulatorze, który masz ustawiony jako aktualny.
4. Pamiętaj o możliwości korzystania w *View* z takich wyrażeń jak *ForEach* czy *if...else*.
5. Każdy konterner, oprócz widoków które wyświetla, może również przyjąć odpowiedni dla siebie *Alignment*.
6. Podpowiedź: W *Text* możesz również umieścić np. *Image*.
7. Podpowiedź: Pamiętaj `.overlay()` i `.background()`.
8. Aby obrazek nie wychodził poza swój frame, należy skorzystać z `.clipped()`.
9. Warning ⚠️: Kolejność modifierów ma znaczenie!

### Kryteria oceny

1. Odwzorowanie layoutu i jego zachowania
2. Styl kodu
3. Podział widoków i ich rozmieszczenie
4. Historia commitów

### Odpowiedzi

Odpowiedzi będą automatycznie przyjmowane do końca **20.11.2021, 23:59** (sobota). Pamiętaj o pushowaniu swoich commitów!

#### Powodzenia!

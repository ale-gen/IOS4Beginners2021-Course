### Assignment #2

# ColorTimer

### Opis zadania

Celem zadania jest połączenie gotowych widoków i modelu tak, aby zapewnić prawidłowy przepływ danych. Dzięki temu zadaniu przeciwiczysz manipulacje danych w *SwiftUI*. Do poprawnego wykonania tego zadania nie trzeba, dodawać nowych plików i widoków. 

## Zasady działania

### Działanie timera
Po kliknięciu buttona na dole należy wstartować timer. Z upływem każdej sekundy aktualizuje się wyświetlany czas i zmienia się tło z *Primary* na *Secondary* i odwrotnie 🔄. Kiedy timer skończy odliczanie wszelkie zmiany powinny zostać zastopowane na ostatnim stanie. Do odliczania czasu należy skorzystać z gotowej klasy *TimerModel*.

![Simulator Screen Recording - iPhone 12 - 2021-11-22 at 20 47 06](https://user-images.githubusercontent.com/27335471/142925680-413d1a23-4191-44da-9daf-5889b4539361.gif)

### Konfiguracja
Konfigurować można poprzez wybór konfigurowalnego elementu i następnie ustawienie koloru przez systemowy `ColorPicker`. Przy każdym konfigurowalnym elemencie jest widoczny aktualnie wybrany kolor. Odliczany czas konfigurowany jest przez systemowy `Stepper`. Nie można ustawić mniej niż 0.

![Simulator Screen Recording - iPhone 12 - 2021-11-22 at 20 47 42](https://user-images.githubusercontent.com/27335471/142925791-73acf15b-e1ef-46b7-85dd-c633343fb0bc.gif)

### Konfiguracja podczas odliczania
Konfiguracja jest możliwa również podczas odliczania i jej efekty powinny być od razu widoczne. Możliwe jest również zwiększanie/zmniejszanie czasu.

![Simulator Screen Recording - iPhone 12 - 2021-11-22 at 20 48 30](https://user-images.githubusercontent.com/27335471/142925893-6667feb1-2e99-426c-9970-cd1e4a4b1aef.gif)

### Wskazówki

1. Aby śledzić zmiannę jakieś wartośći skorzystaj z `onChange`.
2. Staraj się aby widoki dostawały tylko tyle danych ile potrzebują.
3. Pamiętaj, że niektóre wartości można configurować z zewnątrz.
4. Możesz przekazywać *closure*.
5. Musisz ustawić jakieś domyślne wartości początkowe.
6. Aby animować zmianę stanu skorzystaj z `withAnimation { ... }` lub `.animate()`.

### Kryteria oceny

1. Poprawne działanie
2. Poprawne wykorzystanie elementów SwiftUI
3. Historia commitów

### Odpowiedzi

Odpowiedzi będą automatycznie przyjmowane do końca **27.11.2021, 23:59** (sobota). Pamiętaj o pushowaniu swoich commitów!

#### Powodzenia!

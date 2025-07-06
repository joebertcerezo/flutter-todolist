# Class Implementation
## 1 Positional Optional Parameter
```dart
class ToDoItem {
  String title;
  bool isCompleted;

  ToDoItem(this.title, [this.isCompleted = false]);
}
```
Usage:
```dart
ToDoItem("Wash Dishes", false)
ToDoItem("Walk the Dog", true)
ToDoItem("Buy Groceries")
```

## 2 Positional Optional Named Parameter

```dart
class ToDoItem {
  String title;
  bool isCompleted;

  ToDoItem(this.title, {this.isCompleted = false});
}
```
Usage:
```dart
ToDoItem("Wash Dishes", isCompleted: false)
ToDoItem("Walk the Dog", isCompleted: true)
ToDoItem("Buy Groceries")
```

## 3 Named Optional Parameters

```dart
class ToDoItem {
  String title;
  bool isCompleted;

  ToDoItem({required this.title, this.isCompleted = false});
}
```
Usage:
```dart
ToDoItem(title: "Wash Dishes", isCompleted: false)
ToDoItem(title: "Walk the Dog", isCompleted: true)
ToDoItem(title: "Buy Groceries")
```

# Kontrollstrukturen 

Auf dieser Seite werden Kontrollstrukturen beschrieben, die für die Steuerung des Programmflusses in JavaScript benötigt werden. 

## Wenn-Dann

### `if`-Anweisung

Die `if`-Anweisung ist die einfachste Form der bedingten Ausführung. Sie erlaubt es, einen Codeblock nur dann auszuführen, wenn eine bestimmte Bedingung wahr (`true`) ist.

**Syntax:**

```javascript
if (bedingung) {
  // Codeblock, der ausgeführt wird, wenn die Bedingung wahr ist
}
```

**Beispiel:**

```JavaScript
let alter = 20;

if (alter >= 18) {
  console.log("Du bist volljährig.");
}
```

### `else`-Anweisung

```JavaScript
if (bedingung) {
  // Codeblock, der ausgeführt wird, wenn die Bedingung wahr ist
} else {
  // Codeblock, der ausgeführt wird, wenn die Bedingung falsch ist
}
```

### `else if`-Anweisung (oder else if-Kette)

Wenn wir mehrere Bedingungen nacheinander prüfen müssen, können wir die `else if`-Anweisung verwenden. Sie wird nach einer `if`-Anweisung und vor einer optionalen else-Anweisung eingesetzt.  

JavaScript: `else if` 
Python: `elif`

**Beispiel:**

```JavaScript
let note = 85;
let grade;

if (note >= 90) {
  grade = "A";
} else if (note >= 80) {
  grade = "B";
} else if (note >= 70) {
  grade = "C";
} else if (note >= 60) {
  grade = "D";
} else {
  grade = "F";
}

console.log(`Die Note ${note} entspricht dem Buchstaben ${grade}.`);
}
```

### `switch`-Anweisung

Die `switch`-Anweisung bietet eine alternative Möglichkeit, Entscheidungen basierend auf dem Wert eines Ausdrucks zu treffen. Sie ist oft übersichtlicher, wenn man einen einzelnen Ausdruck gegen mehrere konstante Werte prüfen möchte. 

```JavaScript
switch (ausdruck) {
  case wert1:
    // Codeblock, der ausgeführt wird, wenn ausdruck === wert1
    break;
  case wert2:
    // Codeblock, der ausgeführt wird, wenn ausdruck === wert2
    break;
  case wert3:
    // Codeblock, der ausgeführt wird, wenn ausdruck === wert3
    break;
  default:
    // Optionaler Codeblock, der ausgeführt wird, wenn keiner der vorherigen Fälle zutrifft
}
```

**Beispiel:**

```JavaScript
let dayOfWeek = "Mittwoch";
let activity;

switch (dayOfWeek) {
  case "Montag":
    activity = "Wochenstart-Meeting";
    break;
  case "Dienstag":
  case "Mittwoch":
    activity = "Projektarbeit";
    break;
  case "Donnerstag":
    activity = "Team-Lunch";
    break;
  case "Freitag":
    activity = "Wochenabschluss";
    break;
  default:
    activity = "Wochenende!";
}

console.log(`Am ${dayOfWeek} ist: ${activity}`);
```

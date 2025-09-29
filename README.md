# custom_alert
custom_alert is a reusable Flutter package that provides a clean and customizable alert box.

---

## Features

- ✅ Customizable alert box with title
- ✅ Customizable Icons
- ✅ Customizable Background
- ✅ Customizable Text
- ✅ Lightweight and easy to use

---

## Priview
![Example Image](https://github.com/DKsanjana/progress_step/blob/master/assets/Priview.jpg?raw=true)

## Getting started

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  custom_alert: ^0.0.1


```

## Usage
```yaml
ElevatedButton(
   onPressed: (){
        Customalert().show(
           context,
           message: "Something Went Wrong!",
           closeduration: Duration(seconds: 2),
           backgroundColor: Colors.red,
           textStyle: TextStyle(
                        color: Colors.white,fontSize: 16),
                        isIcon: true,
                        icn: Icon(Icons.error_outline, color: Colors.white, size: 30
                       );
      },
        style: ButtonStyle
                 (
                    backgroundColor: WidgetStateColor.resolveWith((states)=> Colors.green)
                  ),
        child: Text("Register",style: TextStyle(color: Colors.white),))


<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

## Features
- Change Variable Type
- Check is Numeric
- simply to Boolean result
- Auto Permission Request


## Getting started

Will add later...

## Usage

TheFunc().isNumeric("034");  

Declaration :
    cvt = TheFunc();  

Change Variable Type
    cvt.changeAs(bool, '') //return false  
    cvt.changeAs(bool, 'TRUE'); //Return true  
    cvt.changeAs(String, 'One'); //Return 'One'  
    cvt.changeAs(int, '1'); //Return 1  

Check As Boolean Return
    cvt.keBoolean(''); //Return false  
    TheFunc().keBoolean(''); //Return false  
    TheFunc().keBoolean('0'); //Return false  
    TheFunc().keBoolean('false'); //Return false  
    TheFunc().keBoolean('False'); //Return false  
    TheFunc().keBoolean('True'); //Return true  
    TheFunc().keBoolean('true'); //Return true  
    TheFunc().keBoolean('1'); //Return true  
  });

Permission Handle And Asking Gui on Device
    ThePermission().requestPermission("storage");


## Additional information

This Package is just for simplifying.  
welcome for contribute and support.  

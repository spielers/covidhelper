# 👋Covidhelper

A Flutter app to help to understand covid-19 with live global and local states and A smart SOS feature with local indian helpline number

<p align="center">
  <a href="https://www.paypal.me/gamitics">
    <img src="https://img.shields.io/badge/Donate-PayPal-blue.svg?style=for-the-badge">
  </a>

</p>

![GitHub issues](https://img.shields.io/github/issues-raw/spielers/covidhelper)
![GitHub](https://img.shields.io/github/license/spielers/covidhelper)
![GitHub followers](https://img.shields.io/github/followers/spielers?label=FOLLOW&style=social)

## About

This is a A Flutter project for covid-19 live stats.the project will guide you with the precaaution and the most affected areas as on heatmap,you can use helpline numbers to call directly to the service center where they will assist you for further process. the SOS function can be found usefull at the emmergancy conditions.

Implementations of languages:

| .dart | Java | Python | XML |  
| :---  | :--- | :----- | :-- | 
| TBD   | TBD  | TBD    | TBD | 

## Motivation

Unpresedented attack of the virus Covid-19 has hit worse on both small scale as well as large scale industries. Service providing companies got crushed down. And now when it is clear that the virus will have deepest possible impact on the world economy, many of the states will be interdependent for growth and support.
Corona outbroke in last week of december at Wuhan. 

this gave me an idea about creating a live support and stat showing application for normal peoples who are suffering from this massive outbreak.

## Build status

build with flutter for android.

for ios use xclient and compile this again

## Screenshots

<p>
<img src="https://github.com/spielers/covidhelper/blob/master/assests/a (1).png" alt="s1" width="200">
<img src="https://github.com/spielers/covidhelper/blob/master/assests/a (2).png" alt="s1" width="200">
<img src="https://github.com/spielers/covidhelper/blob/master/assests/a (3).png" alt="s1" width="200">
<img src="https://github.com/spielers/covidhelper/blob/master/assests/a (4).png" alt="s1" width="200">
<img src="https://github.com/spielers/covidhelper/blob/master/assests/a (5).png" alt="s1" width="200">
<img src="https://github.com/spielers/covidhelper/blob/master/assests/a (6).png" alt="s1" width="200">
<img src="https://github.com/spielers/covidhelper/blob/master/assests/a (7).png" alt="s1" width="200">
</p>

## Features

### Accurate Daily stats 

### SOS function with twilio sms api

### indian helpline numbers

### indian local stats

### Acurate news of your area

## Installation

1]download or fork this repo

2]extract the zip by usig any extractor

3]You can use both android studio as well as vs code,I prefer Vs code:)

4]open this folder by using vs code.

5]navigate to  `covid19helper/lib/helper/key.dart`  and put your own key that you gate from newsapi.org

6]navigate to `covid19helper/lib/services/twilio chat.dart`  and put your own 

```dart
accountSid: '**********************',
authToken: 'xxxxxxxxxxxxxxx', that you gate from twilio account 

```

7]open terminal and type

```dart
flutter doctor
```

8]After every green signal from doctor just use

```dart
flutter get

```

9]after this just run the thing

```dart
flutter run

```

10] hola done you built your own app


## API Reference

covid19 india stats by covid19.org

`https://api.covid19india.org/v2/state_district_wise.json`

global stats heruku

`https://api-corona.herokuapp.com/`

twilio sms api flutter pub dev

`https://pub.dev/packages/twilio_flutter#-example-tab-`

newsapi by news

`https://newsapi.org/`

## ✨ How to use?

You can use this for daily stats as well as in emmergency conditions,by USing SOS you can directly send msg to the helpeline near your area

## 🤝 Contribute

feel free to fork this repoistory.
Add your own features and send PR.

## Credits

@spielers.

## License

MIT

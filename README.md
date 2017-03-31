# Cordova Uptime plugin

This plugin will return the device uptime that is not affected by changing the device date/time settings.

## Installation

### With cordova-cli

If you are using [cordova-cli](https://github.com/apache/cordova-cli), install
with:

    cordova plugin add cordova-plugin-uptime

### With plugman

With a plain [plugman](https://github.com/apache/cordova-plugman), you should be
able to install with something like:

    plugman --platform <ios|android> --project <directory> --plugin https://github.com/MartinDomig/cordova-plugin-uptime.git

## Use from Javascript

The value returned is a string data type. In JavaScript, you might want to convert it to integer before using it for calculations.

    cordova.getUptime(function (uptime) {
        console.log("uptime in milliseconds: " + parseInt(uptime));
    });


## Supported platforms

* Android
* iOS
* Browser


## Quirks

* The return value is a string data type. This is because there is, as far as I know, no way to return a long value from an android cordova plugin. Please let me know if you know better.
* Browser support is not system time independent. It doesn't return system uptime, but the time since the browser loaded the application.


## Credits

Written by Martin Domig


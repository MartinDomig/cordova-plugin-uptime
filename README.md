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

    cordova.getUptime(function (uptime) {
        console.log("uptime in milliseconds: " + uptime);
    });


## Supported platforms

* Android
* iOS
* Browser

## Credits

Written by Martin Domig


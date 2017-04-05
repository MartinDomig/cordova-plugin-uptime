"use strict";

var cache = new Date().getTime();

var getUptime = function (success, fail) {
	success(new Date().getTime() - cache);
};

getUptime.getUptime = function (success, fail) {
	success("" + (new Date().getTime() - cache));
};

module.exports = getUptime;

require("cordova/exec/proxy").add("Uptime", module.exports);

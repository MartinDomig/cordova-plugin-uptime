#import "Uptime.h"
#import <Cordova/CDVPluginResult.h>

#include <sys/sysctl.h>

@implementation Uptime

- (void)getUptime : (CDVInvokedUrlCommand *)command
{
    struct timeval boottime;
    int mib[2] = {CTL_KERN, KERN_BOOTTIME};
    size_t size = sizeof(boottime);

    struct timeval now;
    struct timezone tz;
    gettimeofday(&now, &tz);

    long long int uptime = -1;

    if (sysctl(mib, 2, &boottime, &size, NULL, 0) != -1 && boottime.tv_sec != 0)
    {
        uptime = ((long long int)(now.tv_sec - boottime.tv_sec)) * 1000;
        uptime += (now.tv_usec - boottime.tv_usec) / 1000;
    }

    NSString * callbackId = command.callbackId;
    CDVPluginResult * pluginResult =[CDVPluginResult resultWithStatus : CDVCommandStatus_OK messageAsString : [[NSNumber numberWithLong:uptime] stringValue] ];
    [self.commandDelegate sendPluginResult : pluginResult callbackId : callbackId];
}

@end

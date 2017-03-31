package net.domig.cordova;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.os.SystemClock;

public class Uptime extends CordovaPlugin {
  @Override
  public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {

    try {
      if (action.equals("getUptime")) {
	long elapsed = SystemClock.elapsedRealtime();
        callbackContext.success(String.valueOf(elapsed));
        return true;
      }
      return false;
    } catch (Exception e) {
      e.printStackTrace();
      callbackContext.success("N/A");
      return true;
    }
  }
}


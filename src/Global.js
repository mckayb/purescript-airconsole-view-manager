"use strict"

exports.getAirConsoleViewManagerGlobal = function(ac) {
  return function () {
    return new AirConsoleViewManager(ac);
  }
}

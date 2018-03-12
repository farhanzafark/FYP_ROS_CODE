
"use strict";

let sensorValMsg = require('./sensorValMsg.js');
let rfidMsg = require('./rfidMsg.js');
let graphMsg = require('./graphMsg.js');
let parameterMsg = require('./parameterMsg.js');
let beginOpMsg = require('./beginOpMsg.js');
let myCustom = require('./myCustom.js');
let motorMsg = require('./motorMsg.js');
let proximityMsg = require('./proximityMsg.js');
let ultrasonicMsg = require('./ultrasonicMsg.js');

module.exports = {
  sensorValMsg: sensorValMsg,
  rfidMsg: rfidMsg,
  graphMsg: graphMsg,
  parameterMsg: parameterMsg,
  beginOpMsg: beginOpMsg,
  myCustom: myCustom,
  motorMsg: motorMsg,
  proximityMsg: proximityMsg,
  ultrasonicMsg: ultrasonicMsg,
};

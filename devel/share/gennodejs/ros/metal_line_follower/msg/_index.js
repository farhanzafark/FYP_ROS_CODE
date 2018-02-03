
"use strict";

let sensorValMsg = require('./sensorValMsg.js');
let rfidMsg = require('./rfidMsg.js');
let parameterMsg = require('./parameterMsg.js');
let myCustom = require('./myCustom.js');
let motorMsg = require('./motorMsg.js');
let proximityMsg = require('./proximityMsg.js');
let ultrasonicMsg = require('./ultrasonicMsg.js');

module.exports = {
  sensorValMsg: sensorValMsg,
  rfidMsg: rfidMsg,
  parameterMsg: parameterMsg,
  myCustom: myCustom,
  motorMsg: motorMsg,
  proximityMsg: proximityMsg,
  ultrasonicMsg: ultrasonicMsg,
};

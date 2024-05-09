/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"Salesui/Salesui/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});
"use strict";

module.exports = function (app) {
  var report_notes = require("./controller/report_notes");
  app.route("/api/report/note").get(report_notes.get);
  app.route("/api/report/note").put(report_notes.insert);
  app.route("/api/report/note").post(report_notes.update);
  app.route("/api/report/note").delete(report_notes.delete);

  var dashboard = require("./controller/dashboard");
  app.route("/api/dashboard/healthy-check").get(dashboard.getHealthyCheck);
  app.route("/api/dashboard/bbm").get(dashboard.getBbmAll);
  app.route("/api/dashboard/bbm-daily").get(dashboard.getBbmDaily);
  app.route("/api/dashboard/bbm-monthly").get(dashboard.getBbmMonthly);
  app.route("/api/dashboard/summary-alarm").get(dashboard.getSummaryAlarm);
  app.route("/api/dashboard/pic").get(dashboard.getPic);
  app.route("/api/dashboard/activity").get(dashboard.getActivity);
  app.route("/api/dashboard/power-condition").get(dashboard.getPowerCondition);
  app.route("/api/dashboard/backup-time").get(dashboard.getBackupTime);
  app.route("/api/dashboard/temp-humidities").get(dashboard.getTempHumidities);
  app.route("/api/dashboard/environment").get(dashboard.getEnvironment);
  app.route("/api/dashboard/event-notes").get(dashboard.getEventNotes);
};

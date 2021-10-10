"use strict";
const response = require("../response");
const models = require("../models");
const utils = require("../utils");
const perf = require("execution-time")();

exports.getHealthyCheck = async function (req, res) {
  var data = { data: req.query };
  try {
    // LINE WAJIB DIBAWA
    perf.start();
    // LINE WAJIB DIBAWA
    var $query = `
    SELECT status_kesehatan AS title , COUNT(*) AS value
    FROM report_health AS a 
    WHERE DATE(created_date) = CURDATE()
	  GROUP BY status_kesehatan ASC `;
    let check = await models.exec_query($query);
    return response.response(check, res);
  } catch (error) {
    data.error = true;
    data.message = `${error}`;
    return response.response(data, res);
  }
};
exports.getSummaryAlarm = async function (req, res) {
  var data = { data: req.query };
  try {
    // LINE WAJIB DIBAWA
    perf.start();
    // LINE WAJIB DIBAWA
    var $query = `
    SELECT temp.* FROM ( 
      SELECT b.id,b.critical,b.major,b.minor,b.created_date, a.graha_name ,a.graha_code 
      FROM cat_graha AS a
      LEFT JOIN report_alarm AS b ON a.graha_code = b.graha_code
      ORDER BY b.created_date DESC
      LIMIT 10
      ) AS temp GROUP BY (graha_code) `;
    let check = await models.exec_query($query);
    return response.response(check, res);
  } catch (error) {
    data.error = true;
    data.message = `${error}`;
    return response.response(data, res);
  }
};

exports.getBbmAll = async function (req, res) {
  var data = { data: req.query };
  try {
    // LINE WAJIB DIBAWA
    perf.start();
    // LINE WAJIB DIBAWA
    var $query1 = `
    SELECT temp.* FROM ( 
      SELECT * 
      FROM report_bbm 
      WHERE tank_code ='tank_1_d' OR tank_code ='tank_2_d'
      ORDER BY created_date DESC
      LIMIT 4
    ) AS temp GROUP BY (tank_code)`;
    let check1 = await models.exec_query($query1);
    var $query2 = `
    SELECT temp.* FROM ( 
      SELECT * 
      FROM report_bbm 
      WHERE tank_code ='tank_1_m' OR tank_code ='tank_2_m'
      ORDER BY created_date DESC
      LIMIT 4
    ) AS temp GROUP BY (tank_code)`;
    let check2 = await models.exec_query($query2);
    let datas = [
      { category: "daily", items: check1.data },
      { category: "monthly", items: check2.data },
    ];
    data.data = datas;
    return response.response(data, res);
  } catch (error) {
    data.error = true;
    data.message = `${error}`;
    return response.response(data, res);
  }
};

exports.getBbmDaily = async function (req, res) {
  var data = { data: req.query };
  try {
    // LINE WAJIB DIBAWA
    perf.start();
    // LINE WAJIB DIBAWA
    var $query = `
    SELECT temp.* FROM ( 
      SELECT * 
      FROM report_bbm 
      WHERE tank_code ='tank_1_d' OR tank_code ='tank_2_d'
      ORDER BY created_date DESC
      LIMIT 4
    ) AS temp GROUP BY (tank_code)`;
    let check = await models.exec_query($query);
    if (check.total_row != 2) {
      data.error = true;
      data.message = `Need 2 tank`;
      return response.response(data, res);
    }
    let bbm = check.data;
    let datas = [
      {
        type: "stackedBar100",
        toolTipContent: "{label}<br><b>{name}:</b> {y} (#percent%)",
        showInLegend: true,
        name: "Available",
        dataPoints: [
          {
            y: parseInt(bbm[1].available),
            label: bbm[1].tank_code == "tank_2_d" ? "Tank 2" : "Tank 1",
          },
          {
            y: parseInt(bbm[0].available),
            label: bbm[0].tank_code == "tank_1_d" ? "Tank 1" : "Tank 2",
          },
        ],
      },
      {
        type: "stackedBar100",
        toolTipContent: "{label}<br><b>{name}:</b> {y} (#percent%)",
        showInLegend: true,
        name: "Used",
        dataPoints: [
          {
            y: parseInt(bbm[1].used),
            label: bbm[1].tank_code == "tank_2_d" ? "Tank 2" : "Tank 1",
          },
          {
            y: parseInt(bbm[0].used),
            label: bbm[0].tank_code == "tank_1_d" ? "Tank 1" : "Tank 2",
          },
        ],
      },
    ];
    check.data = datas;
    return response.response(check, res);
  } catch (error) {
    data.error = true;
    data.message = `${error}`;
    return response.response(data, res);
  }
};

exports.getBbmMonthly = async function (req, res) {
  var data = { data: req.query };
  try {
    // LINE WAJIB DIBAWA
    perf.start();
    // LINE WAJIB DIBAWA
    var $query = `
    SELECT temp.* FROM ( 
      SELECT * 
      FROM report_bbm 
      WHERE tank_code ='tank_1_m' OR tank_code ='tank_2_m'
      ORDER BY created_date DESC
      LIMIT 4
    ) AS temp GROUP BY (tank_code)`;
    let check = await models.exec_query($query);
    if (check.total_row != 2) {
      data.error = true;
      data.message = `Need 2 tank`;
      return response.response(data, res);
    }
    let bbm = check.data;
    let datas = [
      {
        type: "stackedBar100",
        toolTipContent: "{label}<br><b>{name}:</b> {y} (#percent%)",
        showInLegend: true,
        name: "Available",
        dataPoints: [
          {
            y: parseInt(bbm[1].available),
            label: bbm[1].tank_code == "tank_2_m" ? "Tank 2" : "Tank 1",
          },
          {
            y: parseInt(bbm[0].available),
            label: bbm[0].tank_code == "tank_1_m" ? "Tank 1" : "Tank 2",
          },
        ],
      },
      {
        type: "stackedBar100",
        toolTipContent: "{label}<br><b>{name}:</b> {y} (#percent%)",
        showInLegend: true,
        name: "Used",
        dataPoints: [
          {
            y: parseInt(bbm[1].used),
            label: bbm[1].tank_code == "tank_2_m" ? "Tank 2" : "Tank 1",
          },
          {
            y: parseInt(bbm[0].used),
            label: bbm[0].tank_code == "tank_1_m" ? "Tank 1" : "Tank 2",
          },
        ],
      },
    ];
    check.data = datas;
    return response.response(check, res);
  } catch (error) {
    data.error = true;
    data.message = `${error}`;
    return response.response(data, res);
  }
};

exports.getPic = async function (req, res) {
  var data = { data: req.query };
  try {
    // LINE WAJIB DIBAWA
    perf.start();
    // LINE WAJIB DIBAWA
    var $query = `         
    SELECT * ,a.created_date AS updated_at
    FROM report_bbm AS a 
    LEFT JOIN user AS b ON a.created_by = b.username_telegram 
    ORDER BY a.created_date DESC
    LIMIT 1`;
    let check = await models.exec_query($query);
    return response.response(check, res);
  } catch (error) {
    data.error = true;
    data.message = `${error}`;
    return response.response(data, res);
  }
};

exports.getActivity = async function (req, res) {
  var data = { data: req.query };
  try {
    // LINE WAJIB DIBAWA
    perf.start();
    // LINE WAJIB DIBAWA
    var $query = `         
    SELECT * ,a.created_date AS updated_at
    FROM report_activities AS a 
    LEFT JOIN user AS b ON a.created_by = b.username_telegram 
    ORDER BY a.created_date DESC
    LIMIT 1`;
    let check = await models.exec_query($query);
    return response.response(check, res);
  } catch (error) {
    data.error = true;
    data.message = `${error}`;
    return response.response(data, res);
  }
};
exports.getPowerCondition = async function (req, res) {
  var data = { data: req.query };
  try {
    // LINE WAJIB DIBAWA
    perf.start();
    // LINE WAJIB DIBAWA
    var $query = `         
    SELECT * ,a.created_date AS updated_at
    FROM report_power AS a 
    LEFT JOIN user AS b ON a.created_by = b.username_telegram 
    ORDER BY a.created_date DESC
    LIMIT 1`;
    let check = await models.exec_query($query);
    return response.response(check, res);
  } catch (error) {
    data.error = true;
    data.message = `${error}`;
    return response.response(data, res);
  }
};

exports.getBackupTime = async function (req, res) {
  var data = { data: req.query };
  try {
    // LINE WAJIB DIBAWA
    perf.start();
    // LINE WAJIB DIBAWA
    var $query = `         
    SELECT *
    FROM report_backup_time AS a 
    ORDER BY a.created_date DESC
    LIMIT 1`;
    let check = await models.exec_query($query);
    return response.response(check, res);
  } catch (error) {
    data.error = true;
    data.message = `${error}`;
    return response.response(data, res);
  }
};

exports.getTempHumidities = async function (req, res) {
  var data = { data: req.query };
  try {
    // LINE WAJIB DIBAWA
    perf.start();
    // LINE WAJIB DIBAWA
    var $query = `
    SELECT temp.* FROM ( 
      SELECT a.room_name,b.*
      FROM cat_room AS a
      LEFT JOIN report_temp_humidities AS b ON a.room_code = b.room_code
      ORDER BY b.created_date DESC
      LIMIT 10
      ) AS temp GROUP BY (room_code) `;
    let check = await models.exec_query($query);
    return response.response(check, res);
  } catch (error) {
    data.error = true;
    data.message = `${error}`;
    return response.response(data, res);
  }
};

exports.getEnvironment = async function (req, res) {
  var data = { data: req.query };
  try {
    // LINE WAJIB DIBAWA
    perf.start();
    // LINE WAJIB DIBAWA
    var $query = `
    SELECT temp.* FROM ( 
      SELECT a.environment_name,b.*
      FROM cat_environment AS a
      LEFT JOIN report_environment AS b ON a.environment_code = b.environment_code
      ORDER BY b.created_date DESC
      LIMIT 10
      ) AS temp GROUP BY (environment_code)
`;
    let check = await models.exec_query($query);
    return response.response(check, res);
  } catch (error) {
    data.error = true;
    data.message = `${error}`;
    return response.response(data, res);
  }
};

exports.getEventNotes = async function (req, res) {
  var data = { data: req.query };
  try {
    // LINE WAJIB DIBAWA
    perf.start();
    // LINE WAJIB DIBAWA
    var $query = `         
    SELECT * ,a.created_date AS updated_at
    FROM report_notes AS a 
    LEFT JOIN user AS b ON a.created_by = b.username_telegram 
    ORDER BY a.created_date DESC
    LIMIT 1`;
    let check = await models.exec_query($query);
    return response.response(check, res);
  } catch (error) {
    data.error = true;
    data.message = `${error}`;
    return response.response(data, res);
  }
};

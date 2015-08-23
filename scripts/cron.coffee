cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 * * * 0-7', () =>
      robot.send {room: "#general"}, "朝会だお"
        , null, true, "Asia/Tokyo"

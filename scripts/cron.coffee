cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '*/10 * * * * *', () =>
      robot.send {room: "#general"}, "朝会だお", null, true, "Asia/Tokyo"

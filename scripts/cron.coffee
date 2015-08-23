console.log("@@")
cron = require('cron').CronJob
console.log("@@@@")

module.exports = (robot) ->
  console.log("@@@@@@")
  room_name = "general"
  new cron '*/10 * * * * *', () =>
    envelope = room: "channel"
    robot.send {envelope, "channel: 朝会の時間です!"}
    , null, true, "Asia/Tokyo"
  console.log("@@@@@@@@")

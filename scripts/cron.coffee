console.log("@@")
cron = require('cron').CronJob
console.log("@@@@")

module.exports = (robot) ->
  console.log("@@@@@@")
  room_name = "general"
  new cron( '*/10 * * * * *', () =>
    envelope = room: "general"
    robot.send envelope, "朝会の時間です!"
  )
  console.log("@@@@@@@@")

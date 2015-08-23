console.log("@@")
cron = require('cron').CronJob
console.log("@@@@")

module.exports = (robot) ->
  console.log("@@@@@@")
  job = new cron(
    cronTime: "10 * * * * *"
    onTick: ->
      envelope = room: "general"
      robot.send envelope, "@channel: テストです!"
      return
    start: true
  )
  console.log("@@@@@@@@")

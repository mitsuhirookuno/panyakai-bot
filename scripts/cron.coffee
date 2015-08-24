cron = require('cron').CronJob

module.exports = (robot) ->
  job = new cron(
    cronTime: "10 10 * * * *"
    onTick: ->
      envelope = room: "general"
      robot.send envelope, "@channel: テストです!"
      return
    start: false
  )

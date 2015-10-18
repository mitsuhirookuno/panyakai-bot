module.exports = (robot) ->
  robot.hear /(.+)から選んで/, (msg) ->
    items = msg.match[1].split(/[　・、\s]+/)
    item = msg.random items
    msg.send "<@#{item}>: で！"

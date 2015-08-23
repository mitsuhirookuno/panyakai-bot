# Description:
#   Strip gyazo url
#
# Commands:
#   GYAZO_URL       - Strip Gyazo URL to image URL

util = require 'util'

module.exports = (robot) ->
  robot.hear /https\:\/\/\gyazo\.com\/([\da-z]+)\/?/i, (msg) ->
    msg.send "https://i.gyazo.com/#{msg.match[1]}.png"

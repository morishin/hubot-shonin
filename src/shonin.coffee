# Description
#   A way to satisfy your 承認欲求
#
# Commands:
#   hubot 承認 - Robot gives 承認
#   hubot 承認 me - Robot gives you 承認
#   hubot 承認 <user> - Robot gives <user> 承認
#
# Author:
#   Shintaro Morikawa <sntr92@gmail.com>

module.exports = (robot) ->
  robot.respond /承認( (me)| (.+))?/i, (msg) ->
    shonins = [
      '最高!!!!フゥ〜〜〜〜〜!!!!',
      'お疲れ様です!!!!飲みましょう!!!!:beers:',
      '圧倒的感謝!!!!:pray::pray::pray:',
      'クリエイティブゥ〜〜〜↑↑',
      'その調子!!!がんばれがんばれ!!!!',
      'バリュー出てるよ〜〜〜〜!!!',
      'ヨッ社長ッ!!!!',
      'ナイスブラック!!!!',
      'ステキッッッッ!!イケメン!!!'
    ]

    shonin = msg.random shonins

    if !msg.match[1]
      msg.send shonin
    else if msg.match[2]
      msg.reply shonin
    else if msg.match[3]
      msg.send "#{msg.match[3]}: #{shonin}"

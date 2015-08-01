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
  isUsingSlack = robot.adapterName is 'slack'

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
      'ステキッッッッ!!イケメン!!!',
      'きてるぅ〜〜〜〜〜〜〜↑↑'
    ]

    shonin = msg.random shonins

    if !msg.match[1]
      msg.send shonin
    else if msg.match[2]
      if isUsingSlack
        username = msg.message.user.name
        msg.send "<@#{username}>: #{shonin}"
      else
        msg.reply shonin
    else if msg.match[3]
      recipient = msg.match[3]
      if isUsingSlack and recipient[0] is '@'
        # mentions user when the first letter is '@'
        message = "<#{recipient}>: #{shonin}"
      else
        message = "#{recipient}: #{shonin}"
      msg.send message

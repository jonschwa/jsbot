module.exports = (robot) ->
  robot.respond /cat fact/i, (msg) ->
    msg.http("http://catfacts-api.appspot.com/api/facts?number=1")
    .get() (err, res, body) ->
      msg.send JSON.parse(body).facts[0]
Fs   = require 'fs'
Path = require 'path'

console.log "here"
module.exports = (robot) ->
  path = Path.resolve __dirname, 'scripts'
  Fs.exists path, (exists) ->
    if exists
      console.log "test"
      robot.loadFile path, file for file in Fs.readdirSync(path)

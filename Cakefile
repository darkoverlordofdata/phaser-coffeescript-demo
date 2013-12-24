#+--------------------------------------------------------------------+
#| Cakefile
#+--------------------------------------------------------------------+
#
# cake utils
#
fs = require 'fs'
util = require 'util'
{exec} = require 'child_process'


#
# Build Source
#
#
task 'build:src', 'Build the coffee source', ->

#  exec 'tsc --out foo.js ts/app.ts ts/Boot.ts ts/Game.ts ts/Level1.ts ts/MainMenu.ts ts/Player.ts ts/Preloader.ts', ($err, $stdout, $stderr) ->
#
#    util.log $err if $err if $err?
#    util.log $stderr if $stderr if $stderr?
#    util.log $stdout if $stdout if $stdout?
#    util.log 'ok' unless $stdout?

  exec 'coffee -o js -b -c src', ($err, $stdout, $stderr) ->

    util.log $err if $err if $err?
    util.log $stderr if $stderr if $stderr?
    util.log $stdout if $stdout if $stdout?
    util.log 'ok' unless $stdout?

    exec 'browserify --debug js/app.js > game.js', ($err, $stdout, $stderr) ->

      util.log $err if $err if $err?
      util.log $stderr if $stderr if $stderr?
      util.log $stdout if $stdout if $stdout?
      util.log 'ok' unless $stdout?

#
# Build Source
#
#
task 'build:ts', 'Build the typescript source', ->

  exec 'tsc --out game.js ts/app.ts ts/Boot.ts ts/Game.ts ts/Level1.ts ts/MainMenu.ts ts/Player.ts ts/Preloader.ts', ($err, $stdout, $stderr) ->

    util.log $err if $err if $err?
    util.log $stderr if $stderr if $stderr?
    util.log $stdout if $stdout if $stdout?
    util.log 'ok' unless $stdout?


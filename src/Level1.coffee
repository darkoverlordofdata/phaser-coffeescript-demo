Phaser.State::constructor = Phaser.State

module.exports = class Level1 extends Phaser.State

  Player = require("./Player")

  background: Phaser.Sprite
  music: Phaser.Sound
  player: Player

  create: () ->

    @background = @add.sprite(0, 0, 'level1')

    @music = @add.audio('music', 1, false)
    @music.play()

    @player = new Player(@game, 130, 284)

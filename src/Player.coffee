Phaser.Sprite::constructor = Phaser.Sprite

module.exports = class Player extends Phaser.Sprite

  constructor: (game, x, y) ->

    super game, x, y, 'simon', 0

    @anchor.setTo 0.5, 0

    @animations.add 'walk', [0, 1, 2, 3, 4], 10, true

    game.add.existing @


  update: () ->

    @body.velocity.x = 0

    if @game.input.keyboard.isDown(Phaser.Keyboard.LEFT)

      @body.velocity.x = -150
      @animations.play 'walk'

      if @scale.x is 1
        @scale.x = -1

    else if @game.input.keyboard.isDown(Phaser.Keyboard.RIGHT)

      @body.velocity.x = 150
      @animations.play 'walk'

      if @scale.x is -1
        @scale.x = 1
    else 
      @animations.frame = 0

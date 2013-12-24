Phaser.State::constructor = Phaser.State

module.exports = class MainMenu extends Phaser.State

  background: Phaser.Sprite
  logo: Phaser.Sprite

  create:() ->

    @background = @add.sprite(0, 0, 'titlepage')
    @background.alpha = 0

    @logo = @add.sprite(@world.centerX, -300, 'logo')
    @logo.anchor.setTo(0.5, 0.5)

    @add.tween(@background).to alpha: 1, 2000, Phaser.Easing.Bounce.InOut, true
    @add.tween(@logo).to y: 220, 2000, Phaser.Easing.Elastic.Out, true, 2000

    @input.onDown.addOnce @fadeOut, @


  fadeOut:() ->

    @add.tween(@background).to alpha: 0, 2000, Phaser.Easing.Linear.None, true
    tween = @add.tween(@logo).to y: 800 , 2000, Phaser.Easing.Linear.None, true

    tween.onComplete.add @startGame, @


  startGame:() ->

    @game.state.start 'Level1', true, false

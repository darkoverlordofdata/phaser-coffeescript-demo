Phaser.State::constructor = Phaser.State

module.exports = class Preloader extends Phaser.State

  preloadBar: Phaser.Sprite

  preload: () ->

    #  Set-up our preloader sprite
    @preloadBar = @add.sprite(200, 250, 'preloadBar')
    @load.setPreloadSprite @preloadBar

    #  Load our actual games assets
    @load.image 'titlepage', 'assets/titlepage.jpg'
    @load.image 'logo', 'assets/logo.png'
    @load.audio 'music', 'assets/title.mp3', true
    @load.spritesheet 'simon', 'assets/simon.png', 58, 96, 5
    @load.image 'level1', 'assets/level1.png'


  create: () ->

    tween = @add.tween(@preloadBar).to({ alpha: 0 }, 1000, Phaser.Easing.Linear.None, true)
    tween.onComplete.add(@startMainMenu, this)


  startMainMenu: () -> 

    @game.state.start('MainMenu', true, false)

Phaser.State::constructor = Phaser.State

module.exports = class Boot extends Phaser.State

  preload:() ->

    @load.image 'preloadBar', 'assets/loader.png'


  create: () ->

    #  Unless you specifically need to support multitouch I would recommend setting this to 1
    @input.maxPointers = 1

    #  Phaser will automatically pause if the browser tab the game is in loses focus. You can disable that here:
    @stage.disableVisibilityChange = true

    if @game.device.desktop
      #  If you have any desktop specific settings, they can go in here
      @stage.scale.pageAlignHorizontally = true
    
    else 
      #  Same goes for mobile settings.

    @game.state.start 'Preloader', true, false




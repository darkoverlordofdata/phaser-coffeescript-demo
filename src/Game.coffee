Phaser.Game::constructor = Phaser.Game

module.exports = class Game extends Phaser.Game

  constructor: () ->

    super 800, 600, Phaser.AUTO, 'content', null

    @state.add 'Boot',      require("./Boot"), false
    @state.add 'Preloader', require("./Preloader"), false
    @state.add 'MainMenu',  require("./MainMenu"), false
    @state.add 'Level1',    require("./Level1"), false

    @state.start 'Boot'


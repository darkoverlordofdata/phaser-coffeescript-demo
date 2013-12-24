// Generated by CoffeeScript 1.6.3
var Boot, _ref,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Phaser.State.prototype.constructor = Phaser.State;

module.exports = Boot = (function(_super) {
  __extends(Boot, _super);

  function Boot() {
    _ref = Boot.__super__.constructor.apply(this, arguments);
    return _ref;
  }

  Boot.prototype.preload = function() {
    return this.load.image('preloadBar', 'assets/loader.png');
  };

  Boot.prototype.create = function() {
    this.input.maxPointers = 1;
    this.stage.disableVisibilityChange = true;
    if (this.game.device.desktop) {
      this.stage.scale.pageAlignHorizontally = true;
    } else {

    }
    return this.game.state.start('Preloader', true, false);
  };

  return Boot;

})(Phaser.State);

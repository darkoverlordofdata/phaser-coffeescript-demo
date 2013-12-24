// Generated by CoffeeScript 1.6.3
var Level1, _ref,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Phaser.State.prototype.constructor = Phaser.State;

module.exports = Level1 = (function(_super) {
  var Player;

  __extends(Level1, _super);

  function Level1() {
    _ref = Level1.__super__.constructor.apply(this, arguments);
    return _ref;
  }

  Player = require("./Player");

  Level1.prototype.background = Phaser.Sprite;

  Level1.prototype.music = Phaser.Sound;

  Level1.prototype.player = Player;

  Level1.prototype.create = function() {
    this.background = this.add.sprite(0, 0, 'level1');
    this.music = this.add.audio('music', 1, false);
    this.music.play();
    return this.player = new Player(this.game, 130, 284);
  };

  return Level1;

})(Phaser.State);
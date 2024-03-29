// Generated by CoffeeScript 1.6.3
var Player,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Phaser.Sprite.prototype.constructor = Phaser.Sprite;

module.exports = Player = (function(_super) {
  __extends(Player, _super);

  function Player(game, x, y) {
    Player.__super__.constructor.call(this, game, x, y, 'simon', 0);
    this.anchor.setTo(0.5, 0);
    this.animations.add('walk', [0, 1, 2, 3, 4], 10, true);
    game.add.existing(this);
  }

  Player.prototype.update = function() {
    this.body.velocity.x = 0;
    if (this.game.input.keyboard.isDown(Phaser.Keyboard.LEFT)) {
      this.body.velocity.x = -150;
      this.animations.play('walk');
      if (this.scale.x === 1) {
        return this.scale.x = -1;
      }
    } else if (this.game.input.keyboard.isDown(Phaser.Keyboard.RIGHT)) {
      this.body.velocity.x = 150;
      this.animations.play('walk');
      if (this.scale.x === -1) {
        return this.scale.x = 1;
      }
    } else {
      return this.animations.frame = 0;
    }
  };

  return Player;

})(Phaser.Sprite);

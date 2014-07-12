// Generated by CoffeeScript 1.7.1
(function() {
  window.SimpleSlider = (function() {
    function SimpleSlider(options) {
      this.pushcontent = options.$pushcontent;
      this.leftbar = options.$leftbar;
      this.rightbar = options.$rightbar;
      this.state = 'center';
    }

    SimpleSlider.prototype.openLeft = function() {
      this.nobar(this.rightbar);
      if (this.state === 'left') {
        this.closeRight();
      }
      this.pushcontent.addClass('movedRight');
      this.leftbar.removeClass('none');
      return this.state = 'right';
    };

    SimpleSlider.prototype.openRight = function() {
      this.nobar(this.leftbar);
      if (this.state === 'right') {
        this.closeLeft();
      }
      this.pushcontent.addClass('movedLeft');
      this.rightbar.removeClass('none');
      return this.state = 'left';
    };

    SimpleSlider.prototype.close = function() {
      if (this.state === 'left') {
        this.nobar(this.rightbar);
      }
      if (this.state === 'right') {
        this.nobar(this.leftbar);
      }
      this.pushcontent.removeClass('movedRight');
      this.pushcontent.removeClass('movedLeft');
      return this.state = 'center';
    };

    SimpleSlider.prototype.closeLeft = function() {
      return this.pushcontent.removeClass('movedRight');
    };

    SimpleSlider.prototype.closeRight = function() {
      return this.pushcontent.removeClass('movedLeft');
    };

    SimpleSlider.prototype.nobar = function(position) {
      this.pushcontent.off('transitionend');
      return this.pushcontent.on('transitionend', (function(_this) {
        return function() {
          return position.addClass('none');
        };
      })(this));
    };

    SimpleSlider.prototype.pusherState = function() {
      return this.state;
    };

    return SimpleSlider;

  })();

}).call(this);

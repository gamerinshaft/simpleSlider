// Generated by CoffeeScript 1.7.1
(function() {
  window.SimpleSlider = (function() {
    function SimpleSlider(options) {
      this.pushcontent = options.$pushcontent;
      this.pushheader = options.$pushheader;
      this.leftbar = options.$leftbar;
      this.rightbar = options.$rightbar;
      this.state = 'center';
      this.pushcontent.on('transitionend', (function(_this) {
        return function() {
          if (_this.state === 'right' || _this.state === 'center') {
            _this.rightbar.addClass('none');
          }
          if (_this.state === 'left' || _this.state === 'center') {
            return _this.leftbar.addClass('none');
          }
        };
      })(this));
    }

    SimpleSlider.prototype.moveCenter = function() {
      if (this.state === 'left') {
        this.pushcontent.removeClass('movedLeft-content');
        this.pushheader.removeClass('movedLeft-header');
      } else if (this.state === 'right') {
        this.pushcontent.removeClass('movedRight-content');
        this.pushheader.removeClass('movedRight-header');
      }
      return this.state = 'center';
    };

    SimpleSlider.prototype.moveRight = function() {
      this.leftbar.removeClass('none');
      this.pushcontent.addClass('movedRight-content');
      this.pushheader.addClass('movedRight-header');
      if (this.state === 'left') {
        this.pushcontent.removeClass('movedLeft-content');
        this.pushheader.removeClass('movedLeft-header');
      }
      return this.state = 'right';
    };

    SimpleSlider.prototype.moveLeft = function() {
      this.rightbar.removeClass('none');
      this.pushcontent.addClass('movedLeft-content');
      this.pushheader.addClass('movedLeft-header');
      if (this.state === 'right') {
        this.pushcontent.removeClass('movedRight-content');
        this.pushheader.removeClass('movedRight-header');
      }
      return this.state = 'left';
    };

    return SimpleSlider;

  })();

}).call(this);

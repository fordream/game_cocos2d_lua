
var HelloWorldLayer = cc.Layer.extend({
    sprite:null,
    ctor:function () {
        this._super();

        var size = cc.winSize;



        this.bg = new cc.Sprite(res.img_bkg_bg_01_jpg);
        this.bg.attr({
            x: size.width / 2,
            y: size.height / 2
        });
        this.addChild(this.bg, 0);

        return true;
    }
});

var HelloWorldScene = cc.Scene.extend({
    onEnter:function () {
        this._super();
        var layer = new HelloWorldLayer();
        this.addChild(layer);
    }
});


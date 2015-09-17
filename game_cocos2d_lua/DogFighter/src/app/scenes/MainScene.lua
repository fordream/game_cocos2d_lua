
local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
    cc.ui.UILabel.new({
            UILabelType = 2, text = "Hello, World", size = 64})
        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)
        
    self:loadLayers()
end

function MainScene:loadLayers()
	local MainLayer = require("src.app.scenes.MainLayer")
	self.mainLayer = MainLayer.new()
	self.mainLayer:addTo(self, 0)
end

function MainScene:onEnter()
end

function MainScene:onExit()
end

return MainScene

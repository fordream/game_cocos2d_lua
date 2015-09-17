local M = class("MainLayer", function()
    return cc.Layer:create()
end)

function M:ctor(parameters)
	self:onRender()
end

function M:onRender()
	self.bg = cc.Sprite:create("img/bkg/bg_02.jpg")
	self.bg:setAnchorPoint(cc.p(1, 1))
	self.bg:setPosition(V.w_2, V.h_2)
	self:addChild(self.bg)
end

















return M 

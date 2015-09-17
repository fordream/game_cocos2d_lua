local M = class("MainLayer", function()
    return cc.Layer:create()
end)

function M:ctor(parameters)
    self:setContentSize(display.width, display.height)
	self:onRender()
end

function M:onRender()
	self:loadNodes()
	self:loadRenderOtherwise()
end 

-- 加载[节点]
function M:loadNodes()
    self.bg = cc.Sprite:create("img/bkg/bg_02.jpg")
    self.bg:setPosition(V.w_2, V.h_2)
    self:addChild(self.bg)
end

-- 加载[渲染以外的其他操作]
function M:loadRenderOtherwise()
    
    -- 绑定触控
    self:bindTouch()
end







-----------------------------
-- 触控
-----------------------------

-- 绑定触控 
function M:bindTouch()

    self:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        print("event = ", event)
        if event.name == "began" then
            return self:onTouchBegan(event.x, event.y, event)
        elseif event.name == "moved" then
            self:onTouchMoved(event.x, event.y, event)
        elseif event.name == "ended" then
            self:onTouchEnded(event.x, event.y, event)
        end
    end)
    self:setTouchEnabled(true) -- 注册后还必须启用触摸
end 

function M:onTouchBegan(x, y, event)
print("ssssssss")
	return true
end

function M:onTouchMoved(x, y, event)
	
end

function M:onTouchEnded(x, y, event)
    
end

















return M 

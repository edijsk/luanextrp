local screenX, screenY = guiGetScreenSize()

local imgW, imgH = 150, 68

local lx, ly = math.random(0, screenX/2), math.random(0, screenY)
local lsp = 3.5
local mlx, mly = lsp, lsp
local lclr = tocolor(255, 255, 255, 255)

local rx, ry = math.random(screenX/2, screenX), math.random(0, screenY)
local rsp = 3.5
local mrx, mry = rsp, rsp
local rclr = tocolor(255, 255, 255, 255)

local function getRandColor()
	return tocolor(math.random(0, 255), math.random(0, 255), math.random(0, 255), 255)
end

addEventHandler("onClientRender", root, function ()
	
	dxDrawRectangle(0, 0, screenX/2, screenY, tocolor(68, 65, 1, 255))
	
	lx = lx + mlx
	if lx > screenX/2 - imgW then
		lx = screenX/2 - imgW
		mlx = -lsp
		lclr = getRandColor()
	elseif lx < 0 then
		lx = 0
		mlx = lsp
		lclr = getRandColor()
	end
	
	ly = ly + mly
	if ly > screenY - imgH then
		ly = screenY - imgH
		mly = -lsp
		lclr = getRandColor()
	elseif ly < 0 then
		ly = 0
		mly = lsp
		lclr = getRandColor()
	end
	
	dxDrawImage(lx, ly, imgW, imgH, 'nextrp_logonew.png', 0, 0, 0, lclr)
	
	dxDrawRectangle(screenX/2, 0, screenX/2, screenY, tocolor(4, 29, 6, 255))
	showCursor(false);
	showChat(false);
	
	rx = rx + mrx
	if rx > screenX - imgW then
		rx = screenX - imgW
		mrx = -rsp
		rclr = getRandColor()
	elseif rx < screenX/2 then
		rx = screenX/2
		mrx = rsp
		rclr = getRandColor()
	end
	
	ry = ry + mry
	if ry > screenY - imgH then
		ry = screenY - imgH
		mry = -rsp
		rclr = getRandColor()
	elseif ry < 0 then
		ry = 0
		mry = rsp
		rclr = getRandColor()
	end
	
	dxDrawImage(rx, ry, imgW, imgH, 'nextrp_logonew.png', 0, 0, 0, rclr)
end)
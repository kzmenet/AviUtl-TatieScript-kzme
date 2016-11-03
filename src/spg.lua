module( "spg", package.seeall )

--デバッグ用
local debugmode=true
local function devprnt(naiyou)
if(debugmode==true) then
debug_print("[spg]"..naiyou)
end
end
--デバッグおわり

function dr(uri,ht,mode)
    obj.load("image",uri..".png")
    devprnt("objectload uri:"..uri)
    if(ht==1) then
        obj.draw(0,0,0,1,1,0,180,0)
        devprnt("nomal draw (mirror)")
    else
        obj.draw(0,0,0,1,1,0,0,0)
        devprnt("nomal draw")
    end
end

function cache(layer)
    obj.copybuffer("cache:spgcache"..layer, "tmp")
    devprnt("cachesaved layer"..layer)
end

function cdr(layer)
    obj.copybuffer("tmp", "cache:spgcache"..layer)
    devprnt("cachedraw layer:"..layer)
end

function drfirst(width,height)
    obj.setoption("drawtarget","tempbuffer",width,height)
    obj.draw()
    devprnt("Initialization size:"..width.."x"..height)
end


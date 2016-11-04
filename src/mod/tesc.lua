module( "tesc", package.seeall )
--[[
TachiESCript
立ち絵スクリプト制作を支援するmoduleです。

tesc.lua
Copyright (C) 2016 MurataKazumi
このプログラムはフリープログラムです。
GNU Lesser General Public License Version 3ライセンスのもとに変更、再配布が可能です。
詳しくは付属のLICENSEファイルを御覧ください。
]]

--デバッグ用
local debugmode=true
local function devprnt(naiyou)
if(debugmode==true) then
debug_print(naiyou)
end
end
--デバッグおわり


local ht="hoge"
local sp="hoge"
local rv="hoge"
local ly="hoge"


function hantenval(value)
ht=value
end

function sozaipathval(value)
sp=value
end

function reverseval(value)
rv=value
end

function layerval(value)
ly=value
end



function drfirst(width,height)
obj.setoption("drawtarget","tempbuffer",width,height)
obj.draw()
end

local function objdraw(file)
    spg.dr(sp..file,ht)
end

function ckcache(setting,layer)
    local ggdata=gvgen_kzme_tatie_cktmp.gv(layer)
    if(setting==ggdata) then
        spg.cdr(layer)
        return false
    else
        return true
    end
end

function cache(layer,value)
    spg.cache(layer)
    gvgen_kzme_tatie_cktmp.sv(layer,value)
end

function revpath(file)
if(ht==1) then
return file..rv
else
return file
end
end


--入力支援
function nomdraw(file)
objdraw(file)
end

function onoff(value,file)
if(value==1) then
objdraw(file)
end
end

function onoff2(value,file1,file2)
if(value==1) then
objdraw(file1)
elseif(value==2) then
objdraw(file2)
end
end

function dual(value,file1,file2)
if(value==1) then
objdraw(file1)
elseif(value==2) then
objdraw(file2)
elseif(value==3) then
objdraw(file1)
objdraw(file2)
end
end

function onlyfilter(value,target,file1,file2)
if(value==target) then
objdraw(file1)
else
objdraw(file2)
end
end

function zerooff(value,file)
if(value~=0) then
objdraw(file)
end
end







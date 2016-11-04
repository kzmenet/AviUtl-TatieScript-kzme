module( "tesc", package.seeall )
--[[
TachiESCript
�����G�X�N���v�g������x������module�ł��B

tesc.lua
Copyright (C) 2016 MurataKazumi
���̃v���O�����̓t���[�v���O�����ł��B
GNU Lesser General Public License Version 3���C�Z���X�̂��ƂɕύX�A�Ĕz�z���\�ł��B
�ڂ����͕t����LICENSE�t�@�C�����䗗���������B
]]

--�f�o�b�O�p
local debugmode=true
local function devprnt(naiyou)
if(debugmode==true) then
debug_print(naiyou)
end
end
--�f�o�b�O�����


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


--���͎x��
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







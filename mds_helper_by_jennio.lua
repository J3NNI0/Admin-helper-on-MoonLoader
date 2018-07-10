sampev = require 'lib.samp.events'
local game_keys = require 'game.keys'
require "lib.moonloader"
--local imgui = require 'imgui'
--local encoding = require 'encoding'
--encoding.default = 'CP1251'
--u8 = encoding.UTF8

script_name("AdminHelper")
script_author("Jennio")
script_dependencies("SAMP")

local auto = false

function main()
  if not isSampLoaded() and isSampAvailable() then return end
  --sampAddChatMessage("{964242}MDS-helper loaded by {428396}Jennio")
  sampRegisterChatCommand("osk", osk) sampRegisterChatCommand("cheat", cheat) sampRegisterChatCommand("cheater", cheater) sampRegisterChatCommand("rulesz", rulesz)
  sampRegisterChatCommand("rec", recon) sampRegisterChatCommand("mhelper", helper) sampRegisterChatCommand("getinfo", information) sampRegisterChatCommand("away", afk)
  sampRegisterChatCommand("flood", flood) sampRegisterChatCommand("rod", rod) sampRegisterChatCommand("aadmins", sick) sampRegisterChatCommand("oa", aosk) sampRegisterChatCommand("pomexa", pomexa)

while true do
	wait(-1)
end
end

function sampev.onServerMessage(clr, msg) -- �� ������� �����
  if msg:find("�����������������3��2��") then
    sampSendChat("/a [A-INFO] ���������� ������� � ��������� ������")
  end
end

function aosk(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/mute "..id.." 1500 ����������� �������������")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}����������,������� ���������� {1dde0b}ID {964242}������")
        end
    end
end

function osk(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/mute "..id.." 300 ����������� �������/�����������")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}����������,������� ���������� {1dde0b}ID {964242}������")
        end
    end
end

function flood(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/mute "..id.." 444 ����")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}����������,������� ���������� {1dde0b}ID {964242}������")
        end
    end
end

function pomexa(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/jail "..id.." 500 ������ ������ �������������")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}����������,������� ���������� {1dde0b}ID {964242}������")
        end
    end
end

function rod(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/mute "..id.." 1500 �����������/���������� ������")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}����������,������� ���������� {1dde0b}ID {964242}������")
        end
    end
end


function cheat(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/jail "..id.." 9999999 ������������� �����")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}����������,������� ���������� {1dde0b}ID {964242}������")
        end
    end
end

function afk(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
            sampSendChat("/a ��������,��������������. ������ �� "..id.." �����.")
    end
end

function cheater(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/ban "..id.." 30 ������������� �����")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}����������,������� ���������� {1dde0b}ID {964242}������")
        end
    end
end

function information(param)
  if param:match('(%d+)') then
      local id = param:match('(%d+)')
      if sampIsPlayerConnected(id) then
        sampAddChatMessage("{d70bde}[MDShelper] {964242}���� ������: %d",sampGetPlayerPing(id))
      else
          sampAddChatMessage("{d70bde}[MDShelper] {964242}����������,������� ���������� {1dde0b}ID {964242}������")
      end
  end
end

function recon(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendClickPlayer(id, 0)
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}����������,������� ���������� {1dde0b}ID {964242}������")
        end
    end
end

-- sampSendClickPlayer(int id, int source)

function helper()
  sampShowDialog(1489, "MDS-helper", "{ff0000}/cheater {ffffff}- ������ ��� �� ����\n{ff0000}/cheat {ffffff}- ������ jail �� ����\n{ff0000}/rod {ffffff}- mute �� ���/�� ���\n{ff0000}/flood {ffffff}- ������ ��� ���� �� ����\n{ff0000}/osk {ffffff}- ������ mute �� ���.�������/�����������\n{ff0000}/rec {ffffff}- ������� ���� ������\n{ff0000}/getinfo {ffffff}- ����-���� �� ������\n{ff0000}/away [������] {ffffff}- ������������ ������� � ���,��� �� ���\n{ff0000}/aadmins{ffffff} - ���� �������\n{ff0000}/oa{ffffff} - ��� �� ���.�������������\n{ff0000}/pomexa{ffffff} - ���� jail �� ������ ���������\n", "�������", "", 0)
end

function rulesz()
  sampShowDialog(1488, "MDS-�������", "{ff0000}1.{ffffff}���������� - 300-500�\n{ff0000}2.{ffffff}������ � ������ - 300-500�\n{ff0000}3.{ffffff}������������ ��� - ���-���(�� 3�.)\n{ff0000}4.{ffffff}������ �� - ������ 300-500�\n{ff0000}5.{ffffff}������ ��������� - ������ 500�\n{ff0000}6.{ffffff}�������� � ������� ������� ��������� - ������ 300�\n", "�������", "", 0)
end

function sick()
  sampShowDialog(1412, "MDS-admins","- ����� ������ ���������\n- ��� ��� Jennio ����� ������� �����������,������� ��� ��� � �� /aadmins\n- ��� ��� y Jennio ImGui � AHK ��������� �����, �������� ������ � ����.������", "�������", "", 0)
end



-- ����� ��������� ����� ������ �������� �����





--function imgui.OnDrawFrame()
  --imgui.Begin('MDS-INFO')
  --imgui.Text('Information')
  --imgui.End()
--end



--function sick()
  --if imgui.Process == false then
  --sampAddChatMessage("{d70bde}[MDShelper] {964242}������������� ������� ��������")
  --imgui.Process = true
--else
  --sampAddChatMessage("{d70bde}[MDShelper] {964242}������������� ������� ������")
  --imgui.Process = false
--end
--end

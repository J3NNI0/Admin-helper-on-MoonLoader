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

function sampev.onServerMessage(clr, msg) -- не трогать нахуй
  if msg:find("ывалывлаылылащойу3щй2аа") then
    sampSendChat("/a [A-INFO] Обнаружена реклама с последней строки")
  end
end

function aosk(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/mute "..id.." 1500 Оскорбление администрации")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}Пожалуйста,введите правильный {1dde0b}ID {964242}игрока")
        end
    end
end

function osk(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/mute "..id.." 300 Нецензурная лексика/Оскорбление")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}Пожалуйста,введите правильный {1dde0b}ID {964242}игрока")
        end
    end
end

function flood(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/mute "..id.." 444 Флуд")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}Пожалуйста,введите правильный {1dde0b}ID {964242}игрока")
        end
    end
end

function pomexa(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/jail "..id.." 500 Помеха работе дальнобойщику")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}Пожалуйста,введите правильный {1dde0b}ID {964242}игрока")
        end
    end
end

function rod(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/mute "..id.." 1500 Оскорбление/Упоминание родных")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}Пожалуйста,введите правильный {1dde0b}ID {964242}игрока")
        end
    end
end


function cheat(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/jail "..id.." 9999999 Использование читов")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}Пожалуйста,введите правильный {1dde0b}ID {964242}игрока")
        end
    end
end

function afk(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
            sampSendChat("/a Внимание,администраторы. Отхожу на "..id.." минут.")
    end
end

function cheater(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendChat("/ban "..id.." 30 Использование читов")
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}Пожалуйста,введите правильный {1dde0b}ID {964242}игрока")
        end
    end
end

function information(param)
  if param:match('(%d+)') then
      local id = param:match('(%d+)')
      if sampIsPlayerConnected(id) then
        sampAddChatMessage("{d70bde}[MDShelper] {964242}ПИНГ ИГРОКА: %d",sampGetPlayerPing(id))
      else
          sampAddChatMessage("{d70bde}[MDShelper] {964242}Пожалуйста,введите правильный {1dde0b}ID {964242}игрока")
      end
  end
end

function recon(param)
    if param:match('(%d+)') then
        local id = param:match('(%d+)')
        if sampIsPlayerConnected(id) then
            sampSendClickPlayer(id, 0)
        else
            sampAddChatMessage("{d70bde}[MDShelper] {964242}Пожалуйста,введите правильный {1dde0b}ID {964242}игрока")
        end
    end
end

-- sampSendClickPlayer(int id, int source)

function helper()
  sampShowDialog(1489, "MDS-helper", "{ff0000}/cheater {ffffff}- выдать бан за читы\n{ff0000}/cheat {ffffff}- выдать jail за читы\n{ff0000}/rod {ffffff}- mute за оск/уп род\n{ff0000}/flood {ffffff}- выдать бан чата за флуд\n{ff0000}/osk {ffffff}- выдать mute за нец.лексику/оскорбление\n{ff0000}/rec {ffffff}- открыть меню игрока\n{ff0000}/getinfo {ffffff}- мини-инфа об игроке\n{ff0000}/away [минуты] {ffffff}- предупредить админов о том,что вы АФК\n{ff0000}/aadmins{ffffff} - лист админов\n{ff0000}/oa{ffffff} - мут за оск.администрации\n{ff0000}/pomexa{ffffff} - дать jail за помеху дальнобою\n", "понятно", "", 0)
end

function rulesz()
  sampShowDialog(1488, "MDS-правила", "{ff0000}1.{ffffff}Попрошайка - 300-500с\n{ff0000}2.{ffffff}Оффтоп в репорт - 300-500с\n{ff0000}3.{ffffff}Неправильный ник - кик-бан(до 3д.)\n{ff0000}4.{ffffff}Помеха МП - тюрьма 300-500с\n{ff0000}5.{ffffff}Помеха дальнобую - тюрьма 500с\n{ff0000}6.{ffffff}Расстрел с заднего сиденья мотоцикла - тюрьма 300с\n", "понятно", "", 0)
end

function sick()
  sampShowDialog(1412, "MDS-admins","- Очень важное сообщение\n- Наш сер Jennio очень ленивый разработчик,поэтому хуй там а не /aadmins\n- Так как y Jennio ImGui и AHK головного мозга, ожидайте обнову в след.версии", "понятно", "", 0)
end



-- имгуй головного мозга должен начаться здесь





--function imgui.OnDrawFrame()
  --imgui.Begin('MDS-INFO')
  --imgui.Text('Information')
  --imgui.End()
--end



--function sick()
  --if imgui.Process == false then
  --sampAddChatMessage("{d70bde}[MDShelper] {964242}Администрация проекта показана")
  --imgui.Process = true
--else
  --sampAddChatMessage("{d70bde}[MDShelper] {964242}Администрация проекта скрыта")
  --imgui.Process = false
--end
--end

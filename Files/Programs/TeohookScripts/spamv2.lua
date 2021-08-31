spam = "" -- what text your player will be spamming
enable = true
interval = 3950 -- interval

function say(text)
sendPacket("action|input\n|text|"..text, 2)
end

while true do
if enable == true then
say(spam)
sleep(interval)
end
end

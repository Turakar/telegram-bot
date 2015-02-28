
function run(msg, matches)
  local date = os.date("*t")
  if date.hour == date.min then
    return "klopf klopf", true
  else
    return "Zu spät!", true
  end
end

return {
    description = "replies to messages containing 'klopf'", 
    usage = "send a message with 'klopf'",
    patterns = {"(.*)klopf(.*)", "(.*)Klopf(.*)"}, 
    run = run 
}


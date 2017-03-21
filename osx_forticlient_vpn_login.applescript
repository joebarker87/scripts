-- requires "Default tab = Remote Access" in forticlient preferences

set targetApp to "FortiClient"
set targetAgent to "FortiClientAgent"

-- Determine if FortiClient is currently running
tell application "System Events"
	set processExists to exists process targetApp
end tell

if processExists is true then
	tell application targetApp to quit
	tell application targetAgent to quit
else
	tell application targetApp to activate
	
	tell application "System Events"
		repeat until (window 1 of process targetApp exists)
			delay 0.1
		end repeat
		
		keystroke tab
		delay 0.2
		
		-- change these key strokes to password
		keystroke "X"
		delay 0.01
		keystroke "X"
		delay 0.01
		keystroke "X"
		delay 0.01
		keystroke "X"
		delay 0.01
		keystroke "X"
		delay 0.01
		keystroke "X"
		delay 0.01
		keystroke "X"
		delay 0.01
		keystroke "X"
		delay 0.01
		keystroke return
	end tell
end if

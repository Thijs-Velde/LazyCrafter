local panel
local backupSettings
panel = CreateFrame("Frame", "LC_Panel", UIParent)
panel.name = "One Click Cooldown"

panel.okay = function(self) 
	backupSettings = LazyCrafter_Vars
end

panel.cancel = function(self)  
	LazyCrafter_Vars = backupSettings
end

panel.defaults = function(self)  
	LazyCrafter_Vars = backupSettings
end

panel.refresh = function(self)
	myCheckButton = CreateFrame("CheckButton", "myCheckButton_GlobalName", LC_Panel, "ChatConfigCheckButtonTemplate");
	myCheckButton:SetPoint("TOPLEFT", 200, -65);
end

InterfaceOptions_AddCategory(panel)
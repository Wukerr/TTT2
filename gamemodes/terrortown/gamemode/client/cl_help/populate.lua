local mainMenuOrder = {
	"ttt2_changelog",
	"ttt2_guide",
	"ttt2_bindings",
	"ttt2_language",
	"ttt2_appearance",
	"ttt2_gameplay",
	"ttt2_addons",
	"ttt2_legacy"
}

---
-- Populate the main menu
-- @param table helpData The main menu data
-- @internal
-- @realm client
function InternalModifyMainMenu(helpData)
	for _, id in ipairs(mainMenuOrder) do
		HELPSCRN.populate[id](helpData, id)
	end
end

---
-- Populate the sub menues
-- @param table helpData The main menu data
-- @internal
-- @realm client
function InternalModifySubMenu(helpData, menuId)
	if not HELPSCRN.subPopulate[menuId] then return end

	HELPSCRN.subPopulate[menuId](helpData, menuId)
end

local ActivatorMenu = Menu("Activator", "Activator")

ActivatorMenu:SubMenu("Items", "Items")


ActivatorMenu.Items:Boolean("Cutlass", "Use Cutlass", true)
ActivatorMenu.Items:Boolean("Tiamat", "Use Tiamat", true)
ActivatorMenu.Items:Boolean("BOTRK", "Use BOTRK", true)
ActivatorMenu.Items:Boolean("RHydra", "Use RHydra", true)
ActivatorMenu.Items:Boolean("YGB", "Use GhostBlade", true)
ActivatorMenu.Items:Boolean("YGBurf", "Use GhostBlade", true)
ActivatorMenu.Items:Boolean("Gunblade", "Use Gunblade", true)
ActivatorMenu.Items:Boolean("Randuins", "Use Randuins", true)


OnTick(function (myHero)
	local target = GetCurrentTarget()
  local YGB = GetItemSlot(myHero, 3142)
		local YGBurf = GetItemSlot(myHero, 3142)
	local RHydra = GetItemSlot(myHero, 3074)
	local Tiamat = GetItemSlot(myHero, 3077)
  local Gunblade = GetItemSlot(myHero, 3146)
  local BOTRK = GetItemSlot(myHero, 3153)
  local Cutlass = GetItemSlot(myHero, 3144)
  local Randuins = GetItemSlot(myHero, 3143)


 if KeyIsDown(32) then
            if ActivatorMenu.Items.YGB:Value() and YGB > 0 and Ready(YGB) and ValidTarget(target, 700) then
			CastSpell(YGB)
            end
			
	    	if ActivatorMenu.Items.YGBurf:Value() and YGB > 0 and Ready(YGB) then
			CastSpell(YGB)
            end
	

            if ActivatorMenu.Items.Randuins:Value() and Randuins > 0 and Ready(Randuins) and ValidTarget(target, 500) then
			CastSpell(Randuins)
            end

            if ActivatorMenu.Items.BOTRK:Value() and BOTRK > 0 and Ready(BOTRK) and ValidTarget(target, 550) then
			 CastTargetSpell(target, BOTRK)
            end

            if ActivatorMenu.Items.Cutlass:Value() and Cutlass > 0 and Ready(Cutlass) and ValidTarget(target, 700) then
			 CastTargetSpell(target, Cutlass)
            end

           


            if ActivatorMenu.Items.Tiamat:Value() and Tiamat > 0 and Ready(Tiamat) and ValidTarget(target, 350) then
			CastSpell(Tiamat)
            end

            if ActivatorMenu.Items.Gunblade:Value() and Gunblade > 0 and Ready(Gunblade) and ValidTarget(target, 700) then
			CastTargetSpell(target, Gunblade)
            end

            if ActivatorMenu.Items.RHydra:Value() and RHydra > 0 and Ready(RHydra) and ValidTarget(target, 400) then
			CastSpell(RHydra)
            end

	   
	end    
          
  end)

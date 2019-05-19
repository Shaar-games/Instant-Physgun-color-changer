
local LocalPlayer 		= LocalPlayer
local tonumber 			= tonumber 			or function( v ) return v end
local Clamp 			= math.Clamp 		or function( v ) return v end
local deplay 			= deplay or CurTime()

cvars.AddChangeCallback( "cl_weaponcolor", function( convar_name, value_old, value_new )
	
	if deplay + 0.1 < CurTime() then
		deplay = CurTime()
		net.Start("networkedweaponcolor", false)
		net.SendToServer()
	end

	local col = Vector( LocalPlayer():GetInfo( "cl_weaponcolor" ) )
		if col:Length() == 0 then
		col = Vector( 0.001, 0.001, 0.001 )
	end
	LocalPlayer():SetWeaponColor( col )

end , "networkedweaponcolor" )

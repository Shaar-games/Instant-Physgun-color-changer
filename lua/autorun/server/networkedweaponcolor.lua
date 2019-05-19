

util.AddNetworkString("networkedweaponcolor")


net.Receive("networkedweaponcolor",function( l , ply )

	local col = Vector( ply:GetInfo( "cl_weaponcolor" ) )
	if col:Length() == 0 then
		col = Vector( 0.001, 0.001, 0.001 )
	end
	ply:SetWeaponColor( col )

end)
[] spawn {

while {true} do {        

			{
                             if (side _x == resistance) then

                                       {
                                              _x unassignItem "NVGoggles_INDEP";
                                              _x removeweapon "NVGoggles_INDEP";
                                              _x unassignItem "NVGoggles_tna_F";
                                              _x removeweapon "NVGoggles_tna_F";
                                              _x unassignItem "O_NVGoggles_ghex_F";
                                              _x removeweapon "O_NVGoggles_ghex_F";
                                              _x unassignItem "O_NVGoggles_hex_F";
                                              _x removeweapon "O_NVGoggles_hex_F";
                                              _x unassignItem "O_NVGoggles_urb_F";
                                              _x removeweapon "O_NVGoggles_urb_F";
                                              _x unassignItem "NVGogglesB_blk_F";
                                              _x removeweapon "NVGogglesB_blk_F";
                                              _x unassignItem "NVGogglesB_grn_F";
                                              _x removeweapon "NVGogglesB_grn_F";
                                              _x unassignItem "NVGogglesB_gry_F";
                                              _x removeweapon "NVGogglesB_gry_F";
                                              _x removePrimaryWeaponItem "acc_pointer_IR";
                                              _x addPrimaryWeaponItem "acc_flashlight";
                                              _x enableGunLights "forceon";
                                        };

                        } forEach allUnits;

                        {
                              if (side _x == east) then

                                        {
                                              _x enableIRLasers true;
                                         };

                         } forEach allUnits;

                        {
                              if (side _x == west) then

                                        {
                                              _x enableIRLasers true;
                                         };

                         } forEach allUnits;

                         sleep 1;

	        };
};

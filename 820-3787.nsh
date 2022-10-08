echo -off

cls

echo "MacBookPro11,2,dGPU"
echo "MacBookPro11,3,dGPU"
echo "Mac-2BD1B31983FE1663"
echo "Flashing SMC with 820-3787 v2.19f12 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-2BD1B31983FE1663\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-2BD1B31983FE1663\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-2BD1B31983FE1663\Mac-2BD1B31983FE1663.smc

complete.nsh
echo -off

cls

echo "MacBookPro11,2,iGPU"
echo "MacBookPro11,3,iGPU"
echo "Mac-3CBD00234E554E41"
echo "Flashing SMC with 820-3662 v2.18f15 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-3CBD00234E554E41\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-3CBD00234E554E41\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-3CBD00234E554E41\Mac-3CBD00234E554E41.smc

complete.nsh
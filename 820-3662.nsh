echo -off

cls

echo "MacBookPro11,2"
echo "Mac-3CBD00234E554E41"
echo "Flashing SMC with 820-3662 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-3CBD00234E554E41\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-3CBD00234E554E41\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-3CBD00234E554E41\Mac-3CBD00234E554E41.smc

complete.nsh
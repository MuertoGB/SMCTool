echo -off

cls

echo "MacBookPro11,5, dGPU"
echo "Mac-06F11F11946D27C5"
echo "Flashing SMC with 820-00426 v2.30f2 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-06F11F11946D27C5\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-06F11F11946D27C5\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-06F11F11946D27C5\Mac-06F11F11946D27C5.smc

complete.nsh
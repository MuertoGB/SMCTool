echo -off

cls

echo "MacBookPro11,4, iGPU"
echo "Mac-06F11FD93F0323C5"
echo "Flashing SMC with 820-00426 v2.29f24 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-06F11FD93F0323C5\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-06F11FD93F0323C5\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-06F11FD93F0323C5\Mac-06F11FD93F0323C5.smc

complete.nsh
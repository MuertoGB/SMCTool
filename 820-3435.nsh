echo -off

cls

echo "MacBookAir6,1"
echo "Mac-35C1E88140C3E6CF"
echo "Flashing SMC with 820-3435 v2.12f143 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-35C1E88140C3E6CF\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-35C1E88140C3E6CF\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-35C1E88140C3E6CF\Mac-35C1E88140C3E6CF.smc

complete.nsh
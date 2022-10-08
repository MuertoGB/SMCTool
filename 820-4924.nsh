echo -off

mode 176 47
cls

echo "MacBookPro12,1"
echo "Mac-E43C1C25D4880AD6"
echo "Flashing SMC with 820-4924 v2.28f7 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-E43C1C25D4880AD6\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-E43C1C25D4880AD6\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-E43C1C25D4880AD6\Mac-E43C1C25D4880AD6.smc

complete.nsh
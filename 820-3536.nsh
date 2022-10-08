echo -off

mode 160 42
cls

echo "MacBookPro11,1"
echo "Mac-189A3D4F975D5FFC"
echo "Flashing SMC with 820-3536 v2.16f68 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-189A3D4F975D5FFC\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-189A3D4F975D5FFC\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-189A3D4F975D5FFC\Mac-189A3D4F975D5FFC.smc

complete.nsh
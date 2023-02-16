**Compatibility Information:**
-
This information is still a work in progress, I only have so many machines at my disposal to verify board-ids and perform a test flash. If a model is marked as verified, this means it was successfully flashed with SMC Tool. If a board is not in the below list, it isn't currently supported.

Some boards carry identical board-ids but have different logic board models, I have tried to keep them separate for ease of use.

If you'd like to verify a board please open an issue. Make sure to include the following information:-

* Model Number (e.g. A1502)
* EMC Number (e.g. EMC 2835) 
* Board ID `ioreg -l | grep -i board-id`
* Board Model (e.g. 820-4924)
* Graphics Type and Model (e.g. iGPU, Intel HD 6000)

---

**MacBook Air**
```
A1465 (EMC 2631)

 - MacBookAir6,1 (11-inch Mid 2013, Early 2014)
 - Board Model: 820-3435
 - Board-ID: Mac-35C1E88140C3E6CF
 - Firmware: 2.12f143

Flash using 820-3435.nsh
```

```
A1466 (EMC 2632) - Verified

 - MacBookAir6,2 (13-inch Mid 2013,  Early 2014)
 - Board Model: 820-3437
 - Board-ID: Mac-7DF21CB3ED6977E5
 - Firmware: 2.13f15

Flash using 820-3437.nsh
```

```
A1465 (EMC 2924)

 - MacBookAir7,1 (11-inch Early 2015)
 - Board Model: 820-00164
 - Board-ID: Mac-9F18E312C5C2BF0B
 - Firmware: 2.26f2

Flash using 820-00164.nsh
```

```
A1466 (EMC 2925, EMC 3178) - Verified

 - MacBookAir7,2 (13-inch Early 2015)
 - MacBookAir7,2 (13-inch 2017)
 - Board Model: 820-00165
 - Board-ID: Mac-937CB26E2E02BB01
 - Firmware: 2.27f2

Flash using 820-00165.nsh
```
**MacBook Pro**
```
A1502 (EMC 2678. EMC 2875) -  Verified

 - MacBookPro11,1 (13-inch Late 2013, Mid 2014)
 - Board Model(s): 820-3476
 - Board-ID: Mac-189A3D4F975D5FFC
 - Firmware: 2.16f68

Flash using 820-3476.nsh
```

```
A1502 (EMC 2678. EMC 2875)
This model is the same as 3476, but only carries 4GB RAM. Can be flashed w/ 3476 too.

 - MacBookPro11,1 (13-inch Late 2013, Mid 2014)
 - Board Model(s): 820-3536
 - Board-ID: Mac-189A3D4F975D5FFC
 - Firmware: 2.16f68

Flash using 820-3536.nsh
```

```
A1502 (EMC 2835) - Verified

 - MacBookPro12,1 (13-inch Early 2015)
 - Board Model: 820-4924 
 - Board-ID: Mac-E43C1C25D4880AD6
 - Firmware: 2.28f7

Flash using 820-4924.nsh
```

```
A1398 (EMC 2674, EMC 2745) - Verified

 - MacBookPro11,2 (15-inch Late 2013 with iGPU)
 - MacBookPro11,3 (15-inch Mid 2014 with iGPU)
 - Board Model: 820-3662
 - Board-ID: Mac-3CBD00234E554E41
 - Firmware: 2.18f15

Flash using 820-3662.nsh
```

```
A1398 (EMC 2876, EMC 2881)

 - MacBookPro11,2 (15-inch Late 2013 with dGPU)
 - MacBookPro11,3 (15-inch Mid 2014 with dGPU)
 - Board Model: 820-3787
 - Board-ID: Mac-2BD1B31983FE1663
 - Firmware: 2.19f12

Flash using 820-3787.nsh
```

```
A1398 (EMC 2909) - Verified

 - MacBookPro11,4 (15-inch Mid 2015 with iGPU)
 - Board Model: 820-00138
 - Board-ID: Mac-06F11FD93F0323C5
 - Firmware: 2.29f24

Flash using 820-00138.nsh
```

```
A1398 (EMC 2910)

 - MacBookPro11,5 (15-inch Mid 2015 with dGPU)
 - Board Model: 820-00163
 - Board-ID: Mac-06F11F11946D27C5
 - Firmware: 2.30f2

Flash using 820-00163.nsh
```

```
A1398 (EMC 2910)

 - MacBookPro11,5 (15-inch Mid 2015 with dGPU)
 - Board Model: 820-00426
 - Board-ID: Mac-06F11F11946D27C5
 - Firmware: 2.30f2

Flash using 820-00426.nsh
```
**Mac Mini**
```
A1347 (EMC 2840)

 - MacMini7,1 (Late 2014-2017)
 - Board Model: 820-5509
 - Board-ID: Mac-35C5E08120C7EEAF
 - Firmware: v2.24f32
 
 Flash using 820-5509.nsh
```
# lu_gtavspawncam
Spawn camera from Grand Theft Auto V created for Liberty Unleashed

The GTA V spawn camera is pretty neat. The three step birds eye view, each getting closer until finally restoring view and control to the player. There's usually a little interesting dialog in GTA V for this, but I didn't put that in here.

So, I've created one for [Liberty Unleashed](http://liberty-unleashed.co.uk/), a GTA III multiplayer mod.

**Instructions:**
Put the script folder "GTA V Spawn Camera" into your Scripts folder of your server.
The proper directory structure should be: *MainServerDir/Scripts/GTA V Spawn Camera*

Then, add the script to content.xml, located within the LU folder of your server.

`<script folder="GTA V Spawn Camera" />`

Then voila! Normal spawn is disabled, so in order to use this, you must use

`GTAVSpawn ( Player pPlayer , Vector pPosition );`

The spawn camera script takes care of the rest.

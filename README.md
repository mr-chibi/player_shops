<h2>Mr_Chibi's Player's Shops</h2>
<ul>
<li>Mr_Chibi's Player Shops is a Minecraft Datapack!</li>
<li>It's Singleplayer & Multiplayer Friendly!</li>
<li>Creates a chest contain NBT data for players to interact with.</li>
</ul>

<h2>What Unique Features does pack offer?</h2>
<ul>
<li>Allows Player's to interact with chest to shop in chat when chest is right clicked.</li>
<li>Shop owners can put their shops in "lock" mode to have their shop open.</li>
<li>Shop owners can put their shops in "unlock" mode to edit chest contents and pick up their payments preventing thief from other players.</li>
<li>Limit 1 stack per shop slot.</li>
<li>Shops are linked to Player's UUID & Shops UUID only the shop owner can remove them.</li>
</ul>

<h2>Selling & Buying Slots:</h2>
<p>Example, Below: <br>
<b>[Buying Slot]</b> (Place "1" Item/Block)<br>
<b>[Selling Slot]</b> (Can hold "1-64" Blocks/Items)<br>
<b>[Payment Slot]</b> (Empty by default where user payments end up)<br>
</p>
<ul>
<li>First, rows are for <b>Buying</b> Item only place <b>1</b> Item into that slot!</li>
<li>Second, rows are for <b>Selling</b> Items only place <b>0-64</b> Items into that slot!</li>
<li>Third, rows are for <b>Payments From Players</b> Where shop owners collect there goods.</li>
</ul>

<h2>How it works:</h2>
<ul>
<li>Step 1: <b>/trigger ps_create</b></li>
<li>Step 2: "Right Click" chest by default "lock" mode is on when created.</li>
<li>Step 3: <b>/trigger ps_unlock</b> Unlocks chest allowing shop owner edit it's contents.</li>
<li>Step 4: <b>/trigger ps_lock</b> Locks shop allowing player's to shop.</li>
<li>Step 5: Player interacts with shop GUI in chat, clicks <b>[1], [2]+</b> then does following below:</li>
<li>Step 6: <b>/trigger ps_buy set [amount]</b> Locks shop allowing player's to shop.</li>
<li>Step 7: All payments are stored inside chests on bottom slot, <b>beneath [Selling Slot]</b></li>
<li>Step 8: <b>/trigger ps_remove</b> Removes shop if you won't want sell items anymore.</li>
</ul>

<h2>Stuck in Adventure Mode?</h2>
<ul>
<li>If player is a <b>Guest</b> at another <b>Player's Shop</b>. They'll be put into <b>Adventure Mode</b> Just walk outside shops range 8-9 blocks and problem should be resolved.</li>
</ul>

<h2>How it was written in:</h2>
<ul>
<li>Json</li>
<li>Mcfunction</li>
</ul>

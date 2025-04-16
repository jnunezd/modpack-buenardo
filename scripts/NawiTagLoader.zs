#priority 100

import crafttweaker.api.tag.MCTag;

<tag:items:expanded_combat:crossbows>.add(<tag:items:forge:crossbows>);
<tag:items:forge:tools>.add(
    <item:wands:stone_wand>,
    <item:wands:iron_wand>,
    <item:wands:diamond_wand>,
    <item:wands:netherite_wand>
    );
/* Son items no tags
<item:irons_spellbooks:ice_staff>.add(<tag:items:c:weapons>);
<item:irons_spellbooks:graybeard_staff>.add(<tag:items:c:weapons>);
<item:irons_spellbooks:blood_staff>.add(<tag:items:c:weapons>);
<item:irons_spellbooks:staff_of_the_nines>.add(<tag:items:c:weapons>);
<item:irons_spellbooks:lightning_rod>.add(<tag:items:c:weapons>);
<item:irons_spellbooks:autoloader_crossbow>.add(<tag:items:c:weapons>);
<item:irons_spellbooks:hither_thither_wand>.add(<tag:items:c:weapons>);
*/
<tag:items:curios:hands>.add(<tag:items:curios:aether_gloves>);
<tag:items:curios:aether_gloves>.add(<tag:items:curios:hands>);

<tag:items:aether:accessories>.add(<tag:items:curios:curio>);
<tag:items:curios:curio>.add(<tag:items:aether:accessories>);

<tag:items:artifacts:artifacts>.add(<tag:items:aether:accessories>);

<tag:items:curios:back>.add(<tag:items:curios:aether_cape>);
<tag:items:curios:aether_cape>.add(<tag:items:curios:back>);

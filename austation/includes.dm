// AuStation includes file. Add all modularized code files here.

// Global Variables Section
#include "code\_GLOBALS\misc.dm"
#include "code\_GLOBALS\pool_globals.dm"

// Main Includes Section
#include "code\_globalvars\lists\maintenance_loot.dm"
#include "code\controllers\configuration\entries\game_options.dm"
#include "code\controllers\configuration\entries\general.dm"
#include "code\controllers\subsystem\autosandbox.dm"
#include "code\controllers\subsystem\job.dm"
#include "code\datums\ai_laws.dm"
#include "code\datums\components\crafting\recipes.dm"
#include "code\datums\emotes.dm"
#include "code\datums\brain_damage\imaginary_friend.dm"
#include "code\datums\components\crafting\crafting.dm"
#include "code\datums\elements\swimming.dm"
#include "code\datums\mood_event\generic_positive_events.dm"
#include "code\datums\mutations\body.dm"
#include "code\datums\mutations\speech.dm"
#include "code\datums\mutations\jumpy.dm"
#include "code\datums\mutations\telekinesis.dm"
#include "code\datums\status_effects\buffs.dm"
#include "code\datums\wires\apc.dm"
#include "code\game\sound.dm"
#include "code\game\area\Space_Station_13_areas.dm"
#include "code\game\machinery\syndicatebeacon.dm"
#include "code\game\mecha\equipment\tools\other_tools.dm"
#include "code\game\mecha\equipment\tools\work_tools.dm"
#include "code\game\mecha\equipment\weapons\weapons.dm"
#include "code\game\objects\effects\decals\turfdecal\markings.dm"
#include "code\game\objects\items\AI_modules.dm"
#include "code\game\objects\items\bluespace_jar.dm"
#include "code\game\objects\items\robot\robot_items.dm"
#include "code\game\objects\items\robot\robot_upgrades.dm"
#include "code\game\objects\items\storage\belt.dm"
#include "code\game\objects\items\storage\fancy.dm"
#include "code\game\objects\items\storage\firstaid.dm"
#include "code\game\objects\items\storage\uplink_kits.dm"
#include "code\game\objects\items\sharpener.dm"
#include "code\game\objects\items\tanks\jetpack.dm"
#include "code\game\objects\items\tanks\tanks.dm"
#include "code\game\objects\items\twohanded.dm"
#include "code\game\objects\items\weaponry.dm"
#include "code\game\objects\items\devices\floor_painter.dm"
#include "code\game\objects\structures\femur_breaker.dm"
#include "code\game\objects\structures\humanfurniture.dm"
#include "code\game\objects\structures\mirror.dm"
#include "code\game\turfs\open\lava.dm"
#include "code\modules\admin\chat_commands.dm"
#include "code\modules\admin\topic.dm"
#include "code\modules\admin\verbs\fix_air.dm"
#include "code\modules\admin\verbs\mapping.dm"
#include "code\modules\client\preferences_savefile.dm"
#include "code\modules\client\loadout\loadout_uniform.dm"
#include "code\modules\clothing\glasses\hud.dm"
#include "code\modules\clothing\head\helmet.dm"
#include "code\modules\clothing\head\job.dm"
#include "code\modules\clothing\masks\miscellaneous.dm"
#include "code\modules\clothing\spacesuit\hardsuit.dm"
#include "code\modules\clothing\spacesuit\miscellaneous.dm"
#include "code\modules\clothing\under\color.dm"
#include "code\modules\clothing\under\miscellaneous.dm"
#include "code\modules\clothing\under\jobs\engineering.dm"
#include "code\modules\clothing\under\jobs\medisci.dm"
#include "code\modules\clothing\under\jobs\security.dm"
#include "code\modules\clothing\under\jobs\civilian\civilian.dm"
#include "code\modules\clothing\under\skirt_dress.dm"
#include "code\modules\clothing\under\costume.dm"
#include "code\modules\events\bruh_moment.dm"
#include "code\modules\hydroponics\grown.dm"
#include "code\modules\hydroponics\grown\towercap.dm"
#include "code\modules\hydroponics\plant_genes.dm"
#include "code\modules\food_and_drinks\drinks\drinks.dm"
#include "code\modules\food_and_drinks\food\snacks_bread.dm"
#include "code\modules\food_and_drinks\food\snacks_other.dm"
#include "code\modules\food_and_drinks\food\tablecraft\recipes_bread.dm"
#include "code\modules\food_and_drinks\recipes\drinks_recipes.dm"
#include "code\modules\food_and_drinks\recipes\recipes_misc.dm"
#include "code\modules\jobs\job_types\assistant.dm"
#include "code\modules\jobs\job_types\chief_medical_officer.dm"
#include "code\modules\jobs\job_types\emt.dm"
#include "code\modules\jobs\job_types\job.dm"
#include "code\modules\jobs\job_types\medical_doctor.dm"
#include "code\modules\mapping\writer.dm"
#include "code\modules\mapping\random_rooms.dm"
#include "code\modules\mining\lavaland\necropolis_chests.dm"
#include "code\modules\mob\mob_defines.dm"
#include "code\modules\mob\dead\new_player\new_player.dm"
#include "code\modules\mob\mob.dm"
#include "code\modules\mob\living\emote.dm"
#include "code\modules\mob\living\carbon\emote.dm"
#include "code\modules\mob\living\carbon\examine.dm"
#include "code\modules\mob\living\carbon\human\emote.dm"
#include "code\modules\mob\living\carbon\human\examine.dm"
#include "code\modules\mob\living\carbon\human\human_defines.dm"
#include "code\modules\mob\living\carbon\human\species_type\felinid.dm"
#include "code\modules\mob\living\silicon\pai\pai_shell.dm"
#include "code\modules\mob\living\silicon\robot\emote.dm"
#include "code\modules\mob\living\silicon\robot\robot.dm"
#include "code\modules\mob\living\silicon\robot\robot_modules.dm"
#include "code\modules\mob\living\simple_animal\bot\deathsky.dm"
#include "code\modules\mob\living\simple_animal\friendly\drone\_drone.dm"
#include "code\modules\mob\living\simple_animal\friendly\drone\drone_movement.dm"
#include "code\modules\mob\living\simple_animal\friendly\drone\emote.dm"
#include "code\modules\mob\living\simple_animal\friendly\drone\say.dm"
#include "code\modules\mob\living\simple_animal\friendly\drone\visuals_icons.dm"
#include "code\modules\mob\living\simple_animal\friendly\mouse.dm"
#include "code\modules\mob\living\simple_animal\hostile\generic.dm"
#include "code\modules\mob\living\simple_animal\hostile\regalrat.dm"
#include "code\modules\mob\living\simple_animal\hostile\retaliate\kangaroo.dm"
#include "code\modules\mob\living\simple_animal\slime\slime.dm"
#include "code\modules\reagents\chemistry\machinery\chem_dispenser.dm"
#include "code\modules\reagents\chemistry\reagents\alcohol_reagents.dm"
#include "code\modules\reagents\chemistry\reagents\drink_reagents.dm"
#include "code\modules\reagents\chemistry\reagents\medicine_reagents.dm"
#include "code\modules\reagents\chemistry\reagents\other_reagents.dm"
#include "code\modules\reagents\chemistry\reagents\toxin_reagents.dm"
#include "code\modules\reagents\chemistry\reagents\pyrotechnic_reagents.dm"
#include "code\modules\reagents\chemistry\recipes\others.dm"
#include "code\modules\reagents\chemistry\recipes\toxins.dm"
#include "code\modules\reagents\chemistry\recipes\pyrotechnics.dm"
#include "code\modules\reagents\chemistry\reagents.dm"
#include "code\modules\reagents\chemistry\recipes.dm"
#include "code\modules\reagents\reagent_containers\bottle.dm"
#include "code\modules\reagents\reagent_containers\custompen.dm"
#include "code\modules\recycling\disposal\construction.dm"
#include "code\modules\recycling\disposal\loafer.dm"
#include "code\modules\research\designs\AI_module_designs.dm"
#include "code\modules\research\designs\bluespace_designs.dm"
#include "code\modules\research\designs\mecha_designs.dm"
#include "code\modules\research\designs\mechfabricator_designs.dm"
#include "code\modules\research\designs\medical_designs.dm"
#include "code\modules\research\designs\autolathe_designs.dm"
#include "code\modules\research\techweb\all_nodes.dm"
#include "code\modules\research\xenobiology\crossbreeding\_potions.dm"
#include "code\modules\surgery\tools.dm"
#include "code\modules\uplink\uplink_items.dm"
#include "code\modules\vehicles\cars\thanoscar.dm"
#include "code\modules\pool\pool_controller.dm"
#include "code\modules\pool\pool_drain.dm"
#include "code\modules\pool\pool_effects.dm"
#include "code\modules\pool\pool_main.dm"
#include "code\modules\pool\pool_noodles.dm"
#include "code\modules\pool\pool_structures.dm"
#include "code\modules\pool\pool_wires.dm"
#include "code\modules\projectiles\boxes_magazine\internal\makeshift_mags.dm"
#include "code\modules\projectiles\guns\ballistic\makeshift_pistol.dm"
#include "code\modules\vending\_vending.dm"
#include "code\modules\vending\autodrobe.dm"
#include "code\modules\vending\clothesmate.dm"
#include "code\modules\vending\wardrobes.dm"
#include "code\modules\surgery\advanced\bioware\cortex_folding.dm"
#include "code\modules\surgery\advanced\bioware\cortex_imprint.dm"
#include "code\modules\surgery\organs\eyes.dm"
#include "code\modules\atmospherics\machinery\atmosmachinery.dm"
#include "code\modules\atmospherics\machinery\components\unary_devices\thermomachine.dm"
#include "code\modules\cargo\exports\food_and_drink\bread.dm"
#include "code\modules\cargo\exports\food_and_drink\burger.dm"
#include "code\modules\cargo\exports\food_and_drink\food_mixtures.dm"
#include "code\modules\cargo\exports\food_and_drink\processed.dm"
#include "code\modules\cargo\exports\organs.dm"
#include "code\modules\cargo\packs\packs.dm"
#include "code\modules\cargo\packs\costumes_toys.dm"

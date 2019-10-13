addjestercard(~juggling ball~); self.changebattlevar(~jugglingballs~| 1);

if(self.roll_total%2 == 0){ e.castdirection = 1; }else{ e.castdirection = 0; };

e always refers to the item you're calling the script from, whereas eq is just a variable name
So for example, trace(e.name) in an equipment's script would get you the equipment's name, but for(eq in self.equipment){trace(eq.name);}; would trace the names of all your equipment

function floordiv(x|y){var t = 0; while (x>0) {x-=y; t++;} return t; } var tot=0; var count=0; var ava=[]; for (mydice in self.dicepool) { if (mydice.available()) { tot+= mydice.basevalue; count++; ava.push(mydice; } } var del = 0; for (mydice in ava) { trace(tot); trace(count); trace(~~); del+=0.05; mydice.animatereroll(floordiv(tot|count)|self.screenposition()|del); tot-=floordiv(tot|count); count--;


Name: Item name. if you put put an @ and text after the main name, the game wont display the string after the @ so you can have items with multiple names ex. `Precious Egg@6` and `Precious Egg@5` are both called "precious egg"
Description: item description. three lines fit on a card. if your item is reusable/has uses, the last line here will be replaced with the (reusable) text in game unless Hide Reusable is set to YES
Size: size 1 or size 2
Script: On Execute: what the item does when used
Gadget: inventor gadget.
Slots: the item's slots, ex `NORMAL`, `MAX3`, `COUNTDOWN`, `DOUBLES|DOUBLES`
NEED TOTAL: entering a number here on an item with two slots will make them a NEEDS total (ex. NEEDS 4 for change machine) if the item's slot is a COUNTDOWN, this is the number of the countdown.
Category: ITEM, SHIELD, WEAPON, or MAGIC. this also automatically colors items if you dont enter a color
Colour: available colors are RED, ORANGE, YELLOW, GREEN, BRIGHTCYAN, PURPLE, PINK, GRAY
Upgrade and Weaken: what the item does when upgraded or weakened. include an itemname_upgraded and/or an itemname/downgraded if you want it to have custom behavior.
Alternate Status Trigger: if the status listed here is changed by pu/bonus round, change this card to it's alt. (ex. Sonic Wave has `weaken` here, and changes to Sonic Wave?)
SFX: put none here for no sfx. vanilla equipment sfx are handled by the game, but for modded items you'll need to list the sound event here.
Uses?: 0 for one use, -1 for reusable, any other number for that many uses.
Cast Backwards: when used, does the item ANIMATE by going toward the player (YES) or away from them (NO)
Single use?: self explanatory
Parallel Universe: is this a PU item?
Speical?: im not entirely sure what this does, but skillcards etc are included here.
Error Immune: YES if it isn't removed by an error from Robot (ex. Buster Sword)
Show Gold: literally only pickpocket uses this
Appears For Parts: if it always appears for parts as inventor eg. Scrap Metal
Hide Reusable: if the "(Reusable)" text is hidden or not.
Witch Spell: can this be a witch spell? 1 for "this is also a witch spell", 2 for "this can only be a witch spell"
Script: [condition]: what the item does when [condition] is met.


var firstcard = Deck.getcard(0); if(firstcard != null) firstcard.delete();

    backgroundcol;
    bordercol;
    foregroundcol;
    highlightdicecol;
    highlighttextcol;
    currentheight;
    name;
    rawname;
    category;
    fulldescription;
    castdirection;
    skillcard;
    skillcard_special; /* Created by retype action */
    gadget;
    conditionalslots; /* Created by retype action */
    read; /* Created by retype action */
    active; /* Created by retype action */
    size;
    x;
    y;
    finalpos;
    row;
    column;
    tx;
    ty;
    width;
    height;
    upgraded; /* Created by retype action */
    ignorediceval; /* Created by retype action */
    onceperbattle; /* Created by retype action */
    usedthisbattle; /* Created by retype action */
    locked;
    unlocked;
    unlockedthisturn; /* Created by retype action */
    timesused;
    reusable;
    usesleft;
    playinganimation; /* Created by retype action */
    script;
    scriptonstartturn;
    scriptendturn;
    scriptaftercombat;
    scriptonanyequipmentuse;
    scriptbeforeexecute;
    skills;
    skillsavailable;
    skills_temporarythisfight;
    longlong slots;
    slotposition;
    shakex;
    shakey;
    longlong shocked_slot;
    shockedsetting;
    shocked_showtitle; /* Created by retype action */
    shocked_remainingcountdown;
    shocked_countdown;
    unshockingtimer;
    weakened; /* Created by retype action */
    charge;
    aihints;
    priority;
    onanimatecomplete;
    onanimatecomplete_selectedslot;
    onanimatecomplete_actor;
    onanimatecomplete_equipment;
    immunetoerrors; /* Created by retype action */
    showgold; /* Created by retype action */
    appearsforparts; /* Created by retype action */
    preventdefault; /* Created by retype action */
    alreadyfuryed; /* Created by retype action */
    availablethisturn; /* Created by retype action */
    availablenextturn; /* Created by retype action */
    equipmentpanel;
    damagethisturn;
    damagethisscript;
    allowupdatereusabledescription; /* Created by retype action */
    reducecountdownby;
    showhealthbar; /* Created by retype action */
    gamevar;
    show; /* Created by retype action */

    Address	Length	Type	String
.rdata:000000014148B508	00000021	C	elements.templates.RemixTemplate
.rdata:0000000141679DB0	00000022	C	elements.templates.StatusTemplate
.rdata:0000000141679E18	00000026	C	elements.templates.StatusTemplate.new
.rdata:0000000141679E40	0000002B	C	elements.templates.StatusTemplate.toString
.rdata:0000000141679F50	00000022	C	elements.templates.StatusTemplate
.rdata:000000014167A0F0	00000021	C	elements.templates.SpellTemplate
.rdata:000000014167A158	00000025	C	elements.templates.SpellTemplate.new
.rdata:000000014167A180	00000027	C	elements.templates.SpellTemplate.clone
.rdata:000000014167A1A8	0000002A	C	elements.templates.SpellTemplate.toString
.rdata:000000014167A208	00000021	C	elements.templates.SpellTemplate
.rdata:000000014167A380	00000026	C	elements.templates.ShopkeeperTemplate
.rdata:000000014167A3F8	0000002A	C	elements.templates.ShopkeeperTemplate.new
.rdata:000000014167A428	0000002F	C	elements.templates.ShopkeeperTemplate.toString
.rdata:000000014167A4B8	00000026	C	elements.templates.ShopkeeperTemplate
.rdata:000000014167A658	00000021	C	elements.templates.RemixTemplate
.rdata:000000014167A6C0	00000025	C	elements.templates.RemixTemplate.new
.rdata:000000014167A6E8	0000002A	C	elements.templates.RemixTemplate.toString
.rdata:000000014167A718	00000027	C	elements.templates.RemixTemplate.apply
.rdata:000000014167A940	00000020	C	elements.templates.ItemTemplate
.rdata:000000014167A9A0	00000024	C	elements.templates.ItemTemplate.new
.rdata:000000014167A9C8	00000026	C	elements.templates.ItemTemplate.clone
.rdata:000000014167A9F0	00000029	C	elements.templates.ItemTemplate.toString
.rdata:000000014167AAB0	00000020	C	elements.templates.ItemTemplate
.rdata:000000014167AC70	00000023	C	elements.templates.FighterTemplate
.rdata:000000014167ACD8	00000027	C	elements.templates.FighterTemplate.new
.rdata:000000014167AD00	00000029	C	elements.templates.FighterTemplate.reset
.rdata:000000014167AD30	00000029	C	elements.templates.FighterTemplate.clone
.rdata:000000014167AD60	0000002C	C	elements.templates.FighterTemplate.toString
.rdata:000000014167B2F0	00000023	C	elements.templates.FighterTemplate
.rdata:000000014167B468	00000025	C	elements.templates.EquipmentTemplate
.rdata:000000014167B4D8	00000029	C	elements.templates.EquipmentTemplate.new
.rdata:000000014167B508	0000002E	C	elements.templates.EquipmentTemplate.toString
.rdata:000000014167B878	00000025	C	elements.templates.EquipmentTemplate
.rdata:000000014167BA18	00000023	C	elements.templates.EpisodeTemplate
.rdata:000000014167BA80	00000027	C	elements.templates.EpisodeTemplate.new
.rdata:000000014167BAA8	00000029	C	elements.templates.EpisodeTemplate.clone
.rdata:000000014167BAD8	0000002C	C	elements.templates.EpisodeTemplate.toString
.rdata:000000014167BD80	00000023	C	elements.templates.EpisodeTemplate
.rdata:000000014167BEF8	00000022	C	elements.templates.CreditTemplate
.rdata:000000014167BF60	00000026	C	elements.templates.CreditTemplate.new
.rdata:000000014167BF88	0000002B	C	elements.templates.CreditTemplate.toString
.rdata:000000014167C000	00000022	C	elements.templates.CreditTemplate
.rdata:000000014167C1A0	00000025	C	elements.templates.CharacterTemplate
.rdata:000000014167C210	00000029	C	elements.templates.CharacterTemplate.new
.rdata:000000014167C240	0000002B	C	elements.templates.CharacterTemplate.clone
.rdata:000000014167C270	0000002E	C	elements.templates.CharacterTemplate.toString
.rdata:000000014167C510	00000025	C	elements.templates.CharacterTemplate
.rdata:000000014167C688	00000025	C	elements.templates.ChallengeTemplate
.rdata:000000014167C6F8	00000029	C	elements.templates.ChallengeTemplate.new
.rdata:000000014167C728	0000002E	C	elements.templates.ChallengeTemplate.toString
.rdata:000000014167C800	00000025	C	elements.templates.ChallengeTemplate
.rdata:000000014167CAB8	0000001C	C	elements.WinCombatAnimation
.rdata:000000014167CB18	00000020	C	elements.WinCombatAnimation.new
.rdata:000000014167CB38	00000021	C	elements.WinCombatAnimation.show
.rdata:000000014167CB60	00000021	C	elements.WinCombatAnimation.hide
.rdata:000000014167CB88	00000023	C	elements.WinCombatAnimation.update
.rdata:000000014167CBB0	00000021	C	elements.WinCombatAnimation.draw
.rdata:000000014167CBD8	00000023	C	elements.WinCombatAnimation.remove
.rdata:000000014167CC00	00000024	C	elements.WinCombatAnimation.dispose
.rdata:000000014167CC28	00000028	C	elements.WinCombatAnimation.onwinmarker
.rdata:000000014167D030	0000001C	C	elements.WinCombatAnimation
.rdata:000000014167D280	0000000F	C	elements.Trade
.rdata:000000014167D2B8	00000013	C	elements.Trade.new
.rdata:000000014167D2D0	00000016	C	elements.Trade.create
.rdata:000000014167D2E8	00000018	C	elements.Trade.generate
.rdata:000000014167D310	0000001C	C	elements.Trade.patternmatch
.rdata:000000014167D340	0000001C	C	elements.Trade.executetrade
.rdata:000000014167D370	00000017	C	elements.Trade.setnode
.rdata:000000014167D3B0	0000000F	C	elements.Trade
.rdata:000000014167D8E0	00000016	C	elements.StatusEffect
.rdata:000000014167D930	0000001A	C	elements.StatusEffect.new
.rdata:000000014167D9A8	00000028	C	elements.StatusEffect.updatedescription
.rdata:000000014167D9E8	00000024	C	elements.StatusEffect.toshortString
.rdata:000000014167DA20	00000023	C	elements.StatusEffect.totinyString
.rdata:000000014167DA58	0000001A	C	elements.StatusEffect.add
.rdata:000000014167DA78	0000001C	C	elements.StatusEffect.clone
.rdata:000000014167DA98	00000020	C	elements.StatusEffect.removenow
.rdata:000000014167DAC8	00000027	C	elements.StatusEffect.get_displayvalue
.rdata:000000014167DB08	00000027	C	elements.StatusEffect.set_displayvalue
.rdata:000000014167DEC8	00000016	C	elements.StatusEffect
.rdata:000000014167E0D8	00000015	C	elements.StatusApply
.rdata:000000014167E120	0000001F	C	elements.StatusApply.startturn
.rdata:000000014167E150	0000001D	C	elements.StatusApply.endturn
.rdata:000000014167E178	0000001C	C	elements.StatusApply.update
.rdata:000000014167E198	00000028	C	elements.StatusApply.applyalternatelock
.rdata:000000014167E1D8	00000021	C	elements.StatusApply.applypoison
.rdata:000000014167E210	0000002F	C	elements.StatusApply.applyalternatereequipnext
.rdata:000000014167E498	00000015	C	elements.StatusApply
.rdata:000000014167E960	00000013	C	elements.Spellbook
.rdata:000000014167E990	00000019	C	elements.Spellbook.reset
.rdata:000000014167E9B0	0000001F	C	elements.Spellbook.createspell
.rdata:000000014167E9E0	0000001B	C	elements.Spellbook.cleanup
.rdata:000000014167EA00	00000024	C	elements.Spellbook.cleanupsorceress
.rdata:000000014167EA40	0000001A	C	elements.Spellbook.update
.rdata:000000014167EA60	0000001C	C	elements.Spellbook.drawslot
.rdata:000000014167EA90	00000022	C	elements.Spellbook.drawactiveslot
.rdata:000000014167EAC8	00000023	C	elements.Spellbook.getselectedslot
.rdata:000000014167EB00	0000001F	C	elements.Spellbook.drawslotnum
.rdata:000000014167EB30	00000027	C	elements.Spellbook.drawselectaslottext
.rdata:000000014167EB70	0000001D	C	elements.Spellbook.drawslots
.rdata:000000014167EBA0	0000001E	C	elements.Spellbook.learnspell
.rdata:000000014167EBD0	0000001B	C	elements.Spellbook.adddice
.rdata:000000014167EBF8	00000021	C	elements.Spellbook.matchingspell
.rdata:000000014167EC30	0000001A	C	elements.Spellbook.summon
.rdata:000000014167EC58	00000023	C	elements.Spellbook.sorceresssummon
.rdata:000000014167EC90	0000001D	C	elements.Spellbook.startturn
.rdata:000000014167ECB0	00000021	C	elements.Spellbook.summon_create
.rdata:000000014167ECE8	0000001F	C	elements.Spellbook.initdisplay
.rdata:000000014167ED18	0000001B	C	elements.Spellbook.dispose
.rdata:000000014167F378	00000013	C	elements.Spellbook
.rdata:000000014167F600	00000019	C	elements.SpellbookPublic
.rdata:000000014167F638	00000021	C	elements.SpellbookPublic.isempty
.rdata:000000014167F668	00000023	C	elements.SpellbookPublic.spellname
.rdata:000000014167F6A0	00000025	C	elements.SpellbookPublic.changespell
.rdata:000000014167F6D8	0000002A	C	elements.SpellbookPublic.changespellflash
.rdata:000000014167F720	0000001F	C	elements.SpellbookPublic.erase
.rdata:000000014167F748	00000026	C	elements.SpellbookPublic.getspelllist
.rdata:000000014167F780	0000002C	C	elements.SpellbookPublic.getunexpectedspell
.rdata:000000014167F8B0	00000019	C	elements.SpellbookPublic
.rdata:000000014167FB40	0000000F	C	elements.Spell
.rdata:000000014167FB78	00000013	C	elements.Spell.new
.rdata:000000014167FB90	0000001A	C	elements.Spell.drawpickup
.rdata:000000014167FBC0	00000016	C	elements.Spell.create
.rdata:000000014167FBD8	00000016	C	elements.Spell.remove
.rdata:000000014167FBF0	00000017	C	elements.Spell.dispose
.rdata:000000014167FC08	00000014	C	elements.Spell.draw
.rdata:000000014167FC20	00000017	C	elements.Spell.adddice
.rdata:000000014167FC38	00000018	C	elements.Spell.toString
.rdata:000000014167FF88	0000000F	C	elements.Spell
.rdata:0000000141680138	0000000F	C	elements.Smith
.rdata:0000000141680170	00000013	C	elements.Smith.new
.rdata:0000000141680188	00000017	C	elements.Smith.setnode
.rdata:00000001416801E0	0000000F	C	elements.Smith
.rdata:0000000141680430	0000000F	C	elements.Skill
.rdata:0000000141680468	00000013	C	elements.Skill.new
.rdata:0000000141680480	00000016	C	elements.Skill.create
.rdata:0000000141680498	0000001F	C	elements.Skill.passrequirement
.rdata:00000001416804C8	00000017	C	elements.Skill.execute
.rdata:00000001416804E0	00000015	C	elements.Skill.inbox
.rdata:00000001416804F8	00000017	C	elements.Skill.display
.rdata:0000000141680510	00000023	C	elements.Skill.display_onequipment
.rdata:0000000141680550	00000016	C	elements.Skill.remove
.rdata:0000000141680790	0000000F	C	elements.Skill
.rdata:0000000141680C60	0000000E	C	elements.Shop
.rdata:0000000141680C98	00000012	C	elements.Shop.new
.rdata:0000000141680CB0	00000015	C	elements.Shop.create
.rdata:0000000141680CC8	00000020	C	elements.Shop.createfromstrings
.rdata:0000000141680D00	00000016	C	elements.Shop.setnode
.rdata:0000000141680D18	00000016	C	elements.Shop.dispose
.rdata:0000000141680D90	0000000E	C	elements.Shop
.rdata:0000000141680F10	00000017	C	elements.NonRandomTurn
.rdata:0000000141680F60	0000001B	C	elements.NonRandomTurn.new
.rdata:0000000141681028	00000017	C	elements.NonRandomTurn
.rdata:0000000141681230	00000019	C	elements.Monstermodecard
.rdata:0000000141681288	0000001D	C	elements.Monstermodecard.new
.rdata:00000001416812A8	00000025	C	elements.Monstermodecard.clearmemory
.rdata:00000001416812E0	00000032	C	elements.Monstermodecard.countdownmemory_memorise
.rdata:0000000141681338	00000030	C	elements.Monstermodecard.countdownmemory_recall
.rdata:0000000141681380	0000001F	C	elements.Monstermodecard.reset
.rdata:0000000141681438	00000019	C	elements.Monstermodecard
.rdata:0000000141681580	00000024	C	elements.MonstercardEquipmentMemory
.rdata:00000001416815D0	00000028	C	elements.MonstercardEquipmentMemory.new
.rdata:0000000141681620	00000024	C	elements.MonstercardEquipmentMemory
.rdata:0000000141681C70	00000015	C	elements.Monstermode
.rdata:0000000141681CB8	0000001C	C	elements.Monstermode.newrun
.rdata:0000000141681CE0	0000002F	C	elements.Monstermode.prepareswitchfighterscard
.rdata:0000000141681D30	00000027	C	elements.Monstermode.clearoldequipment
.rdata:0000000141681D70	00000021	C	elements.Monstermode.startcombat
.rdata:0000000141681D98	00000028	C	elements.Monstermode.getplayerequiplist
.rdata:0000000141681EF0	00000020	C	elements.Monstermode.changeinto
.rdata:0000000141681F98	0000001F	C	elements.Monstermode.startturn
.rdata:0000000141681FB8	0000001D	C	elements.Monstermode.endturn
.rdata:0000000141681FD8	0000001F	C	elements.Monstermode.endcombat
.rdata:0000000141682008	00000022	C	elements.Monstermode.shufflecards
.rdata:0000000141682040	0000001F	C	elements.Monstermode.sortcards
.rdata:0000000141682070	0000002B	C	elements.Monstermode.createfightertemplate
.rdata:00000001416820B8	00000027	C	elements.Monstermode.createmonstercard
.rdata:00000001416820F8	00000026	C	elements.Monstermode.dealmonstercards
.rdata:0000000141682138	00000027	C	elements.Monstermode.fetchmonstercards
.rdata:0000000141682178	0000002C	C	elements.Monstermode.createpreviewequipment
.rdata:00000001416821C0	00000020	C	elements.Monstermode.removecard
.rdata:00000001416821F0	00000019	C	elements.Monstermode.add
.rdata:0000000141682210	00000028	C	elements.Monstermode.getmonstermodecard
.rdata:0000000141682250	00000022	C	elements.Monstermode.updatecardhp
.rdata:0000000141682288	0000002C	C	elements.Monstermode.memorisecardcountdowns
.rdata:00000001416822D0	0000002A	C	elements.Monstermode.recallcardcountdowns
.rdata:0000000141682318	00000024	C	elements.Monstermode.switchfighters
.rdata:0000000141682350	00000027	C	elements.Monstermode.selectioncontrols
.rdata:0000000141682390	0000001E	C	elements.Monstermode.activate
.rdata:00000001416823B0	00000023	C	elements.Monstermode.drawskillcard
.rdata:00000001416823E8	00000022	C	elements.Monstermode.haslastwords
.rdata:0000000141682420	00000023	C	elements.Monstermode.hasfirstwords
.rdata:00000001416824F0	00000015	C	elements.Monstermode
.rdata:0000000141683AA0	0000001B	C	elements.MonstermodePublic
.rdata:0000000141683AE0	0000002C	C	elements.MonstermodePublic.getjudgementlist
.rdata:0000000141684000	0000001B	C	elements.MonstermodePublic
.rdata:00000001416841E8	00000010	C	elements.Locked
.rdata:0000000141684220	00000019	C	elements.Locked.quickbox
.rdata:0000000141684250	0000001E	C	elements.Locked.showcondition
.rdata:0000000141684280	00000021	C	elements.Locked.getconditiontext
.rdata:00000001416842C0	00000021	C	elements.Locked.getchallengetext
.rdata:0000000141684300	00000027	C	elements.Locked.showchallengecondition
.rdata:0000000141684360	00000010	C	elements.Locked
.rdata:0000000141685710	00000017	C	elements.LevelUpReward
.rdata:0000000141685760	0000001B	C	elements.LevelUpReward.new
.rdata:0000000141685780	00000020	C	elements.LevelUpReward.toString
.rdata:00000001416857A0	0000001C	C	elements.LevelUpReward.draw
.rdata:00000001416857C0	0000001F	C	elements.LevelUpReward.dispose
.rdata:00000001416857E0	0000001C	C	elements.LevelUpReward.give
.rdata:00000001416858F0	00000017	C	elements.LevelUpReward
.rdata:0000000141685E20	0000001C	C	elements.LadyLuckJudgements
.rdata:0000000141685E80	00000020	C	elements.LadyLuckJudgements.new
.rdata:0000000141685EC0	0000001C	C	elements.LadyLuckJudgements
.rdata:00000001416864D0	00000017	C	elements.LadyLuckEnemy
.rdata:0000000141686520	0000001C	C	elements.LadyLuckEnemy.init
.rdata:0000000141686540	00000023	C	elements.LadyLuckEnemy.gettemplate
.rdata:0000000141686680	00000023	C	elements.LadyLuckEnemy.startcombat
.rdata:00000001416866A8	00000021	C	elements.LadyLuckEnemy.startturn
.rdata:00000001416866D0	0000001F	C	elements.LadyLuckEnemy.endturn
.rdata:00000001416866F0	0000002A	C	elements.LadyLuckEnemy.runstartturnscript
.rdata:0000000141686738	00000028	C	elements.LadyLuckEnemy.runendturnscript
.rdata:0000000141686968	0000002A	C	elements.LadyLuckEnemy.removeallequipment
.rdata:00000001416869B0	00000021	C	elements.LadyLuckEnemy.endcombat
.rdata:00000001416869D8	00000023	C	elements.LadyLuckEnemy.getnextturn
.rdata:0000000141686A10	00000034	C	elements.LadyLuckEnemy.sortjudgementsbymostspecific
.rdata:0000000141686A68	00000025	C	elements.LadyLuckEnemy.getuniquelist
.rdata:0000000141686AA0	00000032	C	elements.LadyLuckEnemy.getsecondelementuniquelist
.rdata:0000000141686AF8	00000029	C	elements.LadyLuckEnemy.getjudgementcards
.rdata:0000000141686B50	0000001E	C	elements.LadyLuckEnemy.update
.rdata:0000000141686B70	00000026	C	elements.LadyLuckEnemy.scrollup_intro
.rdata:0000000141686BA8	0000002D	C	elements.LadyLuckEnemy.scrollup_gamecomplete
.rdata:0000000141686BF0	0000002D	C	elements.LadyLuckEnemy.scrollup_previewmoves
.rdata:0000000141686C38	00000028	C	elements.LadyLuckEnemy.scrollup_endturn
.rdata:0000000141686C78	00000028	C	elements.LadyLuckEnemy.scrolldown_intro
.rdata:0000000141686CB8	0000002F	C	elements.LadyLuckEnemy.scrolldown_previewmoves
.rdata:0000000141686D00	00000025	C	elements.LadyLuckEnemy.preloadassets
.rdata:0000000141686F20	00000017	C	elements.LadyLuckEnemy
.rdata:0000000141687840	00000022	C	elements.JudgementCategoryMatches
.rdata:0000000141687890	00000026	C	elements.JudgementCategoryMatches.new
.rdata:00000001416878B8	00000028	C	elements.JudgementCategoryMatches.check
.rdata:00000001416878E0	0000002B	C	elements.JudgementCategoryMatches.toString
.rdata:0000000141687970	00000022	C	elements.JudgementCategoryMatches
.rdata:0000000141687AC0	00000017	C	elements.StringIntPair
.rdata:0000000141687AF0	0000001B	C	elements.StringIntPair.new
.rdata:0000000141687B18	00000017	C	elements.StringIntPair
.rdata:0000000141687E88	0000001A	C	elements.LadyLuckCommands
.rdata:0000000141687EE8	00000022	C	elements.LadyLuckCommands.disable
.rdata:0000000141687F10	00000021	C	elements.LadyLuckCommands.enable
.rdata:0000000141687F38	00000021	C	elements.LadyLuckCommands.create
.rdata:0000000141687F60	00000025	C	elements.LadyLuckCommands.animate_in
.rdata:0000000141687F98	00000026	C	elements.LadyLuckCommands.animate_out
.rdata:0000000141687FD0	00000026	C	elements.LadyLuckCommands.updaterules
.rdata:0000000141688008	0000001F	C	elements.LadyLuckCommands.draw
.rdata:0000000141688028	00000020	C	elements.LadyLuckCommands.check
.rdata:0000000141688048	00000025	C	elements.LadyLuckCommands.changerule
.rdata:0000000141688208	00000028	C	elements.LadyLuckCommands.changepenalty
.rdata:0000000141688240	00000022	C	elements.LadyLuckCommands.enforce
.rdata:0000000141688270	00000022	C	elements.LadyLuckCommands.dispose
.rdata:0000000141688F70	0000001A	C	elements.LadyLuckCommands
.rdata:00000001416891C0	00000013	C	elements.JinxApply
.rdata:0000000141689208	00000023	C	elements.JinxApply.countdownjinxes
.rdata:0000000141689240	00000021	C	elements.JinxApply.executejinxes
.rdata:0000000141689278	0000001E	C	elements.JinxApply.drawjinxes
.rdata:00000001416892A8	00000019	C	elements.JinxApply.reset
.rdata:00000001416895C0	00000013	C	elements.JinxApply
.rdata:00000001416897C8	0000000E	C	elements.Jinx
.rdata:0000000141689800	00000012	C	elements.Jinx.new
.rdata:0000000141689818	0000001A	C	elements.Jinx.createpanel
.rdata:0000000141689848	00000013	C	elements.Jinx.draw
.rdata:0000000141689860	00000016	C	elements.Jinx.execute
.rdata:0000000141689878	00000017	C	elements.Jinx.toString
.rdata:0000000141689890	00000015	C	elements.Jinx.remove
.rdata:0000000141689968	0000000E	C	elements.Jinx
.rdata:0000000141689F70	00000015	C	elements.JesterEnemy
.rdata:0000000141689FB8	0000001A	C	elements.JesterEnemy.init
.rdata:0000000141689FD8	00000021	C	elements.JesterEnemy.gettemplate
.rdata:000000014168A3F8	0000001F	C	elements.JesterEnemy.startturn
.rdata:000000014168A418	00000028	C	elements.JesterEnemy.removeallequipment
.rdata:000000014168A440	0000001F	C	elements.JesterEnemy.endcombat
.rdata:000000014168A460	00000021	C	elements.JesterEnemy.getnextturn
.rdata:000000014168A490	00000015	C	elements.JesterEnemy
.rdata:000000014168A978	00000017	C	elements.ItemContainer
.rdata:000000014168A9C8	0000001B	C	elements.ItemContainer.new
.rdata:000000014168A9E8	0000001D	C	elements.ItemContainer.empty
.rdata:000000014168AA08	00000027	C	elements.ItemContainer.removeequipment
.rdata:000000014168AA40	0000001F	C	elements.ItemContainer.getlist
.rdata:000000014168AA68	0000002C	C	elements.ItemContainer.getlistwithpositions
.rdata:000000014168AAB0	00000025	C	elements.ItemContainer.getrustvalues
.rdata:000000014168AAE8	00000020	C	elements.ItemContainer.slotfree
.rdata:000000014168AB18	00000021	C	elements.ItemContainer.slotfree2
.rdata:000000014168AB50	0000001B	C	elements.ItemContainer.add
.rdata:000000014168AB70	0000001C	C	elements.ItemContainer.add2
.rdata:000000014168AB98	00000026	C	elements.ItemContainer.createandplace
.rdata:000000014168ABD0	00000024	C	elements.ItemContainer.addandcreate
.rdata:000000014168AC08	0000001D	C	elements.ItemContainer.place
.rdata:000000014168AC30	0000001E	C	elements.ItemContainer.remove
.rdata:000000014168AC50	00000020	C	elements.ItemContainer.fitcheck
.rdata:000000014168AC80	0000001C	C	elements.ItemContainer.draw
.rdata:000000014168ACA0	0000001F	C	elements.ItemContainer.dispose
.rdata:000000014168ACC0	0000001F	C	elements.ItemContainer.getitem
.rdata:000000014168ACE8	00000020	C	elements.ItemContainer.getitem2
.rdata:000000014168AD18	00000021	C	elements.ItemContainer.padstring
.rdata:000000014168AD50	00000021	C	elements.ItemContainer.debugdraw
.rdata:000000014168AD88	0000002E	C	elements.ItemContainer.updatecontentsposition
.rdata:000000014168ADD0	00000024	C	elements.ItemContainer.get_selected
.rdata:000000014168AE08	00000024	C	elements.ItemContainer.set_selected
.rdata:000000014168B0A0	00000017	C	elements.ItemContainer
.rdata:000000014168B1C8	00000016	C	elements.ItemCategory
.rdata:000000014168B458	00000010	C	elements.Innate
.rdata:000000014168B490	00000014	C	elements.Innate.has
.rdata:000000014168B4A8	00000016	C	elements.Innate.check
.rdata:000000014168B4C0	00000015	C	elements.Innate.show
.rdata:000000014168B4D8	0000001B	C	elements.Innate.innatetext
.rdata:000000014168B508	0000001C	C	elements.Innate.description
.rdata:000000014168B938	00000010	C	elements.Innate
.rdata:000000014168BC00	00000017	C	elements.GraphNodeData
.rdata:000000014168BC50	0000001B	C	elements.GraphNodeData.new
.rdata:000000014168BC70	00000020	C	elements.GraphNodeData.toString
.rdata:000000014168BC90	00000028	C	elements.GraphNodeData.createfromstring
.rdata:000000014168BCD0	00000023	C	elements.GraphNodeData.createenemy
.rdata:000000014168BD08	00000022	C	elements.GraphNodeData.createitem
.rdata:000000014168BD40	00000023	C	elements.GraphNodeData.createtrade
.rdata:000000014168BD78	00000024	C	elements.GraphNodeData.createhealth
.rdata:000000014168BDB0	00000025	C	elements.GraphNodeData.createupgrade
.rdata:000000014168BDE8	00000026	C	elements.GraphNodeData.createcopyshop
.rdata:000000014168BE20	00000022	C	elements.GraphNodeData.createshop
.rdata:000000014168BE58	00000026	C	elements.GraphNodeData.createteammate
.rdata:000000014168BE98	00000017	C	elements.GraphNodeData
.rdata:000000014168C2F8	00000013	C	elements.GraphNode
.rdata:000000014168C340	00000017	C	elements.GraphNode.new
.rdata:000000014168C358	0000001A	C	elements.GraphNode.moveto
.rdata:000000014168C380	0000001D	C	elements.GraphNode.decompose
.rdata:000000014168C3A0	0000001B	C	elements.GraphNode.dispose
.rdata:000000014168C3C0	0000001A	C	elements.GraphNode.update
.rdata:000000014168C3E0	00000020	C	elements.GraphNode.drawprelayer
.rdata:000000014168C410	0000001F	C	elements.GraphNode.drawellipse
.rdata:000000014168C430	00000026	C	elements.GraphNode.drawfeaturegraphic
.rdata:000000014168C470	00000023	C	elements.GraphNode.drawdetailstext
.rdata:000000014168C4A8	0000001D	C	elements.GraphNode.drawdebug
.rdata:000000014168C4D8	0000001B	C	elements.GraphNode.overlap
.rdata:000000014168CA78	00000013	C	elements.GraphNode
.rdata:000000014168CBA0	00000010	C	elements.Gadget
.rdata:000000014168CD28	00000016	C	elements.GadgetPublic
.rdata:000000014168CD70	00000023	C	elements.GadgetPublic.changegadget
.rdata:000000014168CDA8	00000021	C	elements.GadgetPublic.givegadget
.rdata:000000014168CDE0	00000021	C	elements.GadgetPublic.reactivate
.rdata:000000014168CE68	00000016	C	elements.GadgetPublic
.rdata:000000014168DAC0	0000000F	C	elements.Floor
.rdata:000000014168DAE8	00000013	C	elements.Floor.new
.rdata:000000014168DB00	0000001B	C	elements.Floor.changestyle
.rdata:000000014168DB30	0000001D	C	elements.Floor.parsetemplate
.rdata:000000014168DB60	0000001E	C	elements.Floor.regenerategrid
.rdata:000000014168DB90	0000001C	C	elements.Floor.loadtemplate
.rdata:000000014168DBC0	0000001E	C	elements.Floor.autoaddenemies
.rdata:000000014168DC08	0000001A	C	elements.Floor.addenemies
.rdata:000000014168DC38	00000018	C	elements.Floor.additems
.rdata:000000014168DC60	0000001B	C	elements.Floor.setlocation
.rdata:000000014168DC90	0000001D	C	elements.Floor.addotherstuff
.rdata:000000014168DCC0	00000018	C	elements.Floor.generate
.rdata:000000014168DCD8	00000020	C	elements.Floor.templategenerate
.rdata:000000014168DD10	00000024	C	elements.Floor.applynodesubstitutes
.rdata:000000014168DD50	00000020	C	elements.Floor.applysubstitutes
.rdata:000000014168DD88	0000001A	C	elements.Floor.centergrid
.rdata:000000014168DDB8	00000018	C	elements.Floor.findnode
.rdata:000000014168DDD0	0000001F	C	elements.Floor.removeleafnodes
.rdata:000000014168DE00	00000016	C	elements.Floor.update
.rdata:000000014168DE18	0000001A	C	elements.Floor.playerstep
.rdata:000000014168DE48	00000018	C	elements.Floor.pathfind
.rdata:000000014168DE70	0000001D	C	elements.Floor.updateheatmap
.rdata:000000014168DEA0	0000001B	C	elements.Floor.heatmapfill
.rdata:000000014168DED0	00000021	C	elements.Floor.separateanimation
.rdata:000000014168DF10	0000001C	C	elements.Floor.activatenode
.rdata:000000014168DF40	0000001B	C	elements.Floor.debugrender
.rdata:000000014168DF70	0000001A	C	elements.Floor.precompose
.rdata:000000014168DFA0	00000017	C	elements.Floor.compose
.rdata:000000014168DFB8	00000019	C	elements.Floor.decompose
.rdata:000000014168DFD8	00000017	C	elements.Floor.connect
.rdata:000000014168DFF0	0000001E	C	elements.Floor.connectbyindex
.rdata:000000014168E020	00000017	C	elements.Floor.addnode
.rdata:000000014168E040	00000019	C	elements.Floor.clearnode
.rdata:000000014168E070	0000001E	C	elements.Floor.updatenodedata
.rdata:000000014168E0A0	00000018	C	elements.Floor.getsmith
.rdata:000000014168E0C8	00000017	C	elements.Floor.getshop
.rdata:000000014168E0E8	00000018	C	elements.Floor.gettrade
.rdata:000000014168E110	00000018	C	elements.Floor.toString
.rdata:000000014168E178	0000000F	C	elements.Floor
.rdata:0000000141691F30	00000011	C	elements.Fighter
.rdata:0000000141691F70	00000015	C	elements.Fighter.new
.rdata:0000000141691F88	0000001E	C	elements.Fighter.createplayer
.rdata:0000000141691FB8	0000001E	C	elements.Fighter.fixskillcard
.rdata:0000000141691FE8	00000021	C	elements.Fighter.createskillcard
.rdata:0000000141692020	00000022	C	elements.Fighter.replaceskillcard
.rdata:0000000141692060	0000001E	C	elements.Fighter.getskillcard
.rdata:0000000141692090	00000019	C	elements.Fighter.endturn
.rdata:00000001416920B0	00000029	C	elements.Fighter.scraptemporaryequipment
.rdata:00000001416920F8	00000025	C	elements.Fighter.reset_readynextturn
.rdata:0000000141692138	0000001F	C	elements.Fighter.prepequipment
.rdata:0000000141692168	0000001B	C	elements.Fighter.startturn
.rdata:0000000141692188	0000002B	C	elements.Fighter.runbeforestartturnscripts
.rdata:00000001416921D8	00000027	C	elements.Fighter.runonstartturnscripts
.rdata:0000000141692218	00000021	C	elements.Fighter.createsparedice
.rdata:0000000141692250	00000026	C	elements.Fighter.applyequipmentcurses
.rdata:0000000141692290	00000026	C	elements.Fighter.allocatereserveddice
.rdata:00000001416922D0	00000026	C	elements.Fighter.getequipmentposition
.rdata:0000000141692310	00000025	C	elements.Fighter.destroyallequipment
.rdata:0000000141692350	00000025	C	elements.Fighter.getcurrentequipment
.rdata:0000000141692390	00000020	C	elements.Fighter.fetchequipment
.rdata:00000001416923C0	0000001A	C	elements.Fighter.rolldice
.rdata:00000001416923F0	00000019	C	elements.Fighter.addjinx
.rdata:0000000141692418	0000001A	C	elements.Fighter.isjinxed
.rdata:0000000141692448	0000001B	C	elements.Fighter.addstatus
.rdata:0000000141692510	0000001E	C	elements.Fighter.hasequipment
.rdata:0000000141692540	0000001B	C	elements.Fighter.hadstatus
.rdata:0000000141692570	0000001B	C	elements.Fighter.hasstatus
.rdata:00000001416925A0	0000001B	C	elements.Fighter.getstatus
.rdata:00000001416925D0	00000020	C	elements.Fighter.onstatusremove
.rdata:0000000141692600	0000001E	C	elements.Fighter.removestatus
.rdata:0000000141692630	00000021	C	elements.Fighter.decrementstatus
.rdata:0000000141692668	00000020	C	elements.Fighter.screenposition
.rdata:0000000141692698	0000001F	C	elements.Fighter.initvariables
.rdata:00000001416926C8	00000023	C	elements.Fighter.lastwordscomplete
.rdata:0000000141692708	00000024	C	elements.Fighter.firstwordscomplete
.rdata:0000000141692748	00000027	C	elements.Fighter.showfirstandlastwords
.rdata:0000000141692788	00000022	C	elements.Fighter.cleanuplastwords
.rdata:00000001416927C8	00000021	C	elements.Fighter.showcombatstats
.rdata:0000000141692800	00000023	C	elements.Fighter.showstatusbaricon
.rdata:0000000141692840	0000002B	C	elements.Fighter.monstermode_showstatusbar
.rdata:0000000141692890	00000024	C	elements.Fighter.showstatusbarstats
.rdata:00000001416928D0	00000027	C	elements.Fighter.getcountdownequipment
.rdata:0000000141692910	00000018	C	elements.Fighter.update
.rdata:0000000141692928	0000001E	C	elements.Fighter.textparticle
.rdata:0000000141692958	00000020	C	elements.Fighter.hplossparticle
.rdata:0000000141692988	00000020	C	elements.Fighter.symbolparticle
.rdata:00000001416929B8	0000001A	C	elements.Fighter.reducehp
.rdata:00000001416929E8	00000016	C	elements.Fighter.tint
.rdata:0000000141692A08	00000019	C	elements.Fighter.dispose
.rdata:0000000141692A28	00000019	C	elements.Fighter.cleanup
.rdata:0000000141692A48	0000001D	C	elements.Fighter.removestats
.rdata:0000000141692A78	00000016	C	elements.Fighter.show
.rdata:0000000141692A90	00000020	C	elements.Fighter.drawlimitbreak
.rdata:0000000141692AC0	00000020	C	elements.Fighter.hidelimitbreak
.rdata:0000000141692AF0	0000001C	C	elements.Fighter.limitready
.rdata:0000000141692B20	00000022	C	elements.Fighter.changelimitbreak
.rdata:0000000141692B60	0000001F	C	elements.Fighter.remainingdice
.rdata:0000000141692B90	0000001A	C	elements.Fighter.resetvar
.rdata:0000000141692BC0	00000018	C	elements.Fighter.getvar
.rdata:0000000141692BE0	00000018	C	elements.Fighter.setvar
.rdata:0000000141692C00	0000001C	C	elements.Fighter.endturnnow
.rdata:0000000141692C30	0000001B	C	elements.Fighter.spaceleft
.rdata:0000000141692C60	0000001E	C	elements.Fighter.set_hassuper
.rdata:0000000141692C90	00000022	C	elements.Fighter.resetturnhistory
.rdata:0000000141692CD0	00000021	C	elements.Fighter.saveturnhistory
.rdata:0000000141693A50	00000011	C	elements.Fighter
.rdata:00000001416951D0	00000015	C	elements.TurnHistory
.rdata:0000000141695200	00000019	C	elements.TurnHistory.new
.rdata:0000000141695220	0000001D	C	elements.TurnHistory.dispose
.rdata:0000000141695240	0000001D	C	elements.TurnHistory.restore
.rdata:0000000141695280	00000015	C	elements.TurnHistory
.rdata:0000000141695508	0000001E	C	elements.ExtendedTextureAtlas
.rdata:0000000141695570	00000022	C	elements.ExtendedTextureAtlas.new
.rdata:0000000141695598	00000026	C	elements.ExtendedTextureAtlas.dispose
.rdata:00000001416955C0	00000028	C	elements.ExtendedTextureAtlas.hasOffset
.rdata:00000001416955F8	00000028	C	elements.ExtendedTextureAtlas.getOffset
.rdata:0000000141695620	00000028	C	elements.ExtendedTextureAtlas.setOffset
.rdata:0000000141695658	00000022	C	elements.ExtendedTextureAtlas.has
.rdata:00000001416956F8	0000001E	C	elements.ExtendedTextureAtlas
.rdata:0000000141696310	00000019	C	elements.EquipmentLayout
.rdata:0000000141696EE0	00000013	C	elements.Equipment
.rdata:0000000141696F10	00000017	C	elements.Equipment.new
.rdata:0000000141696F28	0000001A	C	elements.Equipment.create
.rdata:0000000141696F48	00000021	C	elements.Equipment.makeskillcard
.rdata:0000000141696F80	0000001A	C	elements.Equipment.resize
.rdata:0000000141696FA0	00000021	C	elements.Equipment.initvariables
.rdata:0000000141696FC8	00000026	C	elements.Equipment.positionshockslots
.rdata:0000000141697008	00000020	C	elements.Equipment.arrangeslots
.rdata:0000000141697038	00000020	C	elements.Equipment.changecolour
.rdata:0000000141697068	0000001E	C	elements.Equipment.resetslots
.rdata:0000000141697098	0000001F	C	elements.Equipment.changeslots
.rdata:00000001416970C8	0000001C	C	elements.Equipment.getslots
.rdata:00000001416970F8	0000001C	C	elements.Equipment.addslots
.rdata:0000000141697128	0000001D	C	elements.Equipment.slotcheck
.rdata:0000000141697158	00000037	C	elements.Equipment.deleteme_oldassigndicetoshockedslot
.rdata:00000001416971B8	0000002B	C	elements.Equipment.assigndicetoshockedslot
.rdata:0000000141697200	0000001E	C	elements.Equipment.assigndice
.rdata:0000000141697230	0000001F	C	elements.Equipment.destroydice
.rdata:0000000141697260	0000001E	C	elements.Equipment.removedice
.rdata:0000000141697290	00000023	C	elements.Equipment.showrestriction
.rdata:00000001416972C8	0000001D	C	elements.Equipment.downgrade
.rdata:00000001416972F8	0000001C	C	elements.Equipment.unweaken
.rdata:0000000141697328	00000018	C	elements.Equipment.copy
.rdata:0000000141697340	0000001A	C	elements.Equipment.update
.rdata:0000000141697360	00000025	C	elements.Equipment.drawwithoutskills
.rdata:00000001416973A0	00000018	C	elements.Equipment.draw
.rdata:00000001416973B8	0000001A	C	elements.Equipment.render
.rdata:00000001416973D8	0000001D	C	elements.Equipment.shakeslot
.rdata:0000000141697408	0000002E	C	elements.Equipment.updatereuseabledescription
.rdata:0000000141697458	00000026	C	elements.Equipment.clearalternatelock
.rdata:0000000141697498	00000024	C	elements.Equipment.hideassigneddice
.rdata:00000001416974D8	00000024	C	elements.Equipment.showassigneddice
.rdata:0000000141697518	00000025	C	elements.Equipment.doequipmentaction
.rdata:0000000141697558	00000026	C	elements.Equipment.playcharactervoice
.rdata:0000000141697598	00000026	C	elements.Equipment.getnumassigneddice
.rdata:00000001416975D8	0000002D	C	elements.Equipment.getnumassignedshockeddice
.rdata:0000000141697628	0000001C	C	elements.Equipment.getpower
.rdata:0000000141697658	0000001B	C	elements.Equipment.animate
.rdata:0000000141697678	0000001B	C	elements.Equipment.dispose
.rdata:0000000141697698	0000002B	C	elements.Equipment.clampremainingcountdown
.rdata:00000001416976E0	00000020	C	elements.Equipment.get_maxslots
.rdata:0000000141697710	00000023	C	elements.Equipment.resetfornewturn
.rdata:0000000141697748	0000001C	C	elements.Equipment.resetvar
.rdata:0000000141697768	0000001A	C	elements.Equipment.getvar
.rdata:0000000141697788	0000001A	C	elements.Equipment.setvar
.rdata:00000001416977A8	00000022	C	elements.Equipment.setmonstercard
.rdata:00000001416977E0	00000029	C	elements.Equipment.resetskillsfornewturn
.rdata:0000000141697828	00000024	C	elements.Equipment.resetaftercombat
.rdata:0000000141697868	00000021	C	elements.Equipment.get_slotsfree
.rdata:00000001416978A0	00000028	C	elements.Equipment.get_shockedslotsfree
.rdata:0000000141697C10	00000013	C	elements.Equipment
.rdata:000000014169ABF0	00000016	C	elements.DungeonPlace
.rdata:000000014169AD80	00000016	C	elements.DungeonStyle
.rdata:000000014169AFA0	0000001A	C	elements.DungeonBlockType
.rdata:000000014169B400	00000016	C	elements.DungeonBlock
.rdata:000000014169B450	0000001A	C	elements.DungeonBlock.new
.rdata:000000014169B470	0000001F	C	elements.DungeonBlock.changeto
.rdata:000000014169B4A0	0000001F	C	elements.DungeonBlock.toString
.rdata:000000014169B4C0	00000026	C	elements.DungeonBlock.get_collideable
.rdata:000000014169B4F8	00000026	C	elements.DungeonBlock.set_collideable
.rdata:000000014169B5E8	00000016	C	elements.DungeonBlock
.rdata:000000014169BEF8	00000015	C	elements.DiceyScript
.rdata:000000014169BF40	00000019	C	elements.DiceyScript.new
.rdata:000000014169BF60	00000019	C	elements.DiceyScript.set
.rdata:000000014169BF80	0000001D	C	elements.DiceyScript.execute
.rdata:000000014169BFA0	0000001B	C	elements.DiceyScript.bonus
.rdata:000000014169BFC8	0000001B	C	elements.DiceyScript.drain
.rdata:000000014169BFF0	0000001C	C	elements.DiceyScript.attack
.rdata:000000014169C018	00000022	C	elements.DiceyScript.pierceattack
.rdata:000000014169C050	00000020	C	elements.DiceyScript.attackself
.rdata:000000014169C080	00000026	C	elements.DiceyScript.pierceattackself
.rdata:000000014169C0C0	00000022	C	elements.DiceyScript.internalheal
.rdata:000000014169C0F8	00000024	C	elements.DiceyScript.internalattack
.rdata:000000014169C130	0000001E	C	elements.DiceyScript.givedice
.rdata:000000014169C150	00000029	C	elements.DiceyScript.boostjinxcountdowns
.rdata:000000014169C198	0000001A	C	elements.DiceyScript.jinx
.rdata:000000014169C1B8	0000001F	C	elements.DiceyScript.donothing
.rdata:000000014169C1E8	0000001A	C	elements.DiceyScript.rand
.rdata:000000014169C208	0000001D	C	elements.DiceyScript.shuffle
.rdata:000000014169C230	0000001D	C	elements.DiceyScript.getjinx
.rdata:000000014169C258	0000001F	C	elements.DiceyScript.getstatus
.rdata:000000014169C278	00000023	C	elements.DiceyScript.getstatusself
.rdata:000000014169C2B0	00000027	C	elements.DiceyScript.internalgetstatus
.rdata:000000014169C2F0	0000002B	C	elements.DiceyScript.internalstatusinflict
.rdata:000000014169C338	0000001D	C	elements.DiceyScript.inflict
.rdata:000000014169C360	00000021	C	elements.DiceyScript.inflictself
.rdata:000000014169C398	0000002A	C	elements.DiceyScript.internalremovestatus
.rdata:000000014169C3E0	00000022	C	elements.DiceyScript.removestatus
.rdata:000000014169C408	00000026	C	elements.DiceyScript.removestatusself
.rdata:000000014169C448	00000025	C	elements.DiceyScript.removeequipment
.rdata:000000014169C470	00000028	C	elements.DiceyScript.giveenemyequipment
.rdata:000000014169C4B0	00000023	C	elements.DiceyScript.giveequipment
.rdata:000000014169C4E8	00000023	C	elements.DiceyScript.replacemewith
.rdata:000000014169C520	00000030	C	elements.DiceyScript.internaltransformequipment
.rdata:000000014169C570	0000002C	C	elements.DiceyScript.getparticularequipment
.rdata:000000014169C5B8	00000022	C	elements.DiceyScript.getequipment
.rdata:000000014169C5F0	00000025	C	elements.DiceyScript.boostcountdowns
.rdata:000000014169C628	0000001F	C	elements.DiceyScript.boomerang
.rdata:000000014169C658	0000001B	C	elements.DiceyScript.split
.rdata:000000014169C678	0000001C	C	elements.DiceyScript.match3
.rdata:000000014169C6A0	00000023	C	elements.DiceyScript.addjestercard
.rdata:000000014169C6D8	00000025	C	elements.DiceyScript.jestersnapstyle
.rdata:000000014169C710	00000022	C	elements.DiceyScript.robotjackpot
.rdata:000000014169C748	0000001F	C	elements.DiceyScript.robotroll
.rdata:000000014169C778	00000028	C	elements.DiceyScript.adjustrobotcounter
.rdata:000000014169C7B8	0000001A	C	elements.DiceyScript.flee
.rdata:000000014169C7E0	00000023	C	elements.DiceyScript.beartransform
.rdata:000000014169C818	0000001E	C	elements.DiceyScript.undoturn
.rdata:000000014169C850	00000015	C	elements.DiceyScript
.rdata:000000014169D488	00000016	C	elements.DiceSlotType
.rdata:000000014169DB20	0000000E	C	elements.Dice
.rdata:000000014169DB48	00000012	C	elements.Dice.new
.rdata:000000014169DB60	00000015	C	elements.Dice.remove
.rdata:000000014169DB78	00000016	C	elements.Dice.dispose
.rdata:000000014169DB90	00000017	C	elements.Dice.copyfrom
.rdata:000000014169DBB8	00000020	C	elements.Dice.animateremovedice
.rdata:000000014169DBF0	00000019	C	elements.Dice.removedice
.rdata:000000014169DC10	0000001C	C	elements.Dice.animatereroll
.rdata:000000014169DC40	00000016	C	elements.Dice.intween
.rdata:000000014169DC58	00000018	C	elements.Dice.available
.rdata:000000014169DC70	00000013	C	elements.Dice.roll
.rdata:000000014169DC90	00000013	C	elements.Dice.kick
.rdata:000000014169DCB0	00000015	C	elements.Dice.update
.rdata:000000014169DCC8	00000013	C	elements.Dice.draw
.rdata:000000014169DCE0	00000019	C	elements.Dice.consumenow
.rdata:000000014169DD10	0000001A	C	elements.Dice.consumedice
.rdata:000000014169DD40	0000001E	C	elements.Dice.fastconsumedice
.rdata:000000014169DD70	00000022	C	elements.Dice.veryfastconsumedice
.rdata:000000014169DDB0	00000016	C	elements.Dice.animate
.rdata:000000014169DDC8	00000016	C	elements.Dice.burnnow
.rdata:000000014169DDE8	00000018	C	elements.Dice.get_value
.rdata:000000014169DE10	00000017	C	elements.Dice.toString
.rdata:000000014169DE28	00000023	C	elements.Dice.set_showoverlayimage
.rdata:000000014169E9C8	0000000E	C	elements.Dice
.rdata:000000014169F180	0000000E	C	elements.Deck
.rdata:000000014169F1A8	00000014	C	elements.Deck.reset
.rdata:000000014169F1C0	00000024	C	elements.Deck.updatejestersnapstyle
.rdata:000000014169F200	00000019	C	elements.Deck.getxoffset
.rdata:000000014169F230	00000018	C	elements.Deck.newcombat
.rdata:000000014169F258	0000001B	C	elements.Deck.addtodiscard
.rdata:000000014169F288	00000019	C	elements.Deck.removecard
.rdata:000000014169F2A8	00000019	C	elements.Deck.createcard
.rdata:000000014169F2D8	0000001D	C	elements.Deck.shufflediscard
.rdata:000000014169F308	0000001A	C	elements.Deck.shuffledraw
.rdata:000000014169F338	0000001E	C	elements.Deck.discardallcards
.rdata:000000014169F368	00000020	C	elements.Deck.movediscardtodraw
.rdata:000000014169F3A0	00000028	C	elements.Deck.nextdrawncardisfinalecard
.rdata:000000014169F3E8	00000017	C	elements.Deck.drawcard
.rdata:000000014169F410	00000020	C	elements.Deck.getactiveplaypile
.rdata:000000014169F448	0000001A	C	elements.Deck.remakelists
.rdata:000000014169F478	0000001A	C	elements.Deck.unweakenall
.rdata:000000014169F4A8	00000026	C	elements.Deck.resetallcardsfornewturn
.rdata:000000014169F4E8	00000024	C	elements.Deck.resetskillsfornewturn
.rdata:000000014169F510	0000001F	C	elements.Deck.resetaftercombat
.rdata:000000014169F530	0000001D	C	elements.Deck.createplaypile
.rdata:000000014169F560	00000020	C	elements.Deck.rearrangeplaypile
.rdata:000000014169F598	00000016	C	elements.Deck.endturn
.rdata:000000014169F5B0	00000018	C	elements.Deck.endcombat
.rdata:000000014169F5C8	0000001E	C	elements.Deck.resetfornewturn
.rdata:000000014169F5E8	0000001D	C	elements.Deck.remainingcards
.rdata:000000014169F618	00000015	C	elements.Deck.nextup
.rdata:000000014169F638	0000001C	C	elements.Deck.showcardslots
.rdata:000000014169F668	0000001E	C	elements.Deck.presssnapbutton
.rdata:000000014169F698	0000001C	C	elements.Deck.punchlinecard
.rdata:000000014169F6C8	0000001A	C	elements.Deck.discardhand
.rdata:000000014169F6F8	00000015	C	elements.Deck.match3
.rdata:000000014169F710	00000015	C	elements.Deck.match2
.rdata:000000014169F730	0000001B	C	elements.Deck.copynextcard
.rdata:000000014169F760	0000001C	C	elements.Deck.matchingcards
.rdata:000000014169F790	0000001F	C	elements.Deck.getmatchingcards
.rdata:00000001416A0318	0000000E	C	elements.Deck
.rdata:00000001416A05E0	00000014	C	elements.DeckPublic
.rdata:00000001416A0610	00000020	C	elements.DeckPublic.discardhand
.rdata:00000001416A0630	00000023	C	elements.DeckPublic.copyrandomcard
.rdata:00000001416A0668	00000021	C	elements.DeckPublic.copynextcard
.rdata:00000001416A0690	0000001C	C	elements.DeckPublic.getcard
.rdata:00000001416A06B8	0000001C	C	elements.DeckPublic.advance
.rdata:00000001416A06D8	00000020	C	elements.DeckPublic.sethandsize
.rdata:00000001416A0708	00000020	C	elements.DeckPublic.gethandsize
.rdata:00000001416A0738	0000001D	C	elements.DeckPublic.getcards
.rdata:00000001416A0768	00000020	C	elements.DeckPublic.getcardlist
.rdata:00000001416A09B0	00000014	C	elements.DeckPublic
.rdata:00000001416A0AF0	0000000E	C	elements.Cost
.rdata:00000001416A0B28	00000012	C	elements.Cost.new
.rdata:00000001416A0B50	0000000E	C	elements.Cost
.rdata:00000001416A0EB8	00000017	C	elements.CombatCommand
.rdata:00000001416A0F08	0000001B	C	elements.CombatCommand.new
.rdata:00000001416A0F28	0000001F	C	elements.CombatCommand.execute
.rdata:00000001416A0F48	00000020	C	elements.CombatCommand.toString
.rdata:00000001416A2050	00000017	C	elements.CombatCommand
.rdata:00000001416A2718	00000015	C	elements.Collectible
.rdata:00000001416A2760	00000019	C	elements.Collectible.new
.rdata:00000001416A2780	0000001D	C	elements.Collectible.dispose
.rdata:00000001416A27A0	0000001E	C	elements.Collectible.snapback
.rdata:00000001416A27D0	00000024	C	elements.Collectible.fixwidthheight
.rdata:00000001416A2808	0000001A	C	elements.Collectible.draw
.rdata:00000001416A2828	0000001C	C	elements.Collectible.redraw
.rdata:00000001416A2850	00000024	C	elements.Collectible.redrawselected
.rdata:00000001416A2888	0000001F	C	elements.Collectible.cachename
.rdata:00000001416A28B8	00000023	C	elements.Collectible.get_equipment
.rdata:00000001416A28F0	00000023	C	elements.Collectible.set_equipment
.rdata:00000001416A2980	00000015	C	elements.Collectible
.rdata:00000001416A2D78	0000000E	C	elements.Card
.rdata:00000001416A2DB0	00000012	C	elements.Card.new
.rdata:00000001416A2DC8	00000015	C	elements.Card.delete
.rdata:00000001416A2DE0	00000016	C	elements.Card.dispose
.rdata:00000001416A2DF8	00000017	C	elements.Card.changeto
.rdata:00000001416A2E10	00000015	C	elements.Card.revert
.rdata:00000001416A2FA8	0000000E	C	elements.Card
.rdata:00000001416A3298	00000013	C	elements.BattleVFX
.rdata:00000001416A32E0	00000017	C	elements.BattleVFX.new
.rdata:00000001416A32F8	0000001A	C	elements.BattleVFX.update
.rdata:00000001416A3318	00000018	C	elements.BattleVFX.draw
.rdata:00000001416A3330	0000001F	C	elements.BattleVFX.issupported
.rdata:00000001416A3360	00000018	C	elements.BattleVFX.play
.rdata:00000001416A3378	0000001D	C	elements.BattleVFX.isplaying
.rdata:00000001416A3398	0000001B	C	elements.BattleVFX.dispose
.rdata:00000001416A33B8	0000001A	C	elements.BattleVFX.remove
.rdata:00000001416A33D8	00000018	C	elements.BattleVFX.boot
.rdata:00000001416A3590	00000013	C	elements.BattleVFX
.rdata:00000001416A3AF8	00000013	C	elements.Animation
.rdata:00000001416A3B40	00000017	C	elements.Animation.new
.rdata:00000001416A3B58	0000001F	C	elements.Animation.applytodice
.rdata:00000001416A3B88	00000024	C	elements.Animation.applytoequipment
.rdata:00000001416A3BC8	0000001E	C	elements.Animation.addcommand
.rdata:00000001416A3BE8	0000001C	C	elements.Animation.adddelay
.rdata:00000001416A3C08	00000019	C	elements.Animation.start
.rdata:00000001416A3C28	0000001A	C	elements.Animation.update
.rdata:00000001416A3C48	0000001E	C	elements.Animation.runcommand
.rdata:00000001416A4298	00000013	C	elements.Animation

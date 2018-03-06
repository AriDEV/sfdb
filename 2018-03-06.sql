-- Shado-Pan Wallwatcher (Creature Equipment Template)
DELETE FROM creature_equip_template WHERE entry = 64263;
INSERT INTO creature_equip_template (entry, id, itementry1, itementry2, itementry3) VALUES
(64263, 3, 12403, 0, 0), -- 64263
(64263, 2, 81358, 0, 0), -- 64263
(64263, 1, 6680, 0, 0); -- 64263

-- Shado-Pan Wallwatcher (Model Info)
DELETE FROM creature_model_info WHERE DisplayID IN(41793, 41794, 41795, 41796);
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender) VALUES
(41793, 0.347222, 1.5, 0, 0),
(41794, 0.3645831, 1.575, 0, 0),
(41795, 0.3819442, 1.65, 0, 0),
(41796, 0.3645831, 1.575, 0, 0);

-- Shado-Pan Wallwatcher (Creature Template Addon)
DELETE FROM creature_template_addon WHERE entry=64263;
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, auras) VALUES
(64263, 0, 0, 0, 1, 0, '99203');

-- Gao-Ran Blackguard (Creature Equipment Template)
DELETE FROM creature_equip_template WHERE entry IN (61017,61082,61083);
INSERT INTO creature_equip_template (entry, id, itementry1, itementry2, itementry3) VALUES
(61017, 1, 80123, 0, 0), -- 61017
(61017, 2, 12937, 0, 0), -- 61017
(61082, 1, 80123, 0, 0), -- 61082
(61082, 2, 29648, 0, 0), -- 61082
(61082, 3, 14878, 0, 0), -- 61082
(61083, 1, 80283, 77414, 0); -- 61083

-- Supplies Kodo (Npc Vendor)
DELETE FROM npc_vendor WHERE entry=58172;
INSERT INTO npc_vendor (entry, slot, item, maxcount, ExtendedCost, type) VALUES
(58172, 5, 74636, 0, 0, 1), -- 74636
(58172, 4, 81414, 0, 0, 1), -- 81414
(58172, 3, 81406, 0, 0, 1), -- 81406
(58172, 2, 81412, 0, 0, 1), -- 81412
(58172, 1, 81404, 0, 0, 1); -- 81404

-- Supplies Kodo (Gossip Menu)
DELETE FROM `gossip_menu` WHERE entry=10181;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(10181, 14126); -- 58172

-- Supplies Kodo (Gossip Menu Option)
DELETE FROM `gossip_menu_option` WHERE menu_id=10181;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, option_id, npc_option_npcflag) VALUES
(10181, 0, 1, 'I want to browse your goods.', 3, 128);

-- Supplies Kodo (Creature Template)
UPDATE creature_template SET gossip_menu_id=10181 WHERE entry=58172;

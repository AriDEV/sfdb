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

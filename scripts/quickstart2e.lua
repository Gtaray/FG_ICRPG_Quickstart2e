-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

-- These two lines will add a stat to the system and define it as a type of effort
-- This is all that's required to enable the system to apply correct bonuses from loot and effects
function onInit()
    -- param 1: keyname for the stat (lowercase by convention)
    -- param 2: long name that's used when parsing/displaying
    -- param 3: shortname that's used when handling effects/loot
    -- param 4: location of the stat in a campaign's DB.xml
    DataCommon.addStat("gun", "GUN", "GUN", "effort.gun");
    -- param 1: die used for this effort type
    -- param 2: the keyname that this stat uses (defined above)
    DataCommon.overwriteEffortType("d8", "gun");
    DataCommon.addEffortType("d10", "magic");
end
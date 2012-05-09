# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120509051732) do

  create_table "agtAgentTypes", :id => false, :force => true do |t|
    t.integer "agentTypeID"
    t.string  "agentType",   :limit => 50
  end

  create_table "agtAgents", :id => false, :force => true do |t|
    t.integer "agentID"
    t.integer "divisionID"
    t.integer "corporationID"
    t.integer "locationID"
    t.integer "level"
    t.integer "quality"
    t.integer "agentTypeID"
    t.boolean "isLocator"
  end

  create_table "agtResearchAgents", :id => false, :force => true do |t|
    t.integer "agentID", :null => false
    t.integer "typeID",  :null => false
  end

  create_table "chrAncestries", :id => false, :force => true do |t|
    t.integer "ancestryID"
    t.string  "ancestryName",     :limit => 100
    t.integer "bloodlineID"
    t.string  "description",      :limit => 1000
    t.integer "perception"
    t.integer "willpower"
    t.integer "charisma"
    t.integer "memory"
    t.integer "intelligence"
    t.integer "iconID"
    t.string  "shortDescription", :limit => 500
  end

  create_table "chrAttributes", :id => false, :force => true do |t|
    t.integer "attributeID"
    t.string  "attributeName",    :limit => 100
    t.string  "description",      :limit => 1000
    t.integer "iconID"
    t.string  "shortDescription", :limit => 500
    t.string  "notes",            :limit => 500
  end

  create_table "chrBloodlines", :id => false, :force => true do |t|
    t.integer "bloodlineID"
    t.string  "bloodlineName",          :limit => 100
    t.integer "raceID"
    t.string  "description",            :limit => 1000
    t.string  "maleDescription",        :limit => 1000
    t.string  "femaleDescription",      :limit => 1000
    t.integer "shipTypeID"
    t.integer "corporationID"
    t.integer "perception"
    t.integer "willpower"
    t.integer "charisma"
    t.integer "memory"
    t.integer "intelligence"
    t.integer "iconID"
    t.string  "shortDescription",       :limit => 500
    t.string  "shortMaleDescription",   :limit => 500
    t.string  "shortFemaleDescription", :limit => 500
  end

  create_table "chrFactions", :id => false, :force => true do |t|
    t.integer "factionID"
    t.string  "factionName",          :limit => 100
    t.string  "description",          :limit => 1000
    t.integer "raceIDs"
    t.integer "solarSystemID"
    t.integer "corporationID"
    t.float   "sizeFactor"
    t.integer "stationCount"
    t.integer "stationSystemCount"
    t.integer "militiaCorporationID"
    t.integer "iconID"
  end

  create_table "chrRaces", :id => false, :force => true do |t|
    t.integer "raceID"
    t.string  "raceName",         :limit => 100
    t.string  "description",      :limit => 1000
    t.integer "iconID"
    t.string  "shortDescription", :limit => 500
  end

  create_table "crpActivities", :id => false, :force => true do |t|
    t.integer "activityID"
    t.string  "activityName", :limit => 100
    t.string  "description",  :limit => 1000
  end

  create_table "crpNPCCorporationDivisions", :id => false, :force => true do |t|
    t.integer "corporationID", :null => false
    t.integer "divisionID",    :null => false
    t.integer "size"
  end

  create_table "crpNPCCorporationResearchFields", :id => false, :force => true do |t|
    t.integer "skillID",       :null => false
    t.integer "corporationID", :null => false
  end

  create_table "crpNPCCorporationTrades", :id => false, :force => true do |t|
    t.integer "corporationID", :null => false
    t.integer "typeID",        :null => false
  end

  create_table "crpNPCCorporations", :id => false, :force => true do |t|
    t.integer "corporationID"
    t.integer "size"
    t.integer "extent"
    t.integer "solarSystemID"
    t.integer "investorID1"
    t.integer "investorShares1"
    t.integer "investorID2"
    t.integer "investorShares2"
    t.integer "investorID3"
    t.integer "investorShares3"
    t.integer "investorID4"
    t.integer "investorShares4"
    t.integer "friendID"
    t.integer "enemyID"
    t.integer "publicShares"
    t.integer "initialPrice"
    t.float   "minSecurity"
    t.boolean "scattered"
    t.integer "fringe"
    t.integer "corridor"
    t.integer "hub"
    t.integer "border"
    t.integer "factionID"
    t.float   "sizeFactor"
    t.integer "stationCount"
    t.integer "stationSystemCount"
    t.string  "description",        :limit => 4000
    t.integer "iconID"
  end

  create_table "crpNPCDivisions", :id => false, :force => true do |t|
    t.integer "divisionID"
    t.string  "divisionName", :limit => 100
    t.string  "description",  :limit => 1000
    t.string  "leaderType",   :limit => 100
  end

  create_table "crtCategories", :id => false, :force => true do |t|
    t.integer "categoryID"
    t.string  "description",  :limit => 500
    t.string  "categoryName", :limit => 256
  end

  create_table "crtCertificates", :id => false, :force => true do |t|
    t.integer "certificateID"
    t.integer "categoryID"
    t.integer "classID"
    t.integer "grade"
    t.integer "corpID"
    t.integer "iconID"
    t.string  "description",   :limit => 500
  end

  create_table "crtClasses", :id => false, :force => true do |t|
    t.integer "classID"
    t.string  "description", :limit => 500
    t.string  "className",   :limit => 256
  end

  create_table "crtRecommendations", :id => false, :force => true do |t|
    t.integer "recommendationID",    :null => false
    t.integer "shipTypeID"
    t.integer "certificateID"
    t.integer "recommendationLevel", :null => false
  end

  create_table "crtRelationships", :id => false, :force => true do |t|
    t.integer "relationshipID"
    t.integer "parentID"
    t.integer "parentTypeID"
    t.integer "parentLevel"
    t.integer "childID"
  end

  create_table "dgmAttributeCategories", :id => false, :force => true do |t|
    t.integer "categoryID"
    t.string  "categoryName",        :limit => 50
    t.string  "categoryDescription", :limit => 200
  end

  create_table "dgmAttributeTypes", :id => false, :force => true do |t|
    t.integer "attributeID"
    t.string  "attributeName", :limit => 100
    t.string  "description"
    t.integer "iconID"
    t.float   "defaultValue"
    t.boolean "published"
    t.string  "displayName",   :limit => 100
    t.integer "unitID"
    t.boolean "stackable"
    t.boolean "highIsGood"
    t.integer "categoryID"
  end

  create_table "dgmEffects", :id => false, :force => true do |t|
    t.integer "effectID"
    t.string  "effectName",                     :limit => 400
    t.integer "effectCategory"
    t.integer "preExpression"
    t.integer "postExpression"
    t.string  "description",                    :limit => 1000
    t.string  "guid",                           :limit => 60
    t.integer "iconID"
    t.boolean "isOffensive"
    t.boolean "isAssistance"
    t.integer "durationAttributeID"
    t.integer "trackingSpeedAttributeID"
    t.integer "dischargeAttributeID"
    t.integer "rangeAttributeID"
    t.integer "falloffAttributeID"
    t.boolean "disallowAutoRepeat"
    t.boolean "published"
    t.string  "displayName",                    :limit => 100
    t.boolean "isWarpSafe"
    t.boolean "rangeChance"
    t.boolean "electronicChance"
    t.boolean "propulsionChance"
    t.integer "distribution"
    t.string  "sfxName",                        :limit => 20
    t.integer "npcUsageChanceAttributeID"
    t.integer "npcActivationChanceAttributeID"
    t.integer "fittingUsageChanceAttributeID"
  end

  create_table "dgmTypeAttributes", :id => false, :force => true do |t|
    t.integer "typeID",      :null => false
    t.integer "attributeID", :null => false
    t.integer "valueInt"
    t.float   "valueFloat"
  end

  create_table "dgmTypeEffects", :id => false, :force => true do |t|
    t.integer "typeID",    :null => false
    t.integer "effectID",  :null => false
    t.boolean "isDefault"
  end

  create_table "eveGraphics", :id => false, :force => true do |t|
    t.integer "graphicID"
    t.string  "graphicFile", :limit => 500,  :null => false
    t.string  "description", :limit => 1000, :null => false
    t.boolean "obsolete",                    :null => false
    t.string  "graphicType", :limit => 100
    t.boolean "collidable"
    t.integer "explosionID"
    t.integer "directoryID"
    t.string  "graphicName", :limit => 64
  end

  create_table "eveIcons", :id => false, :force => true do |t|
    t.integer  "iconID",                      :null => false
    t.string   "iconFile",    :limit => 500,  :null => false
    t.string   "description", :limit => 1000, :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "eveUnits", :id => false, :force => true do |t|
    t.integer "unitID"
    t.string  "unitName",    :limit => 100
    t.string  "displayName", :limit => 50
    t.string  "description", :limit => 1000
  end

  create_table "invBlueprintTypes", :id => false, :force => true do |t|
    t.integer "blueprintTypeID"
    t.integer "parentBlueprintTypeID"
    t.integer "productTypeID"
    t.integer "productionTime"
    t.integer "techLevel"
    t.integer "researchProductivityTime"
    t.integer "researchMaterialTime"
    t.integer "researchCopyTime"
    t.integer "researchTechTime"
    t.integer "productivityModifier"
    t.integer "materialModifier"
    t.integer "wasteFactor"
    t.integer "maxProductionLimit"
  end

  create_table "invCategories", :id => false, :force => true do |t|
    t.integer "categoryID"
    t.string  "categoryName", :limit => 100
    t.string  "description",  :limit => 3000
    t.integer "iconID"
    t.boolean "published"
  end

  create_table "invContrabandTypes", :id => false, :force => true do |t|
    t.integer "factionID",        :null => false
    t.integer "typeID",           :null => false
    t.float   "standingLoss"
    t.float   "confiscateMinSec"
    t.float   "fineByValue"
    t.float   "attackMinSec"
  end

  create_table "invControlTowerResourcePurposes", :id => false, :force => true do |t|
    t.integer "purpose"
    t.string  "purposeText", :limit => 100
  end

  create_table "invControlTowerResources", :id => false, :force => true do |t|
    t.integer "controlTowerTypeID", :null => false
    t.integer "resourceTypeID",     :null => false
    t.integer "purpose"
    t.integer "quantity"
    t.float   "minSecurityLevel"
    t.integer "factionID"
  end

  create_table "invFlags", :id => false, :force => true do |t|
    t.integer "flagID"
    t.string  "flagName", :limit => 200
    t.string  "flagText", :limit => 100
    t.integer "orderID"
  end

  create_table "invGroups", :id => false, :force => true do |t|
    t.integer "groupID"
    t.integer "categoryID"
    t.string  "groupName",            :limit => 100
    t.string  "description",          :limit => 3000
    t.integer "iconID"
    t.boolean "useBasePrice"
    t.boolean "allowManufacture"
    t.boolean "allowRecycler"
    t.boolean "anchored"
    t.boolean "anchorable"
    t.boolean "fittableNonSingleton"
    t.boolean "published"
  end

  create_table "invItems", :id => false, :force => true do |t|
    t.integer "itemID"
    t.integer "typeID",     :null => false
    t.integer "ownerID",    :null => false
    t.integer "locationID", :null => false
    t.integer "flagID",     :null => false
    t.integer "quantity",   :null => false
  end

  create_table "invMarketGroups", :id => false, :force => true do |t|
    t.integer "marketGroupID"
    t.integer "parentGroupID"
    t.string  "marketGroupName", :limit => 100
    t.string  "description",     :limit => 3000
    t.integer "iconID"
    t.boolean "hasTypes"
  end

  create_table "invMetaGroups", :id => false, :force => true do |t|
    t.integer "metaGroupID"
    t.string  "metaGroupName", :limit => 100
    t.string  "description",   :limit => 1000
    t.integer "iconID"
  end

  create_table "invMetaTypes", :id => false, :force => true do |t|
    t.integer "typeID"
    t.integer "parentTypeID"
    t.integer "metaGroupID"
  end

  create_table "invNames", :id => false, :force => true do |t|
    t.integer "itemID"
    t.string  "itemName", :limit => 200, :null => false
  end

  create_table "invPositions", :id => false, :force => true do |t|
    t.integer "itemID"
    t.float   "x",      :null => false
    t.float   "y",      :null => false
    t.float   "z",      :null => false
    t.float   "yaw"
    t.float   "pitch"
    t.float   "roll"
  end

  create_table "invTypeMaterials", :id => false, :force => true do |t|
    t.integer "typeID",         :null => false
    t.integer "materialTypeID", :null => false
    t.integer "quantity",       :null => false
  end

  create_table "invTypeReactions", :id => false, :force => true do |t|
    t.integer "reactionTypeID", :null => false
    t.boolean "input",          :null => false
    t.integer "typeID",         :null => false
    t.integer "quantity"
  end

  create_table "invTypes", :id => false, :force => true do |t|
    t.integer "typeID"
    t.integer "groupID"
    t.string  "typeName",            :limit => 100
    t.string  "description",         :limit => 3000
    t.integer "graphicID"
    t.float   "radius"
    t.float   "mass"
    t.float   "volume"
    t.float   "capacity"
    t.integer "portionSize"
    t.integer "raceID"
    t.float   "basePrice"
    t.boolean "published"
    t.integer "marketGroupID"
    t.float   "chanceOfDuplicating"
    t.integer "iconID"
  end

  create_table "invUniqueNames", :id => false, :force => true do |t|
    t.integer "itemID",                  :null => false
    t.string  "itemName", :limit => 200, :null => false
    t.integer "groupID"
  end

  create_table "planetSchematics", :id => false, :force => true do |t|
    t.integer "schematicID"
    t.string  "schematicName"
    t.integer "cycleTime"
  end

  create_table "planetSchematicsPinMap", :id => false, :force => true do |t|
    t.integer "schematicID", :null => false
    t.integer "pinTypeID",   :null => false
  end

  create_table "planetSchematicsTypeMap", :id => false, :force => true do |t|
    t.integer "schematicID", :null => false
    t.integer "typeID",      :null => false
    t.integer "quantity"
    t.boolean "isInput"
  end

  create_table "staOperationServices", :id => false, :force => true do |t|
    t.integer "operationID", :null => false
    t.integer "serviceID",   :null => false
  end

  create_table "staOperations", :id => false, :force => true do |t|
    t.integer "activityID"
    t.integer "operationID"
    t.string  "operationName",         :limit => 100
    t.string  "description",           :limit => 1000
    t.integer "fringe"
    t.integer "corridor"
    t.integer "hub"
    t.integer "border"
    t.integer "ratio"
    t.integer "caldariStationTypeID"
    t.integer "minmatarStationTypeID"
    t.integer "amarrStationTypeID"
    t.integer "gallenteStationTypeID"
    t.integer "joveStationTypeID"
  end

  create_table "staServices", :id => false, :force => true do |t|
    t.integer "serviceID",                   :null => false
    t.string  "serviceName", :limit => 100
    t.string  "description", :limit => 1000
  end

  create_table "warCombatZoneSystems", :id => false, :force => true do |t|
    t.integer "solarSystemID"
    t.integer "combatZoneID"
  end

  create_table "warCombatZones", :id => false, :force => true do |t|
    t.integer "combatZoneID"
    t.string  "combatZoneName", :limit => 100
    t.integer "factionID"
    t.integer "centerSystemID"
    t.string  "description",    :limit => 500
  end

end

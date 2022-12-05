
DROP TABLE IF EXISTS dataelementcategoryoption_copy;
SELECT dataelementcategoryoption.categoryoptionid, dataelementcategoryoption.uid, dataelementcategoryoption.name
INTO dataelementcategoryoption_copy FROM dataelementcategoryoption
WHERE dataelementcategoryoption.name LIKE '%DELETE%';

DELETE FROM categories_categoryoptions
	USING dataelementcategoryoption_copy
	WHERE categories_categoryoptions.categoryoptionid = dataelementcategoryoption_copy.categoryoptionid;

DELETE FROM categorydimension_items
	USING dataelementcategoryoption_copy
	WHERE categorydimension_items.categoryoptionid = dataelementcategoryoption_copy.categoryoptionid;

DELETE FROM categoryoption_organisationunits
    USING dataelementcategoryoption_copy
    WHERE categoryoption_organisationunits.categoryoptionid = dataelementcategoryoption_copy.categoryoptionid;

DELETE FROM categoryoptioncombos_categoryoptions
    USING dataelementcategoryoption_copy
    WHERE categoryoptioncombos_categoryoptions.categoryoptionid = dataelementcategoryoption_copy.categoryoptionid;

DELETE FROM categoryoptiongroupmembers
    USING dataelementcategoryoption_copy
    WHERE categoryoptiongroupmembers.categoryoptionid = dataelementcategoryoption_copy.categoryoptionid;

DELETE FROM dataelementcategoryoptionattributevalues
    USING dataelementcategoryoption_copy
    WHERE dataelementcategoryoptionattributevalues.categoryoptionid = dataelementcategoryoption_copy.categoryoptionid;

DELETE FROM dataelementcategoryoption
    USING dataelementcategoryoption_copy
    WHERE dataelementcategoryoption.categoryoptionid = dataelementcategoryoption_copy.categoryoptionid;

DROP TABLE IF EXISTS dataelementcategoryoption_copy;

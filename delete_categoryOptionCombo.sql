-- categoryoptioncombo
DROP TABLE IF EXISTS categoryoptioncombo_copy;
SELECT categoryoptioncombo.categoryoptioncomboid, categoryoptioncombo.uid, categoryoptioncombo.name
INTO categoryoptioncombo_copy FROM categoryoptioncombo
WHERE categoryoptioncombo.name LIKE '%DELETE%';

DELETE FROM categorycombos_optioncombos
    USING categoryoptioncombo_copy
    WHERE categorycombos_optioncombos.categoryoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM categoryoptioncombos_categoryoptions
    USING categoryoptioncombo_copy
    WHERE categoryoptioncombos_categoryoptions.categoryoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM smscodes
    USING categoryoptioncombo_copy
    WHERE smscodes.optionid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM completedatasetregistration
    USING categoryoptioncombo_copy
    WHERE completedatasetregistration.attributeoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM dataapproval
    USING categoryoptioncombo_copy
    WHERE dataapproval.attributeoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM dataapprovalaudit
    USING categoryoptioncombo_copy
    WHERE dataapprovalaudit.attributeoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM datadimensionitem
    USING categoryoptioncombo_copy
    WHERE datadimensionitem.dataelementoperand_categoryoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM dataelementoperand
    USING categoryoptioncombo_copy
    WHERE dataelementoperand.categoryoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM datavalue
    USING categoryoptioncombo_copy
    WHERE datavalue.attributeoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM datavalue
    USING categoryoptioncombo_copy
    WHERE datavalue.categoryoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM datavalueaudit
    USING categoryoptioncombo_copy
    WHERE datavalueaudit.attributeoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM datavalueaudit
    USING categoryoptioncombo_copy
    WHERE datavalueaudit.categoryoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM minmaxdataelement
    USING categoryoptioncombo_copy
    WHERE minmaxdataelement.categoryoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM predictor
    USING categoryoptioncombo_copy
    WHERE predictor.generatoroutputcombo = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM programstageinstance
    USING categoryoptioncombo_copy
    WHERE programstageinstance.attributeoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM validationresult
    USING categoryoptioncombo_copy
    WHERE validationresult.attributeoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM categoryoptioncomboattributevalues
    USING categoryoptioncombo_copy
    WHERE categoryoptioncomboattributevalues.categoryoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

DELETE FROM categoryoptioncombo
    USING categoryoptioncombo_copy
    WHERE categoryoptioncombo.categoryoptioncomboid = categoryoptioncombo_copy.categoryoptioncomboid;

-- DROP TABLE IF EXISTS categoryoptioncombo_copy;

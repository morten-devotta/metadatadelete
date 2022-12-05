
DROP TABLE IF EXISTS categorycombo_copy;
    SELECT categorycombo.categorycomboid, categorycombo.uid, categorycombo.name
    INTO categorycombo_copy FROM categorycombo
    WHERE categorycombo.name LIKE '%DELETE%';

DELETE FROM categorycombos_categories
    USING categorycombo_copy
    WHERE categorycombos_categories.categorycomboid = categorycombo_copy.categorycomboid;

DELETE FROM categorycombos_optioncombos
    USING categorycombo_copy
    WHERE categorycombos_optioncombos.categorycomboid = categorycombo_copy.categorycomboid;

DELETE FROM dataapprovalworkflow
    USING categorycombo_copy
    WHERE dataapprovalworkflow.categorycomboid = categorycombo_copy.categorycomboid;

DELETE FROM dataelement
    USING categorycombo_copy
    WHERE dataelement.categorycomboid = categorycombo_copy.categorycomboid;

DELETE FROM dataset
    USING categorycombo_copy
    WHERE dataset.categorycomboid = categorycombo_copy.categorycomboid;

DELETE FROM datasetelement
    USING categorycombo_copy
    WHERE datasetelement.categorycomboid = categorycombo_copy.categorycomboid;

DELETE FROM program
    USING categorycombo_copy
    WHERE program.categorycomboid = categorycombo_copy.categorycomboid;

DELETE FROM categorycombo
    USING categorycombo_copy
    WHERE categorycombo.categorycomboid = categorycombo_copy.categorycomboid;

-- DROP TABLE IF EXISTS categorycombo_copy;

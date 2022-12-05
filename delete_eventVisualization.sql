-- eventvisualization
DROP TABLE IF EXISTS eventvisualization_copy;
SELECT eventvisualization.eventvisualizationid, eventvisualization.uid, eventvisualization.name
INTO eventvisualization_copy FROM eventvisualization
WHERE eventvisualization.name LIKE '%DELETE%';


DELETE FROM dashboarditem
    USING eventvisualization_copy
    WHERE dashboarditem.eventchartid = eventvisualization_copy.eventvisualizationid;

DELETE FROM dashboarditem
    USING eventvisualization_copy
    WHERE dashboarditem.eventreport = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventreport
    USING eventvisualization_copy
    WHERE eventreport.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventvisualization_attributedimensions
    USING eventvisualization_copy
    WHERE eventvisualization_attributedimensions.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventvisualization_categorydimensions
    USING eventvisualization_copy
    WHERE eventvisualization_categorydimensions.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventvisualization_categoryoptiongroupsetdimensions
    USING eventvisualization_copy
    WHERE eventvisualization_categoryoptiongroupsetdimensions.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventvisualization_columns
    USING eventvisualization_copy
    WHERE eventvisualization_columns.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventvisualization_dataelementdimensions
    USING eventvisualization_copy
    WHERE eventvisualization_dataelementdimensions.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventvisualization_filters
    USING eventvisualization_copy
    WHERE eventvisualization_filters.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventvisualization_itemorgunitgroups
    USING eventvisualization_copy
    WHERE eventvisualization_itemorgunitgroups.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventvisualization_organisationunits
    USING eventvisualization_copy
    WHERE eventvisualization_organisationunits.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventvisualization_orgunitgroupsetdimensions
    USING eventvisualization_copy
    WHERE eventvisualization_orgunitgroupsetdimensions.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventvisualization_orgunitlevels
    USING eventvisualization_copy
    WHERE eventvisualization_orgunitlevels.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventvisualization_periods
    USING eventvisualization_copy
    WHERE eventvisualization_periods.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventvisualization_programindicatordimensions
    USING eventvisualization_copy
    WHERE eventvisualization_programindicatordimensions.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM eventvisualization_rows
    USING eventvisualization_copy
    WHERE eventvisualization_rows.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

DELETE FROM interpretation
    USING eventvisualization_copy
    WHERE interpretation.eventreportid = eventvisualization_copy.eventvisualizationid;

DELETE FROM interpretation
    USING eventvisualization_copy
    WHERE interpretation.eventchartid = eventvisualization_copy.eventvisualizationid;

DELETE FROM interpretation
    USING eventvisualization_copy
    WHERE interpretation.eventvisualizationid = eventvisualization_copy.eventvisualizationid;


DELETE FROM eventvisualization
    USING eventvisualization_copy
    WHERE eventvisualization.eventvisualizationid = eventvisualization_copy.eventvisualizationid;

-- DROP TABLE IF EXISTS eventvisualization_copy;

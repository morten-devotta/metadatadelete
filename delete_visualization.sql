-- visualization
DROP TABLE IF EXISTS visualization_copy;
SELECT visualization.visualizationid, visualization.uid, visualization.name
INTO visualization_copy FROM visualization
WHERE visualization.name LIKE '%DELETE%';

DELETE FROM dashboarditem
    USING visualization_copy
    WHERE dashboarditem.visualizationid = visualization_copy.visualizationid;

DELETE FROM interpretation
    USING visualization_copy
    WHERE interpretation.visualizationid = visualization_copy.visualizationid;

DELETE FROM report
    USING visualization_copy
    WHERE report.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_axis
    USING visualization_copy
    WHERE visualization_axis.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_categorydimensions
    USING visualization_copy
    WHERE visualization_categorydimensions.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_categoryoptiongroupsetdimensions
    USING visualization_copy
    WHERE visualization_categoryoptiongroupsetdimensions.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_columns
    USING visualization_copy
    WHERE visualization_columns.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_datadimensionitems
    USING visualization_copy
    WHERE visualization_datadimensionitems.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_dataelementgroupsetdimensions
    USING visualization_copy
    WHERE visualization_dataelementgroupsetdimensions.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_filters
    USING visualization_copy
    WHERE visualization_filters.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_itemorgunitgroups
    USING visualization_copy
    WHERE visualization_itemorgunitgroups.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_organisationunits
    USING visualization_copy
    WHERE visualization_organisationunits.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_orgunitgroupsetdimensions
    USING visualization_copy
    WHERE visualization_orgunitgroupsetdimensions.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_orgunitlevels
    USING visualization_copy
    WHERE visualization_orgunitlevels.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_periods
    USING visualization_copy
    WHERE visualization_periods.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_rows
    USING visualization_copy
    WHERE visualization_rows.visualizationid = visualization_copy.visualizationid;

DELETE FROM visualization_yearlyseries
    USING visualization_copy
    WHERE visualization_yearlyseries.visualizationid = visualization_copy.visualizationid;


DELETE FROM visualization
    USING visualization_copy
    WHERE visualization.visualizationid = visualization_copy.visualizationid;

-- DROP TABLE IF EXISTS visualization_copy;

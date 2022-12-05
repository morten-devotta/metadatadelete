
-- Organisation units
DROP TABLE IF EXISTS organisationunit_copy;
SELECT organisationunit.organisationunitid, organisationunit.uid, organisationunit.name
INTO organisationunit_copy FROM organisationunit
WHERE organisationunit.name LIKE '%DELETE%';

DELETE FROM organisationunitattributevalues
    USING organisationunit_copy
    WHERE organisationunitattributevalues.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM categoryoption_organisationunits
    USING organisationunit_copy
    WHERE categoryoption_organisationunits.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM completedatasetregistration
    USING organisationunit_copy
    WHERE completedatasetregistration.sourceid = organisationunit_copy.organisationunitid;

DELETE FROM configuration
    USING organisationunit_copy
    WHERE configuration.selfregistrationorgunit = organisationunit_copy.organisationunitid;

DELETE FROM dataapproval
    USING organisationunit_copy
    WHERE dataapproval.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM dataapprovalaudit
    USING organisationunit_copy
    WHERE dataapprovalaudit.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM datasetsource
    USING organisationunit_copy
    WHERE datasetsource.sourceid = organisationunit_copy.organisationunitid;

DELETE FROM datavalue
    USING organisationunit_copy
    WHERE datavalue.sourceid = organisationunit_copy.organisationunitid;

DELETE FROM datavalueaudit
    USING organisationunit_copy
    WHERE datavalueaudit.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM eventchart_organisationunits
    USING organisationunit_copy
    WHERE eventchart_organisationunits.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM eventreport_organisationunits
    USING organisationunit_copy
    WHERE eventreport_organisationunits.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM interpretation
    USING organisationunit_copy
    WHERE interpretation.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM lockexception
    USING organisationunit_copy
    WHERE lockexception.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM mapview_organisationunits
    USING organisationunit_copy
    WHERE mapview_organisationunits.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM minmaxdataelement
    USING organisationunit_copy
    WHERE minmaxdataelement.sourceid = organisationunit_copy.organisationunitid;

DELETE FROM orgunitgroupmembers
    USING organisationunit_copy
    WHERE orgunitgroupmembers.organisationunitid = organisationunit_copy.organisationunitid;

-- organisationunit -- parent parentid

DELETE FROM program_organisationunits
    USING organisationunit_copy
    WHERE program_organisationunits.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM programinstance
    USING organisationunit_copy
    WHERE programinstance.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM programmessage
    USING organisationunit_copy
    WHERE programmessage.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM programownershiphistory
    USING organisationunit_copy
    WHERE programownershiphistory.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM programstageinstance
    USING organisationunit_copy
    WHERE programstageinstance.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM trackedentityinstance
    USING organisationunit_copy
    WHERE trackedentityinstance.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM trackedentityprogramowner
    USING organisationunit_copy
    WHERE trackedentityprogramowner.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM userdatavieworgunits
    USING organisationunit_copy
    WHERE userdatavieworgunits.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM usermembership
    USING organisationunit_copy
    WHERE usermembership.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM userteisearchorgunits
    USING organisationunit_copy
    WHERE userteisearchorgunits.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM validationresult
    USING organisationunit_copy
    WHERE validationresult.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM visualization_organisationunits
    USING organisationunit_copy
    WHERE visualization_organisationunits.organisationunitid = organisationunit_copy.organisationunitid;

DELETE FROM organisationunit
    USING organisationunit_copy
    WHERE organisationunit.organisationunitid = organisationunit_copy.organisationunitid;

--DROP TABLE IF EXISTS organisationunit_copy;

--------------
/*

DELETE FROM organisationunit;



DELETE FROM userdatavieworgunits

DELETE FROM usermembership;

DELETE FROM userteisearchorgunits;

*/

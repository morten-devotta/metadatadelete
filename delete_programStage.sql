-- programstage
DROP TABLE IF EXISTS programstage_copy;
SELECT programstage.programstageid, programstage.uid, programstage.name
INTO programstage_copy FROM programstage
WHERE programstage.name LIKE '%DELETE%';


DELETE FROM programnotificationtemplate
    USING programstage_copy
    WHERE programnotificationtemplate.programstageid = programstage_copy.programstageid;

DELETE FROM programstageattributevalues
    USING programstage_copy
    WHERE programstageattributevalues.programstageid = programstage_copy.programstageid;

DELETE FROM eventchart
    USING programstage_copy
    WHERE eventchart.programstageid = programstage_copy.programstageid;

DELETE FROM eventreport
    USING programstage_copy
    WHERE eventreport.programstageid = programstage_copy.programstageid;

DELETE FROM mapview
    USING programstage_copy
    WHERE mapview.programstageid = programstage_copy.programstageid;


/*
DELETE FROM programstagesection_dataelements
  WHERE programstagesectionid IN (57015,57022);
*/

DELETE FROM programstagesection
    USING programstage_copy
    WHERE programstagesection.programstageid = programstage_copy.programstageid;

DELETE FROM programruleaction
    USING programstage_copy
    WHERE programruleaction.programstageid = programstage_copy.programstageid;

DELETE FROM programrulevariable
    USING programstage_copy
    WHERE programrulevariable.programstageid = programstage_copy.programstageid;

DELETE FROM programrule
    USING programstage_copy
    WHERE programrule.programstageid = programstage_copy.programstageid;

DELETE FROM programstagedataelement
    USING programstage_copy
    WHERE programstagedataelement.programstageid = programstage_copy.programstageid;

DELETE FROM programstageinstance
    USING programstage_copy
    WHERE programstageinstance.programstageid = programstage_copy.programstageid;

DELETE FROM relationshipconstraint
    USING programstage_copy
    WHERE relationshipconstraint.programstageid = programstage_copy.programstageid;

DELETE FROM smscommands
    USING programstage_copy
    WHERE smscommands.programstageid = programstage_copy.programstageid;

DELETE FROM trackedentitydataelementdimension
    USING programstage_copy
    WHERE trackedentitydataelementdimension.programstageid = programstage_copy.programstageid;


DELETE FROM programstage
    USING programstage_copy
    WHERE programstage.programstageid = programstage_copy.programstageid;

-- DROP TABLE IF EXISTS programstage_copy;

<?xml version="1.0" encoding="UTF-8"?>
 
<sch:schema xmlns:sch="http://www.ascc.net/xml/schematron">
    <sch:ns uri="http://www.topologi.com/example" prefix="ex"/>
    <sch:pattern name="Check structure">
        <sch:rule context="ex:Person">
            <sch:assert test="@Title">The element Person must have a Title attribute</sch:assert>
            <sch:assert test="count(ex:*) = 2 and count(ex:Name) = 1 and count(ex:Gender) = 1">The element Person should have the child elements Name and Gender.</sch:assert>
            <sch:assert test="ex:*[1] = ex:Name">The element Name must appear before element Gender.</sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern name="Check co-occurrence constraints">
        <sch:rule context="ex:Person">
            <sch:assert test="(@Title = 'Mr' and ex:Gender = 'Male') or @Title != 'Mr'">If the Title is "Mr" then the gender of the person must be "Male".</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema> 

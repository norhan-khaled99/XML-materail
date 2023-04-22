xquery version "1.0";
(: This demo is on "some" & "every" keyword :)
(:Note that :"some" & "every" keywords return boolean expression either true or false:)
(:*****************************************************************************************************:)

some $emp in doc("team.xml")//Employee satisfies $emp/@years > 5


(:every $emp in doc("team.xml")//Employee satisfies $emp/@years > 5 :)

 
 
   
 


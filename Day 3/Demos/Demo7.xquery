xquery version "1.0";
let $doc := .
for   $v in $doc//video,
        $a in $doc//actors/actor
where ends-with($a, 'Lisa')
  and    $v/actorRef = $a/@id 
order by $v/year
return $v/title
(: This query will result into 2 nodes 
     <title>Enemy of the State</title>
     <title>Enemy of the State</title>
with the same Value this is because 
<actor id="0000000f">Bonet, Lisa</actor> -- matching--              <actorRef>0000000f</actorRef>
<actor id="00000012">Spoonhauer, Lisa</actor> -- matching--  <actorRef>00000012</actorRef>
so we have 2 matches in Same Node of Title 
<title>Enemy of the State</title>
:)
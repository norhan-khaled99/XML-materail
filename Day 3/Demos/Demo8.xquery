xquery version "1.0";
declare variable $firstName as xs:string :='Lisa';
<videos>
{
let $doc := .
for $v in $doc//video,
$a in $doc//actors/actor
where ends-with($a, $firstName)
and $v/actorRef = $a/@id
order by $v/year
return
<video year="{$v/year}">
{$v/title}
</video>
}
</videos>

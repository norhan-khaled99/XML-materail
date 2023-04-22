xquery version "1.0";
declare namespace my ="my";


declare function my:pow($b as xs:integer, $exp as xs:integer)
{
  if ($exp > 0) then $b * my:pow($b, $exp -1)
  else 1
};
let $x :=my:pow(2,3)
return $x



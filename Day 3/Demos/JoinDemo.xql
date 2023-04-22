xquery version "1.0";
for $proj in doc("projects.xml")/Projects/Project,
       $emp in doc("team.xml")//Employee
    
                where $proj/@owner = $emp/@id
            (:    return $proj/Name :)
                (:These are different ways for constructors for xml outputs:)
            (:  return ($proj/Name ,$emp/Name) :)
            return <Assignment>{ $proj/Name, $emp/Name }</Assignment> 
          (:return <Assignment proj="{$proj/Name}" emp="{$emp/Name}" /> :)
            
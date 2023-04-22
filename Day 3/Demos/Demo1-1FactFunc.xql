xquery version "1.0";
declare namespace my ="my";
 declare function my:fact($n as xs:integer) 
{
  if ($n < 2) then 1 
  else $n* my:fact($n -1)
 };
declare variable $f :=my:fact(4);
  <table>
  {
              for $i in 1 to 4 
              return  
               
               <tr>
               <td>
               
                      4! /{$i}! ={$f div  my:fact ($i) }
              </td>
              </tr>
              }
              </table>
              
              
            

         
 


 
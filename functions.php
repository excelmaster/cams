<?php

//Include Files @0-ED610940
include(RelativePath . "/Classes.php");
include(RelativePath . "/db_adapter.php");

// page custom redirection
function redirect_page($grupo)
{
$db = new clsDBlocal_cams();
    $SQL = "select group_init.pageRedirect from group_init where group_init.grupo = " . $grupo; 
    $db->query($SQL);
    $Result = $db->next_record();
	print $result . " == " . $grupo ;
	return $result;
		
}    
// end page custom redirection

?>

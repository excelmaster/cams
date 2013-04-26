<?php
//BindEvents Method @1-68470C80
function BindEvents()
{
    global $departments;
    $departments->CCSEvents["BeforeShowRow"] = "departments_BeforeShowRow";
    $departments->ds->CCSEvents["BeforeExecuteDelete"] = "departments_ds_BeforeExecuteDelete";
}
//End BindEvents Method

//Declare the page-specific variables
$RowNumber = 0;

//departments_BeforeShowRow @3-1C80CE0D
function departments_BeforeShowRow()
{
    $departments_BeforeShowRow = true;
//End departments_BeforeShowRow

//Custom Code @17-2A29BDB7
global $departments;
global $RowNumber;
	
//Increase the row number and set it within the HTML
  $RowNumber++;

  $departments->RowIDAttribute->SetValue($RowNumber);
	
//Configure the row's properties based on its state (empty or filled)
  if (($RowNumber <= $departments->PageSize) && ($RowNumber <= $departments->ds->RecordsCount)) {
     $departments->RowNameAttribute->SetValue("FillRow");
  } else {
   	$departments->RowNameAttribute->SetValue("EmptyRow");
   	$departments->RowStyleAttribute->SetValue("style=\"display:none;\"");
     	
   	if($departments->RowsErrors[$RowNumber]) {
      $departments->RowStyleAttribute->SetValue("");
    }
  }

//End Custom Code

//Close departments_BeforeShowRow @3-68159631
    return $departments_BeforeShowRow;
}
//End Close departments_BeforeShowRow

//departments_ds_BeforeExecuteDelete @3-9F605A0A
function departments_ds_BeforeExecuteDelete()
{
    $departments_ds_BeforeExecuteDelete = true;
//End departments_ds_BeforeExecuteDelete

//Custom Code @20-2A29BDB7
global $departments;

  //Create a new database connection object
  $NewConn = new clsDBIntranetDB();
  
  //Get the where parameters
  $DepartmentID = $departments->ds->Where;
  if (strlen($DepartmentID) > 0) {
    //Update employees table
    $NewConn->query("UPDATE employees SET department_id = NULL WHERE " . $DepartmentID);
  }

  //Close and destroy the database connection object
  $NewConn->close();

//End Custom Code

//Close departments_ds_BeforeExecuteDelete @3-2BB45B69
    return $departments_ds_BeforeExecuteDelete;
}
//End Close departments_ds_BeforeExecuteDelete



?>

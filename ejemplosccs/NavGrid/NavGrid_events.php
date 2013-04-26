<?php
//BindEvents Method @1-9E0E92A0
function BindEvents()
{
    global $employees;
    $employees->CCSEvents["BeforeShowRow"] = "employees_BeforeShowRow";
}
//End BindEvents Method

$CurrentRecord = 0;

//employees_BeforeShowRow @2-8546CAF0
function employees_BeforeShowRow()
{
    $employees_BeforeShowRow = true;
//End employees_BeforeShowRow

//Custom Code @22-2A29BDB7
global $employees;
global $CurrentRecord;

  //Calculate the number of records up to the current page
  $PreviousRecords = $employees->PageSize * ($employees->PageNumber-1);

  //increment the employee count    	
  $CurrentRecord = $CurrentRecord + 1;

  //Calculate and store the current page number in the empBackPage parameter of the Emp_Name link.
  $employees->emp_name->Parameters = CCAddParam($employees->emp_name->Parameters, "empBackPage", $employees->PageNumber);

  //Calculate and store each employee's record number in the employeesPage parameter of their corresponding Emp_Name link.
  //This parameter is used automatically by the Navigator of the Grid on the detail page NavGrid_Detail.
  $employees->emp_name->Parameters = CCAddParam($employees->emp_name->Parameters, "employeesPage",$PreviousRecords + $CurrentRecord);

//End Custom Code

//Close employees_BeforeShowRow @2-C5EDDDE1
    return $employees_BeforeShowRow;
}
//End Close employees_BeforeShowRow

?>

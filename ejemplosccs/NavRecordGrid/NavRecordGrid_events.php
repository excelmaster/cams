<?php
//BindEvents Method @1-225D6D19
function BindEvents()
{
    global $employees;
    $employees->CCSEvents["BeforeShow"] = "employees_BeforeShow";
    $employees->CCSEvents["BeforeSelect"] = "employees_BeforeSelect";
}
//End BindEvents Method

//employees_BeforeShow @67-35E20A37
function employees_BeforeShow()
{
    $employees_BeforeShow = true;
//End employees_BeforeShow

//Custom Code @88-2A29BDB7
global $employees;
	
//If adding a new record
  if (CCGetFromGet("emp_id", "") == "-1") { 
    //Show one empty row
	$employees->EmptyRows = 1;
	//Hide the navigator
    $employees->Navigator->Visible = False;
//If modyfing an existing record
  } else {
    //Show the navigator
    $employees->Navigator->Visible = True;
    //Hide empty rows (usually used for adding multiple new records)
    $employees->EmptyRows = 0;
  }

//End Custom Code

//Close employees_BeforeShow @67-4F58CE32
    return $employees_BeforeShow;
}
//End Close employees_BeforeShow

//employees_BeforeSelect @67-4073C8B6
function employees_BeforeSelect()
{
    $employees_BeforeSelect = true;
//End employees_BeforeSelect

//Custom Code @94-2A29BDB7
// -------------------------
// Write your own code here.
// -------------------------
//End Custom Code

//Close employees_BeforeSelect @67-3E78CF96
    return $employees_BeforeSelect;
}
//End Close employees_BeforeSelect



?>

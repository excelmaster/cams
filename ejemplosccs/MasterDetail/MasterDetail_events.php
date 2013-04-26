<?php
//BindEvents Method @1-0ED06B70
function BindEvents()
{
    global $employees_record;
    global $projects_employees;
    $employees_record->CCSEvents["AfterInsert"] = "employees_record_AfterInsert";
    $employees_record->CCSEvents["BeforeShow"] = "employees_record_BeforeShow";
    $employees_record->CCSEvents["BeforeDelete"] = "employees_record_BeforeDelete";
    $projects_employees->project_id->CCSEvents["OnValidate"] = "projects_employees_project_id_OnValidate";
    $projects_employees->ds->CCSEvents["BeforeBuildInsert"] = "projects_employees_ds_BeforeBuildInsert";
    $projects_employees->CCSEvents["BeforeSubmit"] = "projects_employees_BeforeSubmit";
}
//End BindEvents Method

$project_arr = ",";

//employees_record_AfterInsert @2-AD5850FE
function employees_record_AfterInsert()
{
    $employees_record_AfterInsert = true;
//End employees_record_AfterInsert

//Custom Code @30-2A29BDB7
global $DBIntranetDB;
global $FileName;
global $Redirect;

  //Retrieve the last inserted key
  $LastID = CCDLookUp("max(emp_id)","employees","", $DBIntranetDB);
  //Append the last inserted key to the URL by modifying the 'Redirect' variable
  $Redirect = $FileName."?".CCAddParam(CCRemoveParam(CCGetQueryString("QueryString", "ccsForm"),"ccsForm"), "emp_id", $LastID);
	
//End Custom Code

//Close employees_record_AfterInsert @2-706BBD18
    return $employees_record_AfterInsert;
}
//End Close employees_record_AfterInsert

//employees_record_BeforeShow @2-A6677B85
function employees_record_BeforeShow()
{
    $employees_record_BeforeShow = true;
//End employees_record_BeforeShow

//Custom Code @42-2A29BDB7
global $employees_record;
global $projects_employees;

  //Hide the Editable grid if it is in insert mode
  if(!$employees_record->EditMode) {
     $projects_employees->Visible = false;
  }

//End Custom Code

//Close employees_record_BeforeShow @2-70CBFC0C
    return $employees_record_BeforeShow;
}
//End Close employees_record_BeforeShow

//employees_record_BeforeDelete @2-0D526C62
function employees_record_BeforeDelete()
{
    $employees_record_BeforeDelete = true;
//End employees_record_BeforeDelete

//Custom Code @45-2A29BDB7

//Delete related projects when deleting an employee
  $emp_id = (int)CCGetFromGet("emp_id",-1);	
  if($emp_id > 0) {
   	//Create a new database connection object
   	$NewConnection = new clsDBIntranetDB;

   	$NewConnection->query("DELETE FROM projects_employees WHERE emp_id=".$NewConnection->ToSQL($emp_id,ccsInteger));

    //Close and destroy the database connection object
    $NewConnection->close();

  }  

//End Custom Code

//Close employees_record_BeforeDelete @2-113E24AB
    return $employees_record_BeforeDelete;
}
//End Close employees_record_BeforeDelete

//projects_employees_project_id_OnValidate @32-A6CC4D8B
function projects_employees_project_id_OnValidate()
{
    $projects_employees_project_id_OnValidate = true;
//End projects_employees_project_id_OnValidate

//Custom Code @44-2A29BDB7
global $project_arr;
global $projects_employees;
  
  //Assure that the selected projects are unique
  $newproj_id = $projects_employees->project_id->Value;
  if(strstr($project_arr,",".$newproj_id.",")) {
   	$projects_employees->project_id->Errors->AddError("A project cannot be selected twice");
  } else {
 	$project_arr.= $newproj_id.",";
  }
  
//End Custom Code

//Close projects_employees_project_id_OnValidate @32-02BF7F70
    return $projects_employees_project_id_OnValidate;
}
//End Close projects_employees_project_id_OnValidate

//projects_employees_ds_BeforeBuildInsert @31-5CE49112
function projects_employees_ds_BeforeBuildInsert()
{
    $projects_employees_ds_BeforeBuildInsert = true;
//End projects_employees_ds_BeforeBuildInsert

//Custom Code @41-2A29BDB7
global $projects_employees;

  //Update the hidden 'emp_id" field with the current employee id
  $emp_id = CCGetFromGet("emp_id",0);
  if($emp_id > 0) {
	$projects_employees->ds->emp_id->SetValue($emp_id);
  }
	
//End Custom Code

//Close projects_employees_ds_BeforeBuildInsert @31-24F5322D
    return $projects_employees_ds_BeforeBuildInsert;
}
//End Close projects_employees_ds_BeforeBuildInsert

//projects_employees_BeforeSubmit @31-246FCF98
function projects_employees_BeforeSubmit()
{
    $projects_employees_BeforeSubmit = true;
//End projects_employees_BeforeSubmit

//Custom Code @47-2A29BDB7
// -------------------------
// Write your own code here.
// -------------------------
//End Custom Code

//Close projects_employees_BeforeSubmit @31-E8F7DF4C
    return $projects_employees_BeforeSubmit;
}
//End Close projects_employees_BeforeSubmit




?>

<?php
//BindEvents Method @1-958E89DD
function BindEvents()
{
    global $employees_record;
    $employees_record->CCSEvents["BeforeShow"] = "employees_record_BeforeShow";
    $employees_record->CCSEvents["AfterInsert"] = "employees_record_AfterInsert";
    $employees_record->CCSEvents["AfterUpdate"] = "employees_record_AfterUpdate";
    $employees_record->CCSEvents["BeforeDelete"] = "employees_record_BeforeDelete";
}
//End BindEvents Method

//employees_record_BeforeShow @14-A6677B85
function employees_record_BeforeShow()
{
    $employees_record_BeforeShow = true;
//End employees_record_BeforeShow

//Custom Code @34-2A29BDB7
global $employees_record;

  $ArrayProject = array();
  $ProjectConnection = null;
	
//Populate the multi-select project CheckBox list
  if($employees_record->EditMode) {

   //Create a new database connection object
   $ProjectConnection = New clsDBIntranetDB();
   $ProjectConnection->query("SELECT project_id FROM projects_employees WHERE emp_id =".$ProjectConnection->TOSql(CCGetParam("emp_id", 0),ccsInteger));
   while($ProjectConnection->next_record()) {
         array_push($ArrayProject,$ProjectConnection->f("project_id"));
   }
   $employees_record->ProjectList->Multiple = true;
   $employees_record->ProjectList->Value = $ArrayProject;

   //Close and destroy the recordset
   $ProjectConnection->close();
 
 }

//End Custom Code

//Close employees_record_BeforeShow @14-70CBFC0C
    return $employees_record_BeforeShow;
}
//End Close employees_record_BeforeShow

//employees_record_AfterInsert @14-AD5850FE
function employees_record_AfterInsert()
{
    $employees_record_AfterInsert = true;
//End employees_record_AfterInsert

//Custom Code @35-2A29BDB7

	ProjectEmployeesModify("Insert");

//End Custom Code

//Close employees_record_AfterInsert @14-706BBD18
    return $employees_record_AfterInsert;
}
//End Close employees_record_AfterInsert

//employees_record_AfterUpdate @14-609C65AD
function employees_record_AfterUpdate()
{
    $employees_record_AfterUpdate = true;
//End employees_record_AfterUpdate

	global $employees_record;

//Custom Code @36-2A29BDB7
	
	ProjectEmployeesModify("Update");

//End Custom Code

//Close employees_record_AfterUpdate @14-BF427C97
    return $employees_record_AfterUpdate;
}
//End Close employees_record_AfterUpdate

//employees_record_BeforeDelete @14-0D526C62
function employees_record_BeforeDelete()
{
    $employees_record_BeforeDelete = true;
//End employees_record_BeforeDelete

//Custom Code @39-2A29BDB7

	ProjectEmployeesModify("Delete");

//End Custom Code

//Close employees_record_BeforeDelete @14-113E24AB
    return $employees_record_BeforeDelete;
}
//End Close employees_record_BeforeDelete

function ProjectEmployeesModify($Actions){ 
global $DBIntranetDB;

  $EmpProjectConn = null;
  $EmpID = 0;
  $ProjectID = 0;
  $ProjectList = array();
  $GetLastInsKey = 0;

  //Create a new database connection object
  $EmpProjectConn = new clsDBIntranetDB();

  //Retrieve the current project
  $EmpID = CCGetFromGet("emp_id",0);
  $ProjectList = CCGetFromPost("ProjectList",array());

  if($Actions == "Insert"){
     //Retrieve the last inserted key
     //Use MS SQL method
     //$GetLastInsKey = CCDLookup("@@IDENTITY","employees","",$DBIntranetDB);
     //Use a method compatible with all databases (unsafe when multiple users insert records at the same time)
     $GetLastInsKey = CCDLookup("max(emp_id)", "employees", "", $DBIntranetDB);
     
     //Insert New links
	 reset($ProjectList);
	 while(list($key,$ProjectID) = each($ProjectList)){
		$EmpProjectConn->query("INSERT INTO projects_employees(project_id, emp_id) VALUES (".$EmpProjectConn->ToSQL($ProjectID,ccsInteger).",".$EmpProjectConn->ToSQL($GetLastInsKey,ccsInteger).")");
	 }
  }  	 
  if($EmpID >0){
  	if( ($Actions == "Delete") Or ($Actions == "Update")){
        //Delete project employees links
     	$EmpProjectConn->query("DELETE FROM projects_employees WHERE emp_id=".$EmpProjectConn->ToSQL($EmpID,ccsInteger));
    } 
  	if($Actions == "Update"){
       //Insert assigned employees
	   reset($ProjectList);
       while(list($key,$ProjectID) = each($ProjectList)){
          $EmpProjectConn->query("INSERT INTO projects_employees (project_id, emp_id) VALUES (".$EmpProjectConn->ToSQL($ProjectID,ccsInteger).",".$EmpProjectConn->ToSQL($EmpID,ccsInteger).")");
       }
    }
  }
  //Close and destroy the database connection object
  $EmpProjectConn->close();
}


?>

<?php
//BindEvents Method @1-3174B52F
function BindEvents()
{
    global $employees_record;
    $employees_record->AvailableListBox->ds->CCSEvents["BeforeBuildSelect"] = "employees_record_AvailableListBox_ds_BeforeBuildSelect";
    $employees_record->CCSEvents["AfterInsert"] = "employees_record_AfterInsert";
    $employees_record->CCSEvents["AfterUpdate"] = "employees_record_AfterUpdate";
    $employees_record->CCSEvents["BeforeDelete"] = "employees_record_BeforeDelete";
}
//End BindEvents Method

//employees_record_AvailableListBox_ds_BeforeBuildSelect @46-E0850090
function employees_record_AvailableListBox_ds_BeforeBuildSelect()
{
    $employees_record_AvailableListBox_ds_BeforeBuildSelect = true;
//End employees_record_AvailableListBox_ds_BeforeBuildSelect

//Custom Code @52-2A29BDB7
	global $employees_record;

    $ProjectConnection = null;
	$LinkedProject = "";
	
    //Select all projects of the currect user
    if (intval(CCGetFromGet("emp_id",0)) > 0) {
  
      //Create a new database connection object
      $ProjectConnection = new clsDbIntranetDB;
      $ProjectConnection->query("SELECT project_id FROM projects_employees WHERE emp_id =".$ProjectConnection->ToSQL(CCGetParam("emp_id",0),ccsInteger));
      while($ProjectConnection->next_record()) {
         if($LinkedProject != "") $LinkedProject .= ",";
            $LinkedProject .= $ProjectConnection->f("project_id");
      }
  
      //Destroy the database connection  object
      $ProjectConnection->close();
   }

  //Modify the Where clause of the AvailableListBox List Box
  if($LinkedProject != "") {
     $employees_record->AvailableListBox->ds->Where = "project_id NOT IN (".$LinkedProject.")";
  }  

//End Custom Code

//Close employees_record_AvailableListBox_ds_BeforeBuildSelect @46-5E05976E
    return $employees_record_AvailableListBox_ds_BeforeBuildSelect;
}
//End Close employees_record_AvailableListBox_ds_BeforeBuildSelect


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

//Custom Code @49-2A29BDB7
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

  //Create new database EmpProjectConnection object
  $EmpProjectConn = new clsDBIntranetDB();
  
  //Retrieve current employee
  $EmpID = CCGetFromGet("emp_id",0);
  $ProjectList = split(",",trim(CCGetFromPost("LinkedID","")));

  if($Actions == "Insert"){
	//Retrieve the last inserted key
   	//Use MS SQL method
   	//$GetLastInsKey = CCDLookup("@@IDENTITY","employees","",$DBIntranetDB);
   	//Use a method compatible with all databases (unsafe when multiple users insert records at the same time);
	$GetLastInsKey = CCDLookup("max(emp_id)", "employees", "", $DBIntranetDB);

   	//Insert New links
	reset($ProjectList);
	while(list($key,$ProjectID) = each($ProjectList)) {
	  if(intval($ProjectID)>0){
	     $EmpProjectConn->query("INSERT INTO projects_employees(project_id, emp_id) VALUES (".$EmpProjectConn->ToSQL($ProjectID,ccsInteger).",".$EmpProjectConn->ToSQL($GetLastInsKey,ccsInteger).")");
      }
    }
  }  	 
  if($EmpID >0){
    if( ($Actions == "Delete") || ($Actions == "Update")) {
	   //Delete project employees links
	   $EmpProjectConn->query("DELETE FROM projects_employees WHERE emp_id=".$EmpProjectConn->ToSQL($EmpID,ccsInteger));
    } 
    if($Actions == "Update"){
       //Insert assigned employees
       reset($ProjectList);
       while(list($key,$ProjectID) = each($ProjectList)){
         if(intval($ProjectID)>0){
            $EmpProjectConn->query("INSERT INTO projects_employees (project_id, emp_id) VALUES (".$EmpProjectConn->ToSQL($ProjectID,ccsInteger).",".$EmpProjectConn->ToSQL($EmpID,ccsInteger).")");
         }
       }
    }
  }

  //Close and destroy the database connection object
  $EmpProjectConn->close();
  
}


?>

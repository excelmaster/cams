<?php
//BindEvents Method @1-113CE5FF
function BindEvents()
{
    global $yp_categories;
    global $yp_grid;
    $yp_categories->CCSEvents["BeforeShow"] = "yp_categories_BeforeShow";
    $yp_grid->CCSEvents["BeforeShow"] = "yp_grid_BeforeShow";
}
//End BindEvents Method

//yp_categories_BeforeShow @8-EB9FBDCA
function yp_categories_BeforeShow()
{
    $yp_categories_BeforeShow = true;
//End yp_categories_BeforeShow

//Custom Code @84-2A29BDB7
	
global $yp_categories;
  
  //check if the directory has records and hide it if not
  if($yp_categories->ds->RecordsCount <=0) 
     $yp_categories->Visible = false;

//End Custom Code

//Close yp_categories_BeforeShow @8-D47B854A
    return $yp_categories_BeforeShow;
}
//End Close yp_categories_BeforeShow

//yp_grid_BeforeShow @24-75A849A2
function yp_grid_BeforeShow()
{
    $yp_grid_BeforeShow = true;
//End yp_grid_BeforeShow

//Custom Code @42-2A29BDB7

global $yp_grid;

  //check if grid has some records and hide it if not
  if($yp_grid->ds->RecordsCount <=0) 
     $yp_grid->Visible = false;
  
//End Custom Code

//Close yp_grid_BeforeShow @24-3E9932EB
    return $yp_grid_BeforeShow;
}
//End Close yp_grid_BeforeShow


?>

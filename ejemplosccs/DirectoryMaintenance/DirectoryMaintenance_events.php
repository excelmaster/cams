<?php
//BindEvents Method @1-4AE767EE
function BindEvents()
{
    global $form_categories;
    $form_categories->CCSEvents["BeforeShow"] = "form_categories_BeforeShow";
}
//End BindEvents Method

//form_categories_BeforeShow @23-22A0092A
function form_categories_BeforeShow()
{
    $form_categories_BeforeShow = true;
//End form_categories_BeforeShow

//Custom Code @35-2A29BDB7
global $form_categories; 	
  
  //Set the value of the hidden category_id_parent field to the value of the URL parameter sent by the "Edit" link.
  if(!CCGetFromGet("parent_id","")) {
    $form_categories->category_id_parent->SetValue(CCGetFromGet("category_id",""));
  } else {
    $form_categories->category_id_parent->SetValue(CCGetFromGet("parent_id",""));
  }

//End Custom Code

//Close form_categories_BeforeShow @23-0F50561C
    return $form_categories_BeforeShow;
}
//End Close form_categories_BeforeShow


?>

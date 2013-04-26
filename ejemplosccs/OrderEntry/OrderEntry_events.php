<?php
//BindEvents Method @1-41FABFCB
function BindEvents()
{
    global $store_orders_record;
    global $store_orders_items;
    $store_orders_record->CCSEvents["AfterInsert"] = "store_orders_record_AfterInsert";
    $store_orders_record->CCSEvents["BeforeShow"] = "store_orders_record_BeforeShow";
    $store_orders_record->CCSEvents["BeforeDelete"] = "store_orders_record_BeforeDelete";
    $store_orders_items->PriceArray->CCSEvents["BeforeShow"] = "store_orders_items_PriceArray_BeforeShow";
    $store_orders_items->ds->CCSEvents["BeforeBuildInsert"] = "store_orders_items_ds_BeforeBuildInsert";
    $store_orders_items->CCSEvents["BeforeShowRow"] = "store_orders_items_BeforeShowRow";
}
//End BindEvents Method

$RowNumber = 0;

//store_orders_record_AfterInsert @64-26B84E0B
function store_orders_record_AfterInsert()
{
    $store_orders_record_AfterInsert = true;
//End store_orders_record_AfterInsert

//Custom Code @73-2A29BDB7

	global $DBIntranetDB;	
	global $Redirect,$FileName;

  	$Redirect = $FileName."?order_id=".CCDLookUp("max(order_id)","orders","", $DBIntranetDB);
//End Custom Code

//Close store_orders_record_AfterInsert @64-B4898DC4
    return $store_orders_record_AfterInsert;
}
//End Close store_orders_record_AfterInsert

//store_orders_record_BeforeShow @64-C23DC2FA
function store_orders_record_BeforeShow()
{
    $store_orders_record_BeforeShow = true;
//End store_orders_record_BeforeShow

//Custom Code @74-2A29BDB7

	global $store_orders_record,$store_orders_items;
	if(!$store_orders_record->EditMode) $store_orders_items->Visible = false;


//End Custom Code

//Close store_orders_record_BeforeShow @64-F3B198F5
    return $store_orders_record_BeforeShow;
}
//End Close store_orders_record_BeforeShow

//store_orders_record_BeforeDelete @64-B087330E
function store_orders_record_BeforeDelete()
{
    $store_orders_record_BeforeDelete = true;
//End store_orders_record_BeforeDelete

//Custom Code @75-2A29BDB7

	$order_id = CCGetFromGet("order_id",0);	
 
  	if(intval($order_id) >0){
    
		//Create a new database connection object
    	$NewConnection = new clsDBIntranetDB();
    	$NewConnection->query("DELETE FROM order_items WHERE order_id=".$NewConnection->ToSQL($order_id,ccsInteger));

    	//Close and destroy the database connection object
    	$NewConnection->close();
	}    

//End Custom Code

//Close store_orders_record_BeforeDelete @64-9E9F5864
    return $store_orders_record_BeforeDelete;
}
//End Close store_orders_record_BeforeDelete

//store_orders_items_PriceArray_BeforeShow @78-AD4A2F90
function store_orders_items_PriceArray_BeforeShow()
{
    $store_orders_items_PriceArray_BeforeShow = true;
//End store_orders_items_PriceArray_BeforeShow

//Custom Code @79-2A29BDB7

	global $store_orders_items;	    
	$price_str = "";

    $NewConnection = new clsDBIntranetDB();
	$price_str = "<script language='JavaScript'> product_price = new Array ();";
        
    $NewConnection->query("SELECT product_id,price FROM products");
    while($NewConnection->next_record()){

		$price_str.=" product_price[".$NewConnection->f("product_id")."]='".$NewConnection->f("price")."';";
    			
	}
	$price_str.=" </script>";
    $store_orders_items->PriceArray->SetValue($price_str);
    
	//Close and destroy the database connection object
    $NewConnection->close();
    


//End Custom Code

//Close store_orders_items_PriceArray_BeforeShow @78-5D77C37A
    return $store_orders_items_PriceArray_BeforeShow;
}
//End Close store_orders_items_PriceArray_BeforeShow

//store_orders_items_ds_BeforeBuildInsert @77-DBCE7FDB
function store_orders_items_ds_BeforeBuildInsert()
{
    $store_orders_items_ds_BeforeBuildInsert = true;
//End store_orders_items_ds_BeforeBuildInsert

//Custom Code @90-2A29BDB7

	global $store_orders_items;
	$order_id = intval(CCGetFromGet("order_id",0));
	if($order_id >0){
		$store_orders_items->ds->order_id->SetValue($order_id);
  	}
//End Custom Code

//Close store_orders_items_ds_BeforeBuildInsert @77-68EBA9A0
    return $store_orders_items_ds_BeforeBuildInsert;
}
//End Close store_orders_items_ds_BeforeBuildInsert

//store_orders_items_BeforeShowRow @77-D61D0F02
function store_orders_items_BeforeShowRow()
{
    $store_orders_items_BeforeShowRow = true;
//End store_orders_items_BeforeShowRow

//Custom Code @105-2A29BDB7

	global $store_orders_items;
	global $RowNumber;
  
  	$RowNumber++;
  	$store_orders_items->RowIDAttribute->SetValue($RowNumber);

  	if( ($RowNumber <= $store_orders_items->ds->RecordsCount) && ($RowNumber <= $store_orders_items->PageSize) ){
    	
		$store_orders_items->RowNameAttribute->SetValue("FillRow");

  	}else{ 

		$store_orders_items->RowNameAttribute->SetValue("EmptyRow");
    	$store_orders_items->RowStyleAttribute->SetValue("style='display:none;'");
     	
		if($store_orders_items->EditMode){

		    if($store_orders_items->ErrorMessages[$RowNumber]) $store_orders_items->RowStyleAttribute->SetValue("");
        }
	 }

//End Custom Code

//Close store_orders_items_BeforeShowRow @77-9FC54EEB
    return $store_orders_items_BeforeShowRow;
}
//End Close store_orders_items_BeforeShowRow


?>

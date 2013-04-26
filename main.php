<?php
//Include Common Files @1-2C1BC6BD
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "main.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-589AE3CB
include_once(RelativePath . "/Designs/Light/MasterPage.php");
//End Master Page implementation

class clsPathPath_categorias { //Path_categorias class @6-0A744BFD

//Variables @6-8F51A715

    // Public variables
    public $ComponentType = "Path";
    public $ComponentName;
    public $Visible;
    public $Errors;
    public $ErrorBlock;
    public $ds;
    public $DataSource;
    public $IsEmpty;

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";
    public $Attributes = "";
//End Variables

//Class_Initialize Event @6-108476C0
    function clsPathPath_categorias($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Path_categorias";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Path Path_categorias";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsPath_categoriasDataSource($this);
        $this->ds = & $this->DataSource;

        $this->PathBeginLink = new clsControl(ccsLink, "PathBeginLink", "PathBeginLink", ccsText, "", CCGetRequestParam("PathBeginLink", ccsGet, NULL), $this);
        $this->PathBeginLink->Parameters = CCGetQueryString("QueryString", array("category_id", "ccsForm"));
        $this->PathBeginLink->Page = "main.php";
        $this->PathCategory = new clsControl(ccsLink, "PathCategory", "PathCategory", ccsText, "", CCGetRequestParam("PathCategory", ccsGet, NULL), $this);
        $this->PathCategory->Page = "main.php";
        $this->CurrentCategory = new clsControl(ccsLabel, "CurrentCategory", "CurrentCategory", ccsText, "", CCGetRequestParam("CurrentCategory", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @6-5D060BAC
    function Initialize()
    {
        if(!$this->Visible) return;
    }
//End Initialize Method

//Show Method @6-53B9E8AD
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;


        $this->DataSource->Parameters["urlcategory_id"] = CCGetFromGet("category_id", NULL);
        $this->DataSource->Parameters["urlgroupid"] = CCGetFromGet("groupid", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->DataSource->Prepare();
        if ($this->DataSource->AllParametersSet) {
            $this->DataSource->Open();
        }

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) {
            $this->DataSource->close();
            return;
        }

        $this->Attributes->Show();
        $PathBlock = "Path " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $PathBlock;


        $is_next_record = ($this->DataSource->AllParametersSet && $this->DataSource->next_record());
        $this->IsEmpty = !$is_next_record;
        if($is_next_record)
        {
            $this->DataSource->SetValues();
            $this->CurrentCategory->SetValue($this->DataSource->CurrentCategory->GetValue());
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowCategory", $this);
            $this->Attributes->Show();
            $Tpl->block_path = $ParentPath . "/" . $PathBlock . "/CurrentCategory";
            $this->CurrentCategory->Show();
            $Tpl->block_path = $ParentPath . "/" . $PathBlock;
            $Tpl->parse("CurrentCategory", true);

            $category_parent_id = $this->DataSource->f("Category_id_parent");
            $this->DataSource->Parameters["urlcategory_id"] = $category_parent_id;
            $this->DataSource->Prepare();
            $this->DataSource->Open();
            while($this->DataSource->next_record() && $category_parent_id) {
                $this->DataSource->SetValues();
                $this->PathCategory->SetValue($this->DataSource->PathCategory->GetValue());
                $this->PathCategory->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->PathCategory->Parameters = CCAddParam($this->PathCategory->Parameters, "category_id", $this->DataSource->f("category_id"));
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowCategory", $this);
                $this->Attributes->Show();
                $Tpl->block_path = $ParentPath . "/" . $PathBlock . "/PathComponent";
                $this->PathCategory->Show();
                $Tpl->block_path = $ParentPath . "/" . $PathBlock;
                $Tpl->rparse("PathComponent", true);

                $category_parent_id = $this->DataSource->f("Category_id_parent");
                $this->DataSource->Parameters["urlcategory_id"] = $category_parent_id;
                $this->DataSource->Prepare();
                $this->DataSource->Open();
            } 
        }
        else
        {
        }

        $errors = $this->GetErrors();
        if(strlen($errors))
        {
            $Tpl->replaceblock("", $errors);
            $Tpl->block_path = $ParentPath;
            $this->DataSource->close();
            return;
        }
        $this->PathBeginLink->SetValue($this->DataSource->PathBeginLink->GetValue());
        $this->PathBeginLink->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @6-232FFA40
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->PathBeginLink->Errors->ToString());
        $errors = ComposeStrings($errors, $this->PathCategory->Errors->ToString());
        $errors = ComposeStrings($errors, $this->CurrentCategory->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End Path_categorias Class @6-FCB6E20C

class clsPath_categoriasDataSource extends clsDBlocal_cams {  //Path_categoriasDataSource Class @6-E0C4E58D

//DataSource Variables @6-AF2FFA77
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;
    public $AllParametersSet;


    // Datasource fields
    public $PathBeginLink;
    public $PathCategory;
    public $CurrentCategory;
//End DataSource Variables

//DataSourceClass_Initialize Event @6-F8E3D95E
    function clsPath_categoriasDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Path Path_categorias";
        $this->Initialize();
        $this->PathBeginLink = new clsField("PathBeginLink", ccsText, "");
        
        $this->PathCategory = new clsField("PathCategory", ccsText, "");
        
        $this->CurrentCategory = new clsField("CurrentCategory", ccsText, "");
        

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @6-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @6-EB6F5A97
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlcategory_id", ccsInteger, "", "", $this->Parameters["urlcategory_id"], "", true);
        $this->wp->AddParameter("2", "urlgroupid", ccsInteger, "", "", $this->Parameters["urlgroupid"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "category_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),true);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "groupid", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsInteger),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @6-759356DD
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM categorias";
        $this->SQL = "SELECT *, category_id \n\n" .
        "FROM categorias {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
        $this->MoveToPage($this->AbsolutePage);
    }
//End Open Method

//SetValues Method @6-F6046456
    function SetValues()
    {
        $this->PathBeginLink->SetDBValue($this->f("Category_name"));
        $this->PathCategory->SetDBValue($this->f("Category_name"));
        $this->CurrentCategory->SetDBValue($this->f("Category_name"));
    }
//End SetValues Method

} //End Path_categoriasDataSource Class @6-FCB6E20C

class clsDirectorycategorias { //categorias class @13-4ED76023

//Variables @13-D4D21A31

    // Public variables
    public $Parent;
    public $ComponentType = "Directory";
    public $ComponentName;
    public $Visible;
    public $Errors;
    public $ErrorBlock;
    public $ds;
    public $DataSource;
    public $IsEmpty;
    public $SorterName = "";
    public $SorterDirection = "";
    public $NumberOfColumns = 1;
    public $NumberOfSubcategories = "";

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";
    public $Attributes;
//End Variables

//Class_Initialize Event @13-0A0D6AEB
    function clsDirectorycategorias($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Parent = & $Parent;
        $this->ComponentName = "categorias";
        $this->Visible = True;
        $this->RelativePath = $RelativePath;
        $this->NumberOfColumns = 2;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Directory categorias";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clscategoriasDataSource($this);
        $this->ds = & $this->DataSource;

        $this->CategoryLink = new clsControl(ccsLink, "CategoryLink", "CategoryLink", ccsText, "", CCGetRequestParam("CategoryLink", ccsGet, NULL), $this);
        $this->CategoryLink->Page = "main.php";
        $this->SubcategoryLink = new clsControl(ccsLink, "SubcategoryLink", "SubcategoryLink", ccsText, "", CCGetRequestParam("SubcategoryLink", ccsGet, NULL), $this);
        $this->SubcategoryLink->Page = "main.php";
        $this->SubcategoriesTailLink = new clsControl(ccsLink, "SubcategoriesTailLink", "SubcategoriesTailLink", ccsText, "", CCGetRequestParam("SubcategoriesTailLink", ccsGet, NULL), $this);
        $this->SubcategoriesTailLink->Page = "main.php";
    }
//End Class_Initialize Event

//Initialize Method @13-75D22D4D
    function Initialize()
    {
        if(!$this->Visible) return;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @13-F5C04689
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;


        $this->DataSource->Parameters["urlcategory_id"] = CCGetFromGet("category_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $CategoriesNumber = 0;
        if($this->DataSource->next_record())
        {
            $this->IsEmpty = false;
            $category_id_value = $this->DataSource->f("cat_category_id");
            do {
                if($category_id_value != $this->DataSource->f("cat_category_id"))
                    $CategoriesNumber++;
                $category_id_value = $this->DataSource->f("cat_category_id");
            } while ($this->DataSource->next_record());
            $CategoriesNumber++;
        } else {
            $this->IsEmpty = true;
        }

        $this->DataSource->Open();

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) return;

        $this->Attributes->Show();
        $DirectoryBlock = "Directory " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock;

        $ColumnNumber = 0;
        $CategoryNumber = 0;
        $NumberOfSubcategory = 0;

        $is_next_record = $this->DataSource->next_record();
        if($is_next_record)
        {
            do {
                $category_id_value = $this->DataSource->f("cat_category_id");
                $subcategory_id_value = $this->DataSource->f("sub_category_id");
                $this->DataSource->SetValues();
                $this->CategoryLink->SetValue($this->DataSource->CategoryLink->GetValue());
                $this->CategoryLink->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->CategoryLink->Parameters = CCAddParam($this->CategoryLink->Parameters, "category_id", $this->DataSource->f("cat_category_id"));
                $this->SubcategoryLink->SetValue($this->DataSource->SubcategoryLink->GetValue());
                $this->SubcategoryLink->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->SubcategoryLink->Parameters = CCAddParam($this->SubcategoryLink->Parameters, "category_id", $this->DataSource->f("sub_category_id"));
                $this->SubcategoriesTailLink->SetValue($this->DataSource->SubcategoriesTailLink->GetValue());
                $this->SubcategoriesTailLink->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->SubcategoriesTailLink->Parameters = CCAddParam($this->SubcategoriesTailLink->Parameters, "category_id", $this->DataSource->f("cat_category_id"));
                if(strlen($subcategory_id_value)) $NumberOfSubcategory++;
                if($NumberOfSubcategory && (!strlen($this->NumberOfSubcategories) || $this->NumberOfSubcategories >= $NumberOfSubcategory)) {
                    $this->Attributes->Show();
                    $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowSubcategory", $this);
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock . "/Category/Subcategory";
                    $this->SubcategoryLink->Show();
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock;
                    $Tpl->parse("Category/Subcategory", true);
                } else if(strlen($this->NumberOfSubcategories) && ($this->NumberOfSubcategories + 1) == $NumberOfSubcategory) {
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock . "/Category/SubcategoriesTail";
                    $this->SubcategoriesTailLink->Show();
                    $this->Attributes->Show();
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock;
                    $Tpl->parseto("Category/SubcategoriesTail", true, "Category/Subcategory");
                }
                $is_next_record = $this->DataSource->next_record();
                $parse_category = (($is_next_record && $category_id_value != $this->DataSource->f("cat_category_id")) || !$is_next_record);

                // Parse Separator
                if($parse_category) {
                    $CategoryNumber++;
                    $NumberOfSubcategory = 0;
                    $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowCategory", $this);
                    $this->Attributes->Show();
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock . "/Category";
                    $this->CategoryLink->Show();
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock;
                    $Tpl->parse("Category", true);
                    $Tpl->setblockvar("Category/Subcategory", "");
                    if($CategoryNumber >= ($CategoriesNumber / ($this->NumberOfColumns - $ColumnNumber)) && $is_next_record) {
                        $CategoriesNumber -= $CategoryNumber;
                        $ColumnNumber++;
                        $CategoryNumber = 0;
                        $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock . "/ColumnSeparator";
                        $this->Attributes->Show();
                        $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock;
                        $Tpl->parseto("ColumnSeparator", true, "Category");
                    } else if($is_next_record) {
                        $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock . "/CategorySeparator";
                        $this->Attributes->Show();
                        $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock;
                        $Tpl->parseto("CategorySeparator", true, "Category");
                    }
                } else {
                    if(!strlen($this->NumberOfSubcategories) || $this->NumberOfSubcategories >= $NumberOfSubcategory) {
                        $this->Attributes->Show();
                        $Tpl->parseto("Category/SubcategorySeparator", true, "Category/Subcategory");
                    }
                }
            } while ($is_next_record);
        }
        else // Show NoCategories block if no categories are found
        {
            $this->Attributes->Show();
            $NoCategoriesParentPath = $Tpl->block_path;
            $Tpl->block_path = $NoCategoriesParentPath . "/NoCategories";
            $Tpl->block_path = $NoCategoriesParentPath;
            $Tpl->parse("NoCategories", false);
        }

        $errors = $this->GetErrors();
        if(strlen($errors))
        {
            $Tpl->replaceblock("", $errors);
            $Tpl->block_path = $ParentPath;
            return;
        }
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

//GetErrors Method @13-2549C8B4
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->CategoryLink->Errors->ToString());
        $errors = ComposeStrings($errors, $this->SubcategoryLink->Errors->ToString());
        $errors = ComposeStrings($errors, $this->SubcategoriesTailLink->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End categorias Class @13-FCB6E20C

class clscategoriasDataSource extends clsDBlocal_cams {  //categoriasDataSource Class @13-037668E0

//DataSource Variables @13-FFCA1A20
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $CategoryLink;
    public $SubcategoryLink;
    public $SubcategoriesTailLink;
//End DataSource Variables

//DataSourceClass_Initialize Event @13-0C3A0148
    function clscategoriasDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Directory categorias";
        $this->Initialize();
        $this->CategoryLink = new clsField("CategoryLink", ccsText, "");
        
        $this->SubcategoryLink = new clsField("SubcategoryLink", ccsText, "");
        
        $this->SubcategoriesTailLink = new clsField("SubcategoriesTailLink", ccsText, "");
        

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @13-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @13-157AECFF
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlcategory_id", ccsInteger, "", "", $this->Parameters["urlcategory_id"], "", true);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "cat.Category_id_parent", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),true);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @13-BADB653A
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM categorias cat LEFT JOIN categorias sub ON\n\n" .
        "cat.category_id = sub.Category_id_parent";
        $this->SQL = "SELECT cat.category_id AS cat_category_id, cat.Category_name AS cat_Category_name, sub.category_id AS sub_category_id, sub.Category_name AS sub_Category_name \n\n" .
        "FROM categorias cat LEFT JOIN categorias sub ON\n\n" .
        "cat.category_id = sub.Category_id_parent {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
        $this->MoveToPage($this->AbsolutePage);
    }
//End Open Method

//SetValues Method @13-38F51712
    function SetValues()
    {
        $this->CategoryLink->SetDBValue($this->f("cat_Category_name"));
        $this->SubcategoryLink->SetDBValue($this->f("sub_Category_name"));
        $this->SubcategoriesTailLink->SetDBValue($this->f("cat_Category_name"));
    }
//End SetValues Method

} //End categoriasDataSource Class @13-FCB6E20C



//Initialize Page @1-AA7DBF3D
// Variables
$FileName = "";
$Redirect = "";
$Tpl = "";
$TemplateFileName = "";
$BlockToParse = "";
$ComponentName = "";
$Attributes = "";
$PathToCurrentMasterPage = "";
$TemplatePathValue = "";

// Events;
$CCSEvents = "";
$CCSEventResult = "";
$MasterPage = null;
$TemplateSource = "";

$FileName = FileName;
$Redirect = "";
$TemplateFileName = "main.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
$Charset = $Charset ? $Charset : "windows-1252";
//End Initialize Page

//Include events file @1-ACD9315F
include_once("./main_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-7BBD0881
$DBlocal_cams = new clsDBlocal_cams();
$MainPage->Connections["local_cams"] = & $DBlocal_cams;
$Attributes = new clsAttributes("page:");
$Attributes->SetValue("pathToRoot", $PathToRoot);
$MainPage->Attributes = & $Attributes;

// Controls
$MasterPage = new clsMasterPage("/Designs/" . $CCProjectDesign . "/", "MasterPage", $MainPage);
$MasterPage->Attributes = $Attributes;
$MasterPage->Initialize();
$Head = new clsPanel("Head", $MainPage);
$Head->PlaceholderName = "Head";
$Content = new clsPanel("Content", $MainPage);
$Content->PlaceholderName = "Content";
$Sidebar1 = new clsPanel("Sidebar1", $MainPage);
$Sidebar1->PlaceholderName = "Sidebar1";
$Path_categorias = new clsPathPath_categorias("", $MainPage);
$categorias = new clsDirectorycategorias("", $MainPage);
$MainPage->Head = & $Head;
$MainPage->Content = & $Content;
$MainPage->Sidebar1 = & $Sidebar1;
$MainPage->Path_categorias = & $Path_categorias;
$MainPage->categorias = & $categorias;
$Sidebar1->AddComponent("Path_categorias", $Path_categorias);
$Sidebar1->AddComponent("categorias", $categorias);
$Path_categorias->Initialize();
$categorias->Initialize();

BindEvents();

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

if ($Charset) {
    header("Content-Type: " . $ContentType . "; charset=" . $Charset);
} else {
    header("Content-Type: " . $ContentType);
}
//End Initialize Objects

//Initialize HTML Template @1-554B8835
$CCSEventResult = CCGetEvent($CCSEvents, "OnInitializeView", $MainPage);
$Tpl = new clsTemplate($FileEncoding, $TemplateEncoding);
if (strlen($TemplateSource)) {
    $Tpl->LoadTemplateFromStr($TemplateSource, $BlockToParse, "CP1252", "replace");
} else {
    $Tpl->LoadTemplate(PathToCurrentPage . $TemplateFileName, $BlockToParse, "CP1252", "replace");
}
$Tpl->SetVar("CCS_PathToRoot", $PathToRoot);
$Tpl->SetVar("CCS_PathToMasterPage", RelativePath . $PathToCurrentMasterPage);
$Tpl->block_path = "/$BlockToParse";
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeShow", $MainPage);
$Attributes->SetValue("pathToRoot", "");
$Attributes->Show();
//End Initialize HTML Template

//Execute Components @1-910C1783
$MasterPage->Operations();
//End Execute Components

//Go to destination page @1-5F9FF2EA
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBlocal_cams->close();
    header("Location: " . $Redirect);
    unset($Path_categorias);
    unset($categorias);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-A51EF219
$Head->Show();
$Content->Show();
$Sidebar1->Show();
$MasterPage->Tpl->SetVar("Head", $Tpl->GetVar("Panel Head"));
$MasterPage->Tpl->SetVar("Content", $Tpl->GetVar("Panel Content"));
$MasterPage->Tpl->SetVar("Sidebar1", $Tpl->GetVar("Panel Sidebar1"));
$MasterPage->Show();
if (!isset($main_block)) $main_block = $MasterPage->HTML;
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-09C47819
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBlocal_cams->close();
unset($MasterPage);
unset($Path_categorias);
unset($categorias);
unset($Tpl);
//End Unload Page


?>

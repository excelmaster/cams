<?php
//Include Common Files @1-1D58758F
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "redireccion.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-6D6808F8
include_once(RelativePath . "/Designs/Business/MasterPage.php");
//End Master Page implementation



class clsDirectorycategorias { //categorias class @17-4ED76023

//Variables @17-D4D21A31

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

//Class_Initialize Event @17-BA5AC726
    function clsDirectorycategorias($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Parent = & $Parent;
        $this->ComponentName = "categorias";
        $this->Visible = True;
        $this->RelativePath = $RelativePath;
        $this->NumberOfColumns = 3;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Directory categorias";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clscategoriasDataSource($this);
        $this->ds = & $this->DataSource;

    }
//End Class_Initialize Event

//Initialize Method @17-75D22D4D
    function Initialize()
    {
        if(!$this->Visible) return;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @17-4FA02C91
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
                if(strlen($subcategory_id_value)) $NumberOfSubcategory++;
                if($NumberOfSubcategory && (!strlen($this->NumberOfSubcategories) || $this->NumberOfSubcategories >= $NumberOfSubcategory)) {
                    $this->Attributes->Show();
                    $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowSubcategory", $this);
                    $Tpl->parse("Category/Subcategory", true);
                } else if(strlen($this->NumberOfSubcategories) && ($this->NumberOfSubcategories + 1) == $NumberOfSubcategory) {
                    $Tpl->block_path = $ParentPath . "/" . $DirectoryBlock . "/Category/SubcategoriesTail";
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

//GetErrors Method @17-580C33D7
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End categorias Class @17-FCB6E20C

class clscategoriasDataSource extends clsDBlocal_cams {  //categoriasDataSource Class @17-037668E0

//DataSource Variables @17-404AA26D
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


//End DataSource Variables

//DataSourceClass_Initialize Event @17-44C763B9
    function clscategoriasDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Directory categorias";
        $this->Initialize();

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @17-24FF35BF
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
    }
//End SetOrder Method

//Prepare Method @17-157AECFF
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

//Open Method @17-BADB653A
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

//SetValues Method @17-BAF0975B
    function SetValues()
    {
    }
//End SetValues Method

} //End categoriasDataSource Class @17-FCB6E20C



//Initialize Page @1-D4A506D7
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
$TemplateFileName = "redireccion.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
$Charset = $Charset ? $Charset : "windows-1252";
//End Initialize Page

//Authenticate User @1-B1A87DED
CCSecurityRedirect("1", "AccesoDenegado.php");
//End Authenticate User

//Include events file @1-905F52B0
include_once("./redireccion_events.php");
//End Include events file

//BeforeInitialize Binding @1-17AC9191
$CCSEvents["BeforeInitialize"] = "Page_BeforeInitialize";
//End BeforeInitialize Binding

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-03176A6E
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
$Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", ccsGet, NULL), $MainPage);
$Label1->HTML = true;
$Menu = new clsPanel("Menu", $MainPage);
$Menu->PlaceholderName = "Menu";
$Sidebar1 = new clsPanel("Sidebar1", $MainPage);
$Sidebar1->PlaceholderName = "Sidebar1";
$MainPage->Head = & $Head;
$MainPage->Content = & $Content;
$MainPage->Label1 = & $Label1;
$MainPage->Menu = & $Menu;
$MainPage->Sidebar1 = & $Sidebar1;
$Content->AddComponent("Label1", $Label1);
if(!is_array($Label1->Value) && !strlen($Label1->Value) && $Label1->Value !== false)
    $Label1->SetText($Redirect);

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

if ($Charset) {
    header("Content-Type: " . $ContentType . "; charset=" . $Charset);
} else {
    header("Content-Type: " . $ContentType);
}
//End Initialize Objects

//Initialize HTML Template @1-380C9A2B
$CCSEventResult = CCGetEvent($CCSEvents, "OnInitializeView", $MainPage);
$Tpl = new clsTemplate($FileEncoding, $TemplateEncoding);
if (strlen($TemplateSource)) {
    $Tpl->LoadTemplateFromStr($TemplateSource, $BlockToParse, "CP1252");
} else {
    $Tpl->LoadTemplate(PathToCurrentPage . $TemplateFileName, $BlockToParse, "CP1252");
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

//Go to destination page @1-FBA93089

	$db = new clsDBlocal_cams();
			$grupo = CCGetGroupID();
			$SQL = "select group_init.pageRedirect from group_init where group_init.grupo = " . $grupo; 
			$db->query($SQL);
			$Result = $db->next_record();
			$redirect = $result;

if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    header("Location: " . $Redirect);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-51B2573F
$Head->Show();
$Content->Show();
$Menu->Show();
$Sidebar1->Show();
$MasterPage->Tpl->SetVar("Head", $Tpl->GetVar("Panel Head"));
$MasterPage->Tpl->SetVar("Content", $Tpl->GetVar("Panel Content"));
$MasterPage->Tpl->SetVar("Menu", $Tpl->GetVar("Panel Menu"));
$MasterPage->Tpl->SetVar("Sidebar1", $Tpl->GetVar("Panel Sidebar1"));
$MasterPage->Show();
if (!isset($main_block)) $main_block = $MasterPage->HTML;
$main_block = CCConvertEncoding($main_block, $FileEncoding, $TemplateEncoding);
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-75572B8D
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBlocal_cams->close();
unset($MasterPage);
unset($categorias);
unset($Tpl);
//End Unload Page
 echo $redirect;

?>

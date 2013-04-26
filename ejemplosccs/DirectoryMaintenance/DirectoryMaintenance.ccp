<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\DirectoryMaintenance" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="71" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Link id="63" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="DirectoryMaintenance_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
		</Link>
		<Path id="2" sourceType="Table" name="Path_link_categories" connection="InternetDB" catIdField="category_id" catNameField="category_name" catParField="category_id_parent" wizardCaption="Link Categories Directory" wizardUseTemplateBlock="False" activeCollection="TableParameters" activeTableType="dataSource" dataSource="directory_categories">
			<Components>
				<Link id="4" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="PathBeginLink" fieldSource="category_name" wizardThemeItem="SorterLink" hrefSource="DirectoryMaintenance.ccp" removeParameters="category_id;edit_id;parent_id" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
				</Link>
				<Link id="5" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="PathCategory" fieldSource="category_name" wizardThemeItem="SorterLink" hrefSource="DirectoryMaintenance.ccp" removeParameters="edit_id;parent_id" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="41" sourceType="DataField" name="category_id" source="category_id"/>
					</LinkParameters>
				</Link>
				<Label id="7" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="CurrentCategory" fieldSource="category_name">
					<Components/>
					<Events/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="3" conditionType="Parameter" field="category_id" parameterSource="category_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" useIsNull="True"/>
			</TableParameters>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
		</Path>
		<Directory id="42" secured="False" sourceType="Table" name="yp_category" connection="InternetDB" dataSource="directory_categories cat, directory_categories sub" categoryID="cat_category_id" subcategoryID="sub_category_id" wizardCaption="Yp Category Directory" wizardCreatePath="False" wizardNoCategories="No categories found" activeCollection="TableParameters" activeTableType="dataSource" orderBy="cat.category_id, sub.category_id">
			<Components>
				<Link id="57" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="DirectoryMaintenance.ccp" defaultValue="&quot;Edit&quot;" removeParameters="parent_id" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="59" sourceType="DataField" name="edit_id" source="cat_category_id"/>
					</LinkParameters>
				</Link>
				<Link id="51" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="CategoryLink" fieldSource="cat_category_name" hrefSource="DirectoryMaintenance.ccp" removeParameters="edit_id;parent_id" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="52" sourceType="DataField" name="category_id" source="cat_category_id"/>
					</LinkParameters>
				</Link>
				<Link id="58" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link2" hrefSource="DirectoryMaintenance.ccp" defaultValue="&quot;Edit&quot;" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="60" sourceType="DataField" name="edit_id" source="sub_category_id"/>
						<LinkParameter id="61" sourceType="DataField" name="parent_id" source="cat_category_id"/>
					</LinkParameters>
				</Link>
				<Link id="53" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="SubcategoryLink" fieldSource="sub_category_name" hrefSource="DirectoryMaintenance.ccp" removeParameters="edit_id;parent_id" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="54" sourceType="DataField" name="category_id" source="sub_category_id"/>
					</LinkParameters>
				</Link>
				<Link id="55" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="SubcategoriesTailLink" fieldSource="cat_category_name" hrefSource="DirectoryMaintenance.ccp" wizardDefaultValue="More..." removeParameters="edit_id;parent_id" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="56" sourceType="DataField" name="category_id" source="cat_category_id"/>
					</LinkParameters>
				</Link>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="43" conditionType="Parameter" field="cat.category_id_parent" parameterSource="category_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" useIsNull="True"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="86" tableName="directory_categories" alias="cat" posWidth="207" posHeight="99" posLeft="10" posTop="10"/>
				<JoinTable id="89" tableName="directory_categories" alias="sub" posWidth="207" posHeight="98" posLeft="262" posTop="9"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="92" fieldLeft="sub.category_id_parent" fieldRight="cat.category_id" tableLeft="sub" tableRight="cat" joinType="right"/>
			</JoinLinks>
			<Fields>
				<Field id="87" tableName="cat" alias="cat_category_id" fieldName="cat.category_id"/>
				<Field id="88" tableName="cat" alias="cat_category_name" fieldName="cat.category_name"/>
				<Field id="90" tableName="sub" alias="sub_category_id" fieldName="sub.category_id"/>
				<Field id="91" tableName="sub" alias="sub_category_name" fieldName="sub.category_name"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
		</Directory>
		<Record id="23" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="InternetDB" name="form_categories" dataSource="directory_categories" errorSummator="Error" wizardCaption="Add/Edit Link Categories " wizardFormMethod="post" returnPage="DirectoryMaintenance.ccp" activeCollection="TableParameters" activeTableType="dataSource" wizardUseTemplateBlock="False" removeParameters="edit_id;parent_id">
			<Components>
				<TextBox id="24" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="category_name" fieldSource="category_name" required="True" caption="Category Name" wizardCaption="Category Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<Hidden id="29" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="category_id_parent" fieldSource="category_id_parent" required="False" caption="Category Id Parent" wizardCaption="Category Id Parent" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</Hidden>
				<Button id="25" urlType="Relative" enableValidation="True" isDefault="False" name="Insert1" operation="Insert" wizardCaption="Add">
					<Components/>
					<Events/>
				</Button>
				<Button id="26" urlType="Relative" enableValidation="True" isDefault="False" name="Update1" operation="Update" wizardCaption="Submit">
					<Components/>
					<Events/>
				</Button>
				<Button id="27" urlType="Relative" enableValidation="False" isDefault="False" name="Delete1" operation="Delete" wizardCaption="Delete">
					<Components/>
					<Events/>
				</Button>
				<Button id="28" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" operation="Cancel" wizardCaption="Cancel">
					<Components/>
					<Events/>
				</Button>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="35"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="30" conditionType="Parameter" field="category_id" parameterSource="edit_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" useIsNull="True"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions/>
			<UFormElements/>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
		</Record>
		<IncludePage id="93" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
<Components/>
<Events/>
</IncludePage>
</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="DirectoryMaintenance_events.asp" comment="'"/>
		<CodeFile id="3" language="VB" name="DirectoryMaintenance.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="DirectoryMaintenance.aspx"/>
		<CodeFile id="1" language="VB" name="DirectoryMaintenance.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="DirectoryMaintenanceDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="DirectoryMaintenance_form_categories.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeDirectory1" language="CFMLTemplates" name="DirectoryMaintenance_yp_category.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePath1" language="CFMLTemplates" name="DirectoryMaintenance_Path_link_categories.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="DirectoryMaintenance.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="DirectoryMaintenance.cfm"/>
		<CodeFile id="codeRecord1" language="CFML" name="DirectoryMaintenance_form_categories.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="Handlers" language="JSP" name="DirectoryMaintenanceHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="DirectoryMaintenance_events.php" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PerlTemplates" name="DirectoryMaintenance_events.pl" comment="#" forShow="False"/>
		<CodeFile id="Path_link_categoriesDataObject2" language="ServletTemplates" name="Path_link_categoriesDataObject.java" path="..\CCSBuild\src\DirectoryMaintenance\DirectoryMaintenance\" comment="//" forShow="False"/>
		<CodeFile id="yp_categoryDataObject42" language="ServletTemplates" name="yp_categoryDataObject.java" path="..\CCSBuild\src\DirectoryMaintenance\DirectoryMaintenance\" comment="//" forShow="False"/>
		<CodeFile id="form_categoriesDataObject23" language="ServletTemplates" name="form_categoriesDataObject.java" path="..\CCSBuild\src\DirectoryMaintenance\DirectoryMaintenance\" comment="//" forShow="False"/>
		<CodeFile id="Path_link_categoriesRow2" language="ServletTemplates" name="Path_link_categoriesRow.java" path="..\CCSBuild\src\DirectoryMaintenance\DirectoryMaintenance\" comment="//" forShow="False"/>
		<CodeFile id="yp_categoryRow42" language="ServletTemplates" name="yp_categoryRow.java" path="..\CCSBuild\src\DirectoryMaintenance\DirectoryMaintenance\" comment="//" forShow="False"/>
		<CodeFile id="form_categoriesRow23" language="ServletTemplates" name="form_categoriesRow.java" path="..\CCSBuild\src\DirectoryMaintenance\DirectoryMaintenance\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="DirectoryMaintenanceAction.java" path="..\CCSBuild\src\DirectoryMaintenance\DirectoryMaintenance\" comment="//" forShow="True" url="DirectoryMaintenance.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="DirectoryMaintenanceModel.java" path="..\CCSBuild\src\DirectoryMaintenance\DirectoryMaintenance\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="DirectoryMaintenanceView.java" path="..\CCSBuild\src\DirectoryMaintenance\DirectoryMaintenance\" comment="//" forShow="False"/>
		<CodeFile id="form_categoriesRecordEventHandler" language="ServletTemplates" name="form_categoriesRecordHandler.java" path="..\CCSBuild\src\DirectoryMaintenance\DirectoryMaintenance\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" forShow="True" url="DirectoryMaintenance.php" name="DirectoryMaintenance.php" comment="//"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="DirectoryMaintenance.cgi" name="DirectoryMaintenance.cgi" comment="#"/>
		<CodeFile id="codeDirectory1" language="CFML" forShow="False" name="DirectoryMaintenance_yp_category.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="codePath1" language="CFML" forShow="False" name="DirectoryMaintenance_Path_link_categories.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="codePage" language="CFML" forShow="True" url="DirectoryMaintenance.cfm" name="DirectoryMaintenance.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="DirectoryMaintenance.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="DirectoryMaintenance.jsp" name="DirectoryMaintenance.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="1" language="C#" name="DirectoryMaintenance.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="3" language="C#" forShow="True" url="DirectoryMaintenance.aspx" name="DirectoryMaintenance.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="2" language="C#" forShow="False" name="DirectoryMaintenanceDataProvider.cs" path="\components" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="DirectoryMaintenance.asp" name="DirectoryMaintenance.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="DirectoryMaintenance.aspx" forShow="True" url="DirectoryMaintenance.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="DirectoryMaintenanceEvents.aspx.cs" forShow="True" url="DirectoryMaintenanceEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="DirectoryMaintenance.aspx" forShow="True" url="DirectoryMaintenance.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="DirectoryMaintenanceEvents.aspx.vb" forShow="True" url="DirectoryMaintenanceEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>

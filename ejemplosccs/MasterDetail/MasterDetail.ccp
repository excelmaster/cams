<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\MasterDetail" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="22" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
			<Features/>
</IncludePage>
		<Link id="46" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link1" hrefSource="MasterDetail_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
<Features/>
</Link>
		<Grid id="23" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="employees_grid" connection="IntranetDB" dataSource="employees" orderBy="emp_name" pageSizeLimit="100" wizardCaption="List of Employees " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False">
			<Components>
				<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_id" fieldSource="emp_id">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Label>
				<Link id="24" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_name" fieldSource="emp_name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="MasterDetail.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="26" sourceType="DataField" name="emp_id" source="emp_id"/>
					</LinkParameters>
					<Attributes/>
<Features/>
</Link>
				<Link id="27" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="MasterDetail.ccp" removeParameters="emp_id" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
<Features/>
</Link>
				<Navigator id="25" type="Centered" name="Navigator" size="10" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardUsePageScroller="True">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Navigator>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
<Features/>
</Grid>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="IntranetDB" name="employees_record" dataSource="employees" errorSummator="Error" wizardCaption="Add/Edit Employees " wizardFormMethod="post" returnPage="MasterDetail.ccp" removeParameters="emp_id">
			<Components>
				<TextBox id="8" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="emp_name" fieldSource="emp_name" caption="Name" wizardCaption="Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" required="True" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</TextBox>
				<TextBox id="10" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="title" fieldSource="title" required="False" caption="Title" wizardCaption="Title" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</TextBox>
				<ListBox id="11" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" editable="True" hasErrorCollection="True" returnValueType="Number" name="department_id" fieldSource="department_id" required="False" caption="Department Id" wizardCaption="Department Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="IntranetDB" dataSource="departments" boundColumn="department_id" textColumn="department_name" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
<Features/>
</ListBox>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Button>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Button>
				<Button id="6" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Button>
			</Components>
			<Events>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="30"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="42"/>
					</Actions>
				</Event>
				<Event name="BeforeDelete" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="45"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="7" conditionType="Parameter" useIsNull="False" field="emp_id" parameterSource="emp_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
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
			<Attributes/>
<Features/>
</Record>
		<EditableGrid id="31" urlType="Relative" secured="False" emptyRows="3" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" sourceType="Table" defaultPageSize="20" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="projects_employees" wizardGridType="Tabular" wizardAllowSorting="False" wizardSortingType="Simple" wizardUsePageScroller="False" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" deleteControl="Delete1" connection="IntranetDB" dataSource="projects_employees" activeCollection="TableParameters" activeTableType="dataSource" orderBy="project_id">
			<Components>
				<Hidden id="39" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="emp_id" fieldSource="emp_id" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Hidden>
				<ListBox id="32" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="False" name="project_id" sourceType="Table" hasErrorCollection="True" fieldSource="project_id" connection="IntranetDB" dataSource="projects" boundColumn="project_id" textColumn="project_name" required="True" caption="project" orderBy="project_id" visible="Yes">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="44"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
<Features/>
</ListBox>
				<TextBox id="33" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="percent_allocation" fieldSource="percent_allocation" caption="percent allocation" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</TextBox>
				<Panel id="50" visible="True" name="Delete1_Panel" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0">
<Components>
<CheckBox id="34" fieldSourceType="CodeExpression" dataType="Boolean" editable="True" name="Delete1" checkedValue="true" uncheckedValue="false" wizardUseTemplateBlock="True" visible="Yes">
							<Components/>
							<Events/>
							<Attributes/>
<Features/>
</CheckBox>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Button id="48" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" wizardTheme="EXPack" wizardThemeType="File" wizardThemeVersion="3.0" operation="Submit">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Button>
			</Components>
			<Events>
				<Event name="BeforeBuildInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="41"/>
					</Actions>
				</Event>
				<Event name="BeforeSubmit" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="47"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="38" conditionType="Parameter" useIsNull="False" field="emp_id" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="emp_id" orderNumber="1" defaultValue="-1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields>
				<PKField id="36" tableName="projects_employees" fieldName="project_id" dataType="Integer"/>
				<PKField id="37" tableName="projects_employees" fieldName="emp_id" dataType="Integer"/>
			</PKFields>
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
			<Attributes/>
<Features/>
</EditableGrid>
		<IncludePage id="49" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="MasterDetail_events.asp" comment="'"/>
		<CodeFile id="1" language="C#" name="MasterDetail.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="MasterDetailDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="1" language="VB" name="MasterDetail.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="MasterDetailDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="MasterDetail_employees_record.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="MasterDetail_employees_grid.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeEG1" language="CFMLTemplates" name="MasterDetail_projects_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="MasterDetail.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="MasterDetail.cfm"/>
		<CodeFile id="codeRecord1" language="CFML" name="MasterDetail_employees_record.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeEG1" language="CFML" name="MasterDetail_projects_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="Handlers" language="JSP" name="MasterDetailHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="MasterDetail_events.php" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PerlTemplates" name="MasterDetail_events.pl" comment="#" forShow="False"/>
		<CodeFile id="employees_gridDataObject23" language="ServletTemplates" name="employees_gridDataObject.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="False"/>
		<CodeFile id="employees_recordDataObject2" language="ServletTemplates" name="employees_recordDataObject.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="False"/>
		<CodeFile id="projects_employeesDataObject31" language="ServletTemplates" name="projects_employeesDataObject.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="False"/>
		<CodeFile id="projects_employeesDataObjectEventHandler" language="ServletTemplates" name="projects_employeesDataObjectHandler.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="False"/>
		<CodeFile id="employees_gridRow23" language="ServletTemplates" name="employees_gridRow.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="False"/>
		<CodeFile id="employees_recordRow2" language="ServletTemplates" name="employees_recordRow.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="False"/>
		<CodeFile id="projects_employeesRow31" language="ServletTemplates" name="projects_employeesRow.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="False"/>
		<CodeFile id="PK_projects_employees31" language="ServletTemplates" name="PK_projects_employees.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="MasterDetailAction.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="True" url="MasterDetail.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="MasterDetailModel.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="MasterDetailView.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="False"/>
		<CodeFile id="employees_recordRecordEventHandler" language="ServletTemplates" name="employees_recordRecordHandler.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="False"/>
		<CodeFile id="projects_employeesEditableGridEventHandler" language="ServletTemplates" name="projects_employeesEditableGridHandler.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="False"/>
		<CodeFile id="projects_employeesproject_idEventHandler" language="ServletTemplates" name="projects_employeesproject_idHandler.java" path="..\CCSBuild\src\MasterDetail\MasterDetail\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" forShow="True" url="MasterDetail.php" name="MasterDetail.php" comment="//"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="MasterDetail.cgi" name="MasterDetail.cgi" comment="#"/>
		<CodeFile id="codeGrid1" language="CFML" forShow="False" name="MasterDetail_employees_grid.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="codePage" language="CFML" forShow="True" url="MasterDetail.cfm" name="MasterDetail.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="MasterDetail.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="MasterDetail.jsp" name="MasterDetail.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="3" language="VB" forShow="True" url="MasterDetail.aspx" name="MasterDetail.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="3" language="C#" forShow="True" url="MasterDetail.aspx" name="MasterDetail.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="MasterDetail.asp" name="MasterDetail.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="MasterDetail.aspx" forShow="True" url="MasterDetail.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="MasterDetailEvents.aspx.cs" forShow="True" url="MasterDetailEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="MasterDetail.aspx" forShow="True" url="MasterDetail.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="MasterDetailEvents.aspx.vb" forShow="True" url="MasterDetailEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
<Features/>
</Page>

<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\EditableGridAutoRows" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="2" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
			<Features/>
</IncludePage>
		<Link id="21" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link1" hrefSource="EditableGridAutoRows_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
<Features/>
</Link>
		<EditableGrid id="3" urlType="Relative" secured="False" emptyRows="30" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" sourceType="Table" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="departments" connection="IntranetDB" dataSource="departments" orderBy="department_id" pageSizeLimit="100" wizardCaption="List of Departments " wizardGridType="Tabular" wizardSortingType="Simple" wizardAltRecord="False" wizardRecordSeparator="False" deleteControl="CheckBox_Delete">
			<Components>
				<Label id="16" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="RowIDAttribute">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="RowNameAttribute">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="AddedRow">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Label>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="True" editable="False" name="RowStyleAttribute">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Label>
				<TextBox id="7" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="department_name" fieldSource="department_name" required="True" caption="Department" wizardCaption=" Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
<Features/>
</TextBox>
				<ListBox id="8" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" editable="True" hasErrorCollection="True" returnValueType="Number" name="manager_id" fieldSource="department_manager_id" required="False" caption="Manager" wizardCaption=" Manager_id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="IntranetDB" dataSource="employees" boundColumn="emp_id" textColumn="emp_name" orderBy="emp_name" visible="Yes">
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
				<Panel id="27" visible="True" name="CheckBox_Delete_Panel" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0">
<Components>
<CheckBox id="9" fieldSourceType="CodeExpression" dataType="Boolean" editable="True" name="CheckBox_Delete" checkedValue="true" uncheckedValue="false" wizardCaption="Delete" wizardUseTemplateBlock="True" visible="Yes">
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
<Button id="11" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" wizardCaption="Submit">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Button>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="17"/>
					</Actions>
				</Event>
				<Event name="BeforeExecuteDelete" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="23"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="24"/>
					</Actions>
				</Event>
				<Event name="BeforeSubmit" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="25"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields>
				<PKField id="4" tableName="departments" fieldName="department_id" dataType="Integer"/>
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
		<IncludePage id="26" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="EditableGridAutoRows_events.asp" comment="'"/>
		<CodeFile id="1" language="C#" name="EditableGridAutoRows.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="EditableGridAutoRowsDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="EditableGridAutoRows.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="EditableGridAutoRows.aspx"/>
		<CodeFile id="1" language="VB" name="EditableGridAutoRows.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="EditableGridAutoRowsDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeEG1" language="CFMLTemplates" name="EditableGridAutoRows_departments.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="EditableGridAutoRows.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="EditableGridAutoRows.cfm"/>
		<CodeFile id="codeEG1" language="CFML" name="EditableGridAutoRows_departments.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="Handlers" language="JSP" name="EditableGridAutoRowsHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="EditableGridAutoRows_events.php" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PerlTemplates" name="EditableGridAutoRows_events.pl" comment="#" forShow="False"/>
		<CodeFile id="departmentsDataObject3" language="ServletTemplates" name="departmentsDataObject.java" path="..\CCSBuild\src\EditableGridAutoRows\EditableGridAutoRows\" comment="//" forShow="False"/>
		<CodeFile id="departmentsRow3" language="ServletTemplates" name="departmentsRow.java" path="..\CCSBuild\src\EditableGridAutoRows\EditableGridAutoRows\" comment="//" forShow="False"/>
		<CodeFile id="PK_departments3" language="ServletTemplates" name="PK_departments.java" path="..\CCSBuild\src\EditableGridAutoRows\EditableGridAutoRows\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="EditableGridAutoRowsAction.java" path="..\CCSBuild\src\EditableGridAutoRows\EditableGridAutoRows\" comment="//" forShow="True" url="EditableGridAutoRows.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="EditableGridAutoRowsModel.java" path="..\CCSBuild\src\EditableGridAutoRows\EditableGridAutoRows\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="EditableGridAutoRowsView.java" path="..\CCSBuild\src\EditableGridAutoRows\EditableGridAutoRows\" comment="//" forShow="False"/>
		<CodeFile id="departmentsEditableGridEventHandler" language="ServletTemplates" name="departmentsEditableGridHandler.java" path="..\CCSBuild\src\EditableGridAutoRows\EditableGridAutoRows\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" forShow="True" url="EditableGridAutoRows.php" name="EditableGridAutoRows.php" comment="//"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="EditableGridAutoRows.cgi" name="EditableGridAutoRows.cgi" comment="#"/>
		<CodeFile id="codePage" language="CFML" forShow="True" url="EditableGridAutoRows.cfm" name="EditableGridAutoRows.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="EditableGridAutoRows.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="EditableGridAutoRows.jsp" name="EditableGridAutoRows.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="3" language="C#" forShow="True" url="EditableGridAutoRows.aspx" name="EditableGridAutoRows.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="Code" language="ASPTemplates" name="EditableGridAutoRows.asp" forShow="True" url="EditableGridAutoRows.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="EditableGridAutoRows.aspx" forShow="True" url="EditableGridAutoRows.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="EditableGridAutoRowsEvents.aspx.cs" forShow="True" url="EditableGridAutoRowsEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="EditableGridAutoRows.aspx" forShow="True" url="EditableGridAutoRows.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="EditableGridAutoRowsEvents.aspx.vb" forShow="True" url="EditableGridAutoRowsEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
<Features/>
</Page>

<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\NavRecordGrid" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="95" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
			<Features/>
</IncludePage>
		<Link id="90" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="NavRecordGrid_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
<Features/>
</Link>
		<EditableGrid id="67" urlType="Relative" secured="False" emptyRows="1" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" sourceType="Table" defaultPageSize="1" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="employees" connection="IntranetDB" dataSource="employees" orderBy="emp_id" pageSizeLimit="100" wizardCaption="List of Employees " wizardGridType="Tabular" wizardAltRecord="False" wizardRecordSeparator="False" deleteControl="Delete1" removeParameters="emp_id" activeCollection="TableParameters" activeTableType="dataSource">
			<Components>
				<TextBox id="71" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="emp_name" fieldSource="emp_name" required="True" caption="Name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</TextBox>
				<Hidden id="91" fieldSourceType="CodeExpression" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="Hidden1" defaultValue="1" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Hidden>
				<TextBox id="69" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="emp_login" fieldSource="emp_login" required="True" caption="Login" wizardCaption="Emp Login" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</TextBox>
				<TextBox id="70" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="emp_password" fieldSource="emp_password" required="True" caption="Password" wizardCaption="Emp Password" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</TextBox>
				<TextBox id="72" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="title" fieldSource="title" required="False" caption="Title" wizardCaption="Title" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</TextBox>
				<ListBox id="73" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" editable="True" hasErrorCollection="True" returnValueType="Number" name="group_id" fieldSource="group_id" required="True" caption="Group" wizardCaption="Group Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="IntranetDB" dataSource="groups" boundColumn="group_id" textColumn="group_name" orderBy="group_id" visible="Yes">
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
				<ListBox id="74" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" editable="True" hasErrorCollection="True" returnValueType="Number" name="department_id" fieldSource="department_id" required="False" caption="Department" wizardCaption="Department Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="IntranetDB" dataSource="departments" boundColumn="department_id" textColumn="department_name" orderBy="department_id" visible="Yes">
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
				<TextBox id="76" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="phone_work" fieldSource="phone_work" required="False" caption="Phone Work" wizardCaption="Phone Work" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</TextBox>
				<Panel id="97" visible="True" name="Delete1_Panel" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0">
<Components>
<CheckBox id="83" fieldSourceType="CodeExpression" dataType="Boolean" editable="True" name="Delete1" checkedValue="true" uncheckedValue="false" wizardCaption="Delete" wizardUseTemplateBlock="True" visible="Yes">
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
<Link id="87" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="NavRecordGrid.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="93" sourceType="Expression" name="emp_id" source="-1"/>
					</LinkParameters>
					<Attributes/>
<Features/>
</Link>
				<Navigator id="84" type="Centered" name="Navigator" size="10" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardUsePageScroller="True">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Navigator>
				<Button id="85" urlType="Relative" enableValidation="True" isDefault="False" name="Submit" operation="Submit" wizardCaption="Submit">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Button>
				<Button id="86" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" operation="Cancel" wizardCaption="Cancel">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Button>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="88"/>
					</Actions>
				</Event>
				<Event name="BeforeSelect" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="94"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="92" conditionType="Parameter" useIsNull="False" field="emp_id" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="emp_id" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields>
				<PKField id="68" tableName="employees" fieldName="emp_id" dataType="Integer"/>
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
		<IncludePage id="96" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="NavRecordGrid_events.asp" comment="'"/>
		<CodeFile id="3" language="VB" name="NavRecordGrid.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="NavRecordGrid.aspx"/>
		<CodeFile id="1" language="VB" name="NavRecordGrid.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="NavRecordGridDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeEG1" language="CFMLTemplates" name="NavRecordGrid_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="NavRecordGrid.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="NavRecordGrid.cfm"/>
		<CodeFile id="codeEG1" language="CFML" name="NavRecordGrid_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="Handlers" language="JSP" name="NavRecordGridHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="NavRecordGrid_events.php" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PerlTemplates" name="NavRecordGrid_events.pl" comment="#" forShow="False"/>
		<CodeFile id="employeesDataObject67" language="ServletTemplates" name="employeesDataObject.java" path="..\CCSBuild\src\NavRecordGrid\NavRecordGrid\" comment="//" forShow="False"/>
		<CodeFile id="employeesRow67" language="ServletTemplates" name="employeesRow.java" path="..\CCSBuild\src\NavRecordGrid\NavRecordGrid\" comment="//" forShow="False"/>
		<CodeFile id="PK_employees67" language="ServletTemplates" name="PK_employees.java" path="..\CCSBuild\src\NavRecordGrid\NavRecordGrid\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="NavRecordGridAction.java" path="..\CCSBuild\src\NavRecordGrid\NavRecordGrid\" comment="//" forShow="True" url="NavRecordGrid.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="NavRecordGridModel.java" path="..\CCSBuild\src\NavRecordGrid\NavRecordGrid\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="NavRecordGridView.java" path="..\CCSBuild\src\NavRecordGrid\NavRecordGrid\" comment="//" forShow="False"/>
		<CodeFile id="employeesEditableGridEventHandler" language="ServletTemplates" name="employeesEditableGridHandler.java" path="..\CCSBuild\src\NavRecordGrid\NavRecordGrid\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" forShow="True" url="NavRecordGrid.php" name="NavRecordGrid.php" comment="//"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="NavRecordGrid.cgi" name="NavRecordGrid.cgi" comment="#"/>
		<CodeFile id="codePage" language="CFML" forShow="True" url="NavRecordGrid.cfm" name="NavRecordGrid.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="NavRecordGrid.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="NavRecordGrid.jsp" name="NavRecordGrid.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="1" language="C#" name="NavRecordGrid.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="3" language="C#" forShow="True" url="NavRecordGrid.aspx" name="NavRecordGrid.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="2" language="C#" forShow="False" name="NavRecordGridDataProvider.cs" path="\components" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="NavRecordGrid.asp" name="NavRecordGrid.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="NavRecordGrid.aspx" forShow="True" url="NavRecordGrid.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="NavRecordGridEvents.aspx.cs" forShow="True" url="NavRecordGridEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="NavRecordGrid.aspx" forShow="True" url="NavRecordGrid.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="NavRecordGridEvents.aspx.vb" forShow="True" url="NavRecordGridEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
<Features/>
</Page>

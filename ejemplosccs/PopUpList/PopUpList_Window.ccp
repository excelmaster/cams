<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\PopUpList" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0" isService="False" scriptingSupport="Automatic">
	<Components>
		<Link id="21" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link1" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
		</Link>
		<Record id="8" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="employees_deparSearch" wizardCaption="Search Employees, Departments " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="PopUpList_Window.ccp" editableComponentTypeString="Record">
			<Components>
				<TextBox id="10" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="s_emp_name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<ListBox id="11" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="s_department_id" wizardCaption="Department Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" sourceType="Table" connection="IntranetDB" dataSource="departments" boundColumn="department_id" textColumn="department_name" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<Button id="9" urlType="Relative" enableValidation="True" isDefault="False" name="DoSearch" operation="Search" wizardCaption="Search">
					<Components/>
					<Events/>
				</Button>
			</Components>
			<Events/>
			<TableParameters/>
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
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" connection="IntranetDB" dataSource="employees, departments" name="employees" orderBy="department_name" pageSizeLimit="100" wizardCaption="List of Employees, Departments " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" activeCollection="TableParameters" activeTableType="dataSource" wizardUsePageScroller="True">
			<Components>
				<Link id="17" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_name" fieldSource="emp_name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefType="Page" urlType="Relative" preserveParameters="GET" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
				</Link>
				<Label id="16" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="department_name" fieldSource="department_name" wizardCaption="Department Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="18" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="title" fieldSource="title" wizardCaption="Title" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Navigator id="22" type="Simple" name="Navigator1" wizardPagingType="Custom" wizardPageNumbers="Simple" wizardTotalPages="True" wizardImages="Images" wizardHideDisabled="False" wizardFirst="True" wizardPrev="True" wizardNext="True" wizardLast="True" wizardFirstText="First" wizardPrevText="Prev" wizardNextText="Next" wizardLastText="Last" wizardOfText="of" size="10" wizardUsePageScroller="True" pageSizes="1;5;10;25;50">
					<Components/>
					<Events/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeBuildSelect" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="20"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="23"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="35" conditionType="Parameter" useIsNull="False" dataType="Integer" field="departments.department_id" leftBrackets="0" logicOperator="And" orderNumber="2" parameterSource="s_department_id" parameterType="URL" rightBrackets="0" searchConditionType="Equal"/>
<TableParameter id="36" conditionType="Parameter" useIsNull="False" dataType="Text" field="employees.emp_login" leftBrackets="1" logicOperator="Or" parameterSource="s_emp_name" parameterType="URL" searchConditionType="Contains"/>
<TableParameter id="37" conditionType="Parameter" useIsNull="False" dataType="Text" field="employees.emp_name" logicOperator="Or" parameterSource="s_emp_name" parameterType="URL" rightBrackets="1" searchConditionType="Contains"/>
</TableParameters>
			<JoinTables>
				<JoinTable id="32" posHeight="180" posLeft="10" posTop="10" posWidth="151" tableName="employees"/>
<JoinTable id="33" posHeight="120" posLeft="182" posTop="10" posWidth="158" tableName="departments"/>
</JoinTables>
			<JoinLinks>
				<JoinTable2 id="34" conditionType="Equal" fieldLeft="departments.department_id" fieldRight="employees.department_id" joinType="inner" tableLeft="departments" tableRight="employees"/>
</JoinLinks>
			<Fields>
				<Field id="38" fieldName="employees.*" tableName="employees"/>
<Field id="39" fieldName="departments.*" tableName="departments"/>
</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="PopUpList_Window_events.asp" comment="'"/>
		<CodeFile id="1" language="C#" name="PopUpList_Window.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="PopUpList_WindowDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="PopUpList_Window.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="PopUpList_Window.aspx"/>
		<CodeFile id="1" language="VB" name="PopUpList_Window.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="PopUpList_WindowDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="PopUpList_Window_employees_deparSearch.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="PopUpList_Window_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="PopUpList_Window.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="PopUpList_Window.cfm"/>
		<CodeFile id="codeGrid1" language="CFML" name="PopUpList_Window_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="Handlers" language="JSP" name="PopUpList_WindowHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="PopUpList_Window_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="PopUpList_Window.php" comment="//" forShow="True" url="PopUpList_Window.php"/>
		<CodeFile id="Events" language="PerlTemplates" name="PopUpList_Window_events.pl" comment="#" forShow="False"/>
		<CodeFile id="employeesDataObject2" language="ServletTemplates" name="employeesDataObject.java" path="..\CCSBuild\src\PopUpList\PopUpList_Window\" comment="//" forShow="False"/>
		<CodeFile id="employeesDataObjectEventHandler" language="ServletTemplates" name="employeesDataObjectHandler.java" path="..\CCSBuild\src\PopUpList\PopUpList_Window\" comment="//" forShow="False"/>
		<CodeFile id="employeesRow2" language="ServletTemplates" name="employeesRow.java" path="..\CCSBuild\src\PopUpList\PopUpList_Window\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="PopUpList_WindowAction.java" path="..\CCSBuild\src\PopUpList\PopUpList_Window\" comment="//" forShow="True" url="PopUpList_Window.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="PopUpList_WindowModel.java" path="..\CCSBuild\src\PopUpList\PopUpList_Window\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="PopUpList_WindowView.java" path="..\CCSBuild\src\PopUpList\PopUpList_Window\" comment="//" forShow="False"/>
		<CodeFile id="employeesGridEventHandler" language="ServletTemplates" name="employeesGridHandler.java" path="..\CCSBuild\src\PopUpList\PopUpList_Window\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="PopUpList_Window.cgi" name="PopUpList_Window.cgi" comment="#"/>
		<CodeFile id="codeRecord1" language="CFML" forShow="False" name="PopUpList_Window_employees_deparSearch.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="codePage" language="CFML" forShow="True" url="PopUpList_Window.cfm" name="PopUpList_Window.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="PopUpList_Window.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="PopUpList_Window.jsp" name="PopUpList_Window.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="3" language="C#" forShow="True" url="PopUpList_Window.aspx" name="PopUpList_Window.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="Code" language="ASPTemplates" name="PopUpList_Window.asp" forShow="True" url="PopUpList_Window.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="PopUpList_Window.aspx" forShow="True" url="PopUpList_Window.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="PopUpList_WindowEvents.aspx.cs" forShow="True" url="PopUpList_WindowEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="PopUpList_Window.aspx" forShow="True" url="PopUpList_Window.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="PopUpList_WindowEvents.aspx.vb" forShow="True" url="PopUpList_WindowEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>

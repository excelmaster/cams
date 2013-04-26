<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\NavGrid" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="31" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Link id="32" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link1" hrefSource="NavGrid_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
		</Link>
		<Record id="24" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="employeesSearch" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="NavGrid.ccp">
			<Components>
				<TextBox id="27" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="s_emp_name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<Button id="33" urlType="Relative" enableValidation="True" isDefault="False" name="DoSearch" operation="Search" wizardCaption="Search" wizardThemeItem="FooterIMG" wizardButtonImage="ButtonSearchOn">
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
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="5" connection="IntranetDB" name="employees" dataSource="employees, departments" orderBy="emp_name" pageSizeLimit="100" wizardCaption="List of Employees, Departments " wizardGridType="Tabular" wizardSortingType="Simple" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardAllowSorting="True" activeCollection="TableParameters" activeTableType="dataSource" wizardUsePageScroller="True">
			<Components>
				<Sorter id="9" visible="True" name="Sorter_emp_name" column="emp_name, emp_id" wizardCaption="Emp Name" wizardSortingType="Simple" wizardControl="emp_name" connection="IntranetDB" columnReverse="emp_name desc, emp_id">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="10" visible="True" name="Sorter_title" column="title, emp_id" wizardCaption="Title" wizardSortingType="Simple" wizardControl="title" connection="IntranetDB" columnReverse="title desc, emp_id">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="11" visible="True" name="Sorter_department_name" column="department_name, emp_id" wizardCaption="Department Name" wizardSortingType="Simple" wizardControl="department_name" connection="IntranetDB" columnReverse="department_name desc, emp_id">
					<Components/>
					<Events/>
				</Sorter>
				<Link id="15" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_name" fieldSource="emp_name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="NavGrid_Detail.ccp" removeParameters="employeesPage" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
				</Link>
				<Label id="16" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="title" fieldSource="title" wizardCaption="Title" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="department_name" fieldSource="department_name" wizardCaption="Department Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Navigator id="29" type="Simple" name="Navigator1" wizardPagingType="Custom" wizardPageNumbers="Simple" wizardTotalPages="True" wizardImages="Images" wizardHideDisabled="False" wizardFirst="True" wizardPrev="True" wizardNext="True" wizardLast="True" wizardFirstText="First" wizardPrevText="Prev" wizardNextText="Next" wizardLastText="Last" wizardOfText="of" size="10" wizardUsePageScroller="True">
					<Components/>
					<Events/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="22"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="26" conditionType="Parameter" field="emp_name" parameterSource="s_emp_name" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="1" useIsNull="False"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="3" tableName="employees" posWidth="143" posHeight="302" posLeft="10" posTop="10"/>
				<JoinTable id="5" tableName="departments" posWidth="100" posHeight="100" posLeft="204" posTop="8"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="7" fieldLeft="departments.department_id" fieldRight="employees.department_id" tableLeft="departments" tableRight="employees" conditionType="Equal" joinType="inner"/>
			</JoinLinks>
			<Fields>
				<Field id="4" tableName="employees" fieldName="employees.*"/>
				<Field id="6" tableName="departments" fieldName="departments.*"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
		</Grid>
		<IncludePage id="34" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
<Components/>
<Events/>
</IncludePage>
</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="NavGrid_events.asp" comment="'"/>
		<CodeFile id="1" language="C#" name="NavGrid.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="NavGrid.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="NavGrid.aspx"/>
		<CodeFile id="1" language="VB" name="NavGrid.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="NavGrid_employeesSearch.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="NavGrid_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="NavGrid.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="NavGrid.cfm"/>
		<CodeFile id="codeGrid1" language="CFML" name="NavGrid_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="Handlers" language="JSP" name="NavGridHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="NavGrid_events.php" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PerlTemplates" name="NavGrid_events.pl" comment="#" forShow="False"/>
		<CodeFile id="employeesDataObject2" language="ServletTemplates" name="employeesDataObject.java" path="..\CCSBuild\src\NavGrid\NavGrid\" comment="//" forShow="False"/>
		<CodeFile id="employeesRow2" language="ServletTemplates" name="employeesRow.java" path="..\CCSBuild\src\NavGrid\NavGrid\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="NavGridAction.java" path="..\CCSBuild\src\NavGrid\NavGrid\" comment="//" forShow="True" url="NavGrid.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="NavGridModel.java" path="..\CCSBuild\src\NavGrid\NavGrid\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="NavGridView.java" path="..\CCSBuild\src\NavGrid\NavGrid\" comment="//" forShow="False"/>
		<CodeFile id="employeesGridEventHandler" language="ServletTemplates" name="employeesGridHandler.java" path="..\CCSBuild\src\NavGrid\NavGrid\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" forShow="True" url="NavGrid.php" name="NavGrid.php" comment="//"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="NavGrid.cgi" name="NavGrid.cgi" comment="#"/>
		<CodeFile id="codeRecord1" language="CFML" forShow="False" name="NavGrid_employeesSearch.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="codePage" language="CFML" forShow="True" url="NavGrid.cfm" name="NavGrid.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="NavGrid.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="NavGrid.jsp" name="NavGrid.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="2" language="VB" forShow="False" name="NavGridDataProvider.vb" path="\components" comment="'"/>
		<CodeFile id="3" language="C#" forShow="True" url="NavGrid.aspx" name="NavGrid.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="2" language="C#" forShow="False" name="NavGridDataProvider.cs" path="\components" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="NavGrid.asp" name="NavGrid.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="NavGrid.aspx" forShow="True" url="NavGrid.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="NavGridEvents.aspx.cs" forShow="True" url="NavGridEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="NavGrid.aspx" forShow="True" url="NavGrid.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="NavGridEvents.aspx.vb" forShow="True" url="NavGridEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>

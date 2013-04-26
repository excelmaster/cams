<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\MultiSelectSearch" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="2" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Link id="52" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link1" hrefSource="MultiSelectSearch_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
		</Link>
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="employeesSearch" wizardCaption="Search Employees " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="MultiSelectSearch.ccp">
			<Components>
				<TextBox id="6" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="s_keyword" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<ListBox id="22" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" editable="True" hasErrorCollection="True" returnValueType="Number" name="s_project" wizardEmptyCaption="Select Value" connection="IntranetDB" dataSource="projects" boundColumn="project_id" textColumn="project_name" orderBy="project_id" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<Button id="54" urlType="Relative" enableValidation="True" isDefault="False" name="DoSearch" operation="Search" wizardCaption="Search" wizardThemeItem="FooterIMG" wizardButtonImage="ButtonSearchOn">
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
		<Grid id="3" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="10" name="employees" connection="IntranetDB" dataSource="SELECT DISTINCT employees.emp_id, employees.emp_name, employees.title, employees.phone_work, employees.email FROM employees LEFT  JOIN projects_employees ON employees.emp_id = projects_employees.emp_id WHERE (emp_name LIKE '%{s_keyword}%' OR title LIKE '%{s_keyword}%') AND (projects_employees.project_id IN ({s_project}) OR '{s_project}'='0') ORDER BY employees.emp_id" pageSizeLimit="100" wizardCaption="List of Employees " wizardGridType="Tabular" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" parameterTypeListName="ParameterTypeList" activeCollection="SQLParameters">
			<Components>
				<Label id="15" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_name" fieldSource="emp_name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="16" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="title" fieldSource="title" wizardCaption="Title" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="18" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="phone_work" fieldSource="phone_work" wizardCaption="Phone Work" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="email" fieldSource="email" wizardCaption="Email" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Navigator id="20" type="Centered" name="Navigator" size="10" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardUsePageScroller="True">
					<Components/>
					<Events/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeBuildSelect" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="53"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="8" conditionType="Parameter" field="emp_name" parameterSource="s_emp_name" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="1" useIsNull="False"/>
				<TableParameter id="9" conditionType="Parameter" field="title" parameterSource="s_title" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="2" useIsNull="False"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="41" tableName="employees" posWidth="122" posHeight="292" posLeft="10" posTop="10"/>
				<JoinTable id="43" tableName="projects_employees" posWidth="133" posHeight="89" posLeft="167" posTop="14"/>
				<JoinTable id="45" tableName="projects" posWidth="100" posHeight="100" posLeft="331" posTop="10"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="47" fieldLeft="projects_employees.emp_id" fieldRight="employees.emp_id" tableLeft="projects_employees" tableRight="employees" conditionType="Equal" joinType="inner"/>
				<JoinTable2 id="48" fieldLeft="projects.project_id" fieldRight="projects_employees.project_id" tableLeft="projects" tableRight="projects_employees" conditionType="Equal" joinType="inner"/>
			</JoinLinks>
			<Fields>
				<Field id="42" tableName="employees" fieldName="employees.*"/>
				<Field id="44" tableName="projects_employees" fieldName="projects_employees.*"/>
				<Field id="46" tableName="projects" fieldName="project_name"/>
			</Fields>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="49" variable="s_project" parameterType="URL" defaultValue="&quot;0&quot;" dataType="Text" parameterSource="s_project"/>
				<SQLParameter id="51" variable="s_keyword" parameterType="URL" dataType="Text" parameterSource="s_keyword"/>
			</SQLParameters>
			<SecurityGroups/>
		</Grid>
		<IncludePage id="55" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
<Components/>
<Events/>
</IncludePage>
</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="MultiSelectSearch.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="MultiSelectSearch.aspx"/>
		<CodeFile id="1" language="VB" name="MultiSelectSearch.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="MultiSelectSearchDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="MultiSelectSearch_employeesSearch.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="MultiSelectSearch_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="MultiSelectSearch.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="MultiSelectSearch.cfm"/>
		<CodeFile id="codeRecord1" language="CFML" name="MultiSelectSearch_employeesSearch.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFML" name="MultiSelectSearch_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="MultiSelectSearch.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="MultiSelectSearch.cfm"/>
		<CodeFile id="Handlers" language="JSP" name="MultiSelectSearchHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="MultiSelectSearch.php" comment="//" forShow="True" url="MultiSelectSearch.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="MultiSelectSearch.cgi" comment="#" forShow="True" url="MultiSelectSearch.cgi"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="MultiSelectSearch.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="MultiSelectSearch.jsp" name="MultiSelectSearch.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="employeesDataObject3" language="ServletTemplates" name="employeesDataObject.java" path="..\CCSBuild\src\MultiSelectSearch\MultiSelectSearch\" comment="//" forShow="False"/>
		<CodeFile id="employeesRow3" language="ServletTemplates" name="employeesRow.java" path="..\CCSBuild\src\MultiSelectSearch\MultiSelectSearch\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="MultiSelectSearchAction.java" path="..\CCSBuild\src\MultiSelectSearch\MultiSelectSearch\" comment="//" forShow="True" url="MultiSelectSearch.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="MultiSelectSearchModel.java" path="..\CCSBuild\src\MultiSelectSearch\MultiSelectSearch\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="MultiSelectSearchView.java" path="..\CCSBuild\src\MultiSelectSearch\MultiSelectSearch\" comment="//" forShow="False"/>
		<CodeFile id="employeesDataObjectEventHandler" language="ServletTemplates" forShow="False" name="employeesDataObjectHandler.java" path="..\CCSBuild\src\MultiSelectSearch\MultiSelectSearch\" comment="//"/>
		<CodeFile id="employeesGridEventHandler" language="ServletTemplates" forShow="False" name="employeesGridHandler.java" path="..\CCSBuild\src\MultiSelectSearch\MultiSelectSearch\" comment="//"/>
		<CodeFile id="3" language="C#" name="MultiSelectSearch.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="MultiSelectSearch.aspx"/>
		<CodeFile id="1" language="C#" name="MultiSelectSearch.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="MultiSelectSearchDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Events" language="ASPTemplates" name="MultiSelectSearch_events.asp" comment="'" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="MultiSelectSearch.asp" comment="'" forShow="True" url="MultiSelectSearch.asp"/>
		<CodeFile id="Events" language="PHPTemplates" name="MultiSelectSearch_events.php" forShow="False" comment="//"/>
		<CodeFile id="Events" language="PerlTemplates" name="MultiSelectSearch_events.pl" forShow="False" comment="#"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>

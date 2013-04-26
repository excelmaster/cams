<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\MultiColumnPrimaryKey" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="83" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Link id="73" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link1" hrefSource="MultiColumnPrimaryKey_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
		</Link>
		<Record id="40" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="projects_emp_Search" wizardCaption="Search Projects Employees, Employees, Projects " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="MultiColumnPrimaryKey.ccp">
			<Components>
				<ListBox id="42" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="s_project_id" wizardCaption="Project Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" sourceType="Table" connection="IntranetDB" dataSource="projects" boundColumn="project_id" textColumn="project_name" orderBy="project_name" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="84" tableName="projects" posLeft="10" posTop="10" posWidth="100" posHeight="100"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<ListBox id="43" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="s_emp_id" wizardCaption="Emp Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" sourceType="Table" connection="IntranetDB" dataSource="employees" boundColumn="emp_id" textColumn="emp_name" orderBy="emp_name" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="85" tableName="employees" posLeft="10" posTop="10" posWidth="100" posHeight="100"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<Button id="88" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" wizardTheme="EXPack" wizardThemeType="File" wizardThemeVersion="3.0" operation="Search">
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
		<Grid id="29" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" connection="IntranetDB" name="projects_emp_grid" dataSource="projects_employees, employees, projects" orderBy="project_name, employees.emp_id" pageSizeLimit="100" wizardCaption="List of Projects Employees, Employees, Projects " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" activeCollection="TableParameters" activeTableType="dataSource">
			<Components>
				<Link id="46" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="project_name" fieldSource="project_name" wizardCaption="Project Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="MultiColumnPrimaryKey.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="69" sourceType="DataField" name="project_id" source="project_id"/>
						<LinkParameter id="70" sourceType="DataField" name="emp_id" source="emp_id"/>
					</LinkParameters>
				</Link>
				<Label id="47" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_name" fieldSource="emp_name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="48" fieldSourceType="DBColumn" dataType="Float" html="False" editable="False" name="percent_allocation" fieldSource="percent_allocation" wizardCaption="Percent Allocation" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Link id="68" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link1" hrefSource="MultiColumnPrimaryKey.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
				</Link>
				<Navigator id="49" type="Centered" name="Navigator" size="10" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardUsePageScroller="True">
					<Components/>
					<Events/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="44" conditionType="Parameter" useIsNull="False" field="projects_employees.project_id" parameterSource="s_project_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
				<TableParameter id="45" conditionType="Parameter" useIsNull="False" field="projects_employees.emp_id" parameterSource="s_emp_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="2"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="75" tableName="projects_employees" posWidth="100" posHeight="100" posLeft="10" posTop="10"/>
				<JoinTable id="77" tableName="employees" posWidth="138" posHeight="180" posLeft="182" posTop="132"/>
				<JoinTable id="79" tableName="projects" posWidth="100" posHeight="100" posLeft="196" posTop="16"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="81" fieldLeft="employees.emp_id" fieldRight="projects_employees.emp_id" tableLeft="employees" tableRight="projects_employees" conditionType="Equal" joinType="inner"/>
				<JoinTable2 id="82" fieldLeft="projects.project_id" fieldRight="projects_employees.project_id" tableLeft="projects" tableRight="projects_employees" conditionType="Equal" joinType="inner"/>
			</JoinLinks>
			<Fields>
				<Field id="76" tableName="projects_employees" fieldName="projects_employees.*"/>
				<Field id="78" tableName="employees" fieldName="emp_name"/>
				<Field id="80" tableName="projects" fieldName="project_name"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
		</Grid>
		<Record id="58" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="None" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="IntranetDB" name="projects_emp_rec" dataSource="projects_employees" errorSummator="Error" wizardCaption="Add/Edit Projects Employees " wizardFormMethod="post" returnPage="MultiColumnPrimaryKey.ccp" activeCollection="TableParameters" activeTableType="dataSource">
			<Components>
				<ListBox id="66" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" editable="True" hasErrorCollection="True" returnValueType="Number" name="project_id" wizardEmptyCaption="Select Value" connection="IntranetDB" dataSource="projects" boundColumn="project_id" fieldSource="project_id" textColumn="project_name" required="True" caption="Project" orderBy="project_name" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="86" tableName="projects" posLeft="10" posTop="10" posWidth="100" posHeight="100"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<ListBox id="64" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" editable="True" hasErrorCollection="True" returnValueType="Number" name="emp_id" fieldSource="emp_id" required="True" caption="Employee" wizardCaption="Emp Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="IntranetDB" dataSource="employees" boundColumn="emp_id" textColumn="emp_name" orderBy="emp_name" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="87" tableName="employees" posLeft="10" posTop="10" posWidth="100" posHeight="100"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<TextBox id="65" fieldSourceType="DBColumn" dataType="Float" html="False" editable="True" hasErrorCollection="True" name="percent_allocation" fieldSource="percent_allocation" required="False" caption="Percent Allocation" wizardCaption="Percent Allocation" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Value" actionCategory="Validation" id="74" name="percent_allocation" maximumValue="100" errorMessage="The value in field 'Percent Allocation' cannot be greater than 100."/>
							</Actions>
						</Event>
					</Events>
				</TextBox>
				<Button id="89" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add">
					<Components/>
					<Events/>
				</Button>
				<Button id="90" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit">
					<Components/>
					<Events>
					</Events>
				</Button>
				<Button id="91" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete">
					<Components/>
					<Events/>
				</Button>
				<Button id="92" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Delete">
					<Components/>
					<Events/>
				</Button>
			</Components>
			<Events>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="72"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="63" conditionType="Parameter" useIsNull="False" field="project_id" parameterSource="project_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
				<TableParameter id="71" conditionType="Parameter" useIsNull="False" field="emp_id" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="emp_id" orderNumber="2"/>
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
		<CodeFile id="Events" language="ASPTemplates" name="MultiColumnPrimaryKey_events.asp" comment="'" forShow="False"/>
		<CodeFile id="2" language="C#" name="MultiColumnPrimaryKeyDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="MultiColumnPrimaryKey.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="MultiColumnPrimaryKey.aspx"/>
		<CodeFile id="1" language="VB" name="MultiColumnPrimaryKey.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="MultiColumnPrimaryKeyDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="MultiColumnPrimaryKey_projects_emp_Search.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeRecord2" language="CFMLTemplates" name="MultiColumnPrimaryKey_projects_emp_rec.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="MultiColumnPrimaryKey_projects_emp_grid.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="MultiColumnPrimaryKey.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="MultiColumnPrimaryKey.cfm"/>
		<CodeFile id="codeRecord2" language="CFML" name="MultiColumnPrimaryKey_projects_emp_rec.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="Handlers" language="JSP" name="MultiColumnPrimaryKeyHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="MultiColumnPrimaryKey_events.php" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PerlTemplates" name="MultiColumnPrimaryKey_events.pl" comment="#" forShow="False"/>
		<CodeFile id="projects_emp_gridDataObject29" language="ServletTemplates" name="projects_emp_gridDataObject.java" path="..\CCSBuild\src\MultiColumnPrimaryKey\MultiColumnPrimaryKey\" comment="//" forShow="False"/>
		<CodeFile id="projects_emp_recDataObject58" language="ServletTemplates" name="projects_emp_recDataObject.java" path="..\CCSBuild\src\MultiColumnPrimaryKey\MultiColumnPrimaryKey\" comment="//" forShow="False"/>
		<CodeFile id="projects_emp_gridRow29" language="ServletTemplates" name="projects_emp_gridRow.java" path="..\CCSBuild\src\MultiColumnPrimaryKey\MultiColumnPrimaryKey\" comment="//" forShow="False"/>
		<CodeFile id="projects_emp_recRow58" language="ServletTemplates" name="projects_emp_recRow.java" path="..\CCSBuild\src\MultiColumnPrimaryKey\MultiColumnPrimaryKey\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="MultiColumnPrimaryKeyAction.java" path="..\CCSBuild\src\MultiColumnPrimaryKey\MultiColumnPrimaryKey\" comment="//" forShow="True" url="MultiColumnPrimaryKey.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="MultiColumnPrimaryKeyModel.java" path="..\CCSBuild\src\MultiColumnPrimaryKey\MultiColumnPrimaryKey\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="MultiColumnPrimaryKeyView.java" path="..\CCSBuild\src\MultiColumnPrimaryKey\MultiColumnPrimaryKey\" comment="//" forShow="False"/>
		<CodeFile id="projects_emp_recRecordEventHandler" language="ServletTemplates" name="projects_emp_recRecordHandler.java" path="..\CCSBuild\src\MultiColumnPrimaryKey\MultiColumnPrimaryKey\" comment="//" forShow="False"/>
		<CodeFile id="projects_emp_recpercent_allocationEventHandler" language="ServletTemplates" name="projects_emp_recpercent_allocationHandler.java" path="..\CCSBuild\src\MultiColumnPrimaryKey\MultiColumnPrimaryKey\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" forShow="True" url="MultiColumnPrimaryKey.php" name="MultiColumnPrimaryKey.php" comment="//"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="MultiColumnPrimaryKey.cgi" name="MultiColumnPrimaryKey.cgi" comment="#"/>
		<CodeFile id="codeRecord1" language="CFML" forShow="False" name="MultiColumnPrimaryKey_projects_emp_Search.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="codeGrid1" language="CFML" forShow="False" name="MultiColumnPrimaryKey_projects_emp_grid.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="codePage" language="CFML" forShow="True" url="MultiColumnPrimaryKey.cfm" name="MultiColumnPrimaryKey.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="MultiColumnPrimaryKey.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="MultiColumnPrimaryKey.jsp" name="MultiColumnPrimaryKey.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="3" language="C#" forShow="True" url="MultiColumnPrimaryKey.aspx" name="MultiColumnPrimaryKey.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1" language="C#" forShow="False" name="MultiColumnPrimaryKey.aspx.cs" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" name="MultiColumnPrimaryKey.asp" forShow="True" url="MultiColumnPrimaryKey.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="MultiColumnPrimaryKey.aspx" forShow="True" url="MultiColumnPrimaryKey.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="MultiColumnPrimaryKeyEvents.aspx.cs" forShow="True" url="MultiColumnPrimaryKeyEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="MultiColumnPrimaryKey.aspx" forShow="True" url="MultiColumnPrimaryKey.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="MultiColumnPrimaryKeyEvents.aspx.vb" forShow="True" url="MultiColumnPrimaryKeyEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>

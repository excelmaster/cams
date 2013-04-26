<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\ManyToManyListboxes" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="54" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Link id="50" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link1" hrefSource="ManyToManyListboxes_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
		</Link>
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="15" connection="IntranetDB" dataSource="employees" name="employees" orderBy="emp_name" pageSizeLimit="100" wizardCaption="List of Employees, Departments " wizardGridType="Tabular" wizardSortingType="Simple" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False">
			<Components>
				<Sorter id="10" visible="True" name="Sorter_department_name" column="emp_id" wizardCaption="Department Name" wizardSortingType="Simple" wizardControl="department_name" connection="IntranetDB">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="9" visible="True" name="Sorter_emp_name" column="emp_name, emp_id" wizardCaption="Emp Name" wizardSortingType="Simple" wizardControl="emp_name" connection="IntranetDB" columnReverse="emp_name desc, emp_id">
					<Components/>
					<Events/>
				</Sorter>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_id" fieldSource="emp_id">
					<Components/>
					<Events/>
				</Label>
				<Link id="11" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_name" fieldSource="emp_name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="ManyToManyListboxes.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="24" sourceType="DataField" name="emp_id" source="emp_id"/>
					</LinkParameters>
				</Link>
				<Link id="25" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" removeParameters="emp_id" hrefSource="ManyToManyListboxes.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
				</Link>
				<Navigator id="13" type="Centered" name="Navigator" size="10" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardUsePageScroller="True">
					<Components/>
					<Events/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables>
				<JoinTable id="21" tableName="employees" posWidth="100" posHeight="100" posLeft="10" posTop="10"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="22" tableName="employees" fieldName="*"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
		</Grid>
		<Record id="14" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="IntranetDB" name="employees_record" dataSource="employees" errorSummator="Error" wizardCaption="Add/Edit Employees " wizardFormMethod="post" returnPage="ManyToManyListboxes.ccp" removeParameters="emp_id">
			<Components>
				<TextBox id="20" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="emp_name" fieldSource="emp_name" required="True" caption="Name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<ListBox id="46" fieldSourceType="CodeExpression" sourceType="Table" dataType="Integer" editable="True" hasErrorCollection="True" returnValueType="Number" name="AvailableListBox" wizardEmptyCaption="Select Value" connection="IntranetDB" dataSource="projects" boundColumn="project_id" textColumn="project_name" orderBy="project_id" visible="Yes">
					<Components/>
					<Events>
						<Event name="BeforeBuildSelect" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="52"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<Button id="38" urlType="Relative" enableValidation="False" isDefault="False" name="RightButton">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="43"/>
							</Actions>
						</Event>
					</Events>
				</Button>
				<Button id="39" urlType="Relative" enableValidation="False" isDefault="False" name="LeftButton">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="42"/>
							</Actions>
						</Event>
					</Events>
				</Button>
				<ListBox id="44" fieldSourceType="CodeExpression" sourceType="Table" dataType="Integer" editable="True" hasErrorCollection="True" returnValueType="Number" name="LinkedListBox" wizardEmptyCaption="Select Value" connection="IntranetDB" dataSource="projects, projects_employees" boundColumn="project_id" textColumn="project_name" activeCollection="TableParameters" activeTableType="dataSource" orderBy="projects.project_id" visible="Yes">
					<Components/>
					<Events>
					</Events>
					<TableParameters>
						<TableParameter id="61" conditionType="Parameter" useIsNull="False" field="emp_id" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" defaultValue="-1" parameterSource="emp_id" orderNumber="1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="80" tableName="projects" posWidth="96" posHeight="100" posLeft="10" posTop="10"/>
						<JoinTable id="82" tableName="projects_employees" posWidth="100" posHeight="100" posLeft="219" posTop="10"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="83" fieldLeft="projects_employees.project_id" fieldRight="projects.project_id" tableLeft="projects_employees" tableRight="projects" conditionType="Equal" joinType="inner"/>
					</JoinLinks>
					<Fields>
						<Field id="81" tableName="projects" fieldName="projects.*"/>
					</Fields>
				</ListBox>
				<Hidden id="48" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="LinkedID" visible="Yes">
					<Components/>
					<Events/>
				</Hidden>
				<Button id="15" urlType="Relative" enableValidation="True" isDefault="False" name="Insert1" operation="Insert" wizardCaption="Add">
					<Components/>
					<Events/>
				</Button>
				<Button id="16" urlType="Relative" enableValidation="True" isDefault="False" name="Update1" operation="Update" wizardCaption="Submit">
					<Components/>
					<Events/>
				</Button>
				<Button id="17" urlType="Relative" enableValidation="False" isDefault="False" name="Delete1" operation="Delete" wizardCaption="Delete">
					<Components/>
					<Events/>
				</Button>
				<Button id="18" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" operation="Cancel" wizardCaption="Cancel">
					<Components/>
					<Events/>
				</Button>
			</Components>
			<Events>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="35"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="36"/>
					</Actions>
				</Event>
				<Event name="OnSubmit" type="Client">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="47"/>
					</Actions>
				</Event>
				<Event name="BeforeDelete" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="49"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="19" conditionType="Parameter" field="emp_id" parameterSource="emp_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" useIsNull="False"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="32" tableName="employees" posWidth="100" posHeight="100" posLeft="10" posTop="10"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="33" tableName="employees" fieldName="*"/>
			</Fields>
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
		<IncludePage id="84" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
<Components/>
<Events/>
</IncludePage>
</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="ManyToManyListboxes_events.asp" comment="'"/>
		<CodeFile id="1" language="C#" name="ManyToManyListboxes.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="ManyToManyListboxesDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="ManyToManyListboxes.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="ManyToManyListboxes.aspx"/>
		<CodeFile id="1" language="VB" name="ManyToManyListboxes.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="ManyToManyListboxesDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="ManyToManyListboxes_employees_record.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="ManyToManyListboxes_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="ManyToManyListboxes.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="ManyToManyListboxes.cfm"/>
		<CodeFile id="codeRecord1" language="CFML" name="ManyToManyListboxes_employees_record.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFML" name="ManyToManyListboxes_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="ManyToManyListboxes.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="ManyToManyListboxes.cfm"/>
		<CodeFile id="Handlers" language="JSP" name="ManyToManyListboxesHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="ManyToManyListboxes_events.php" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PerlTemplates" name="ManyToManyListboxes_events.pl" comment="#" forShow="False"/>
		<CodeFile id="employeesDataObject3" language="ServletTemplates" name="employeesDataObject.java" path="..\CCSBuild\src\ManyToManyListboxes\ManyToManyListboxes\" comment="//" forShow="False"/>
		<CodeFile id="employees_recordDataObject14" language="ServletTemplates" name="employees_recordDataObject.java" path="..\CCSBuild\src\ManyToManyListboxes\ManyToManyListboxes\" comment="//" forShow="False"/>
		<CodeFile id="employeesRow3" language="ServletTemplates" name="employeesRow.java" path="..\CCSBuild\src\ManyToManyListboxes\ManyToManyListboxes\" comment="//" forShow="False"/>
		<CodeFile id="employees_recordRow14" language="ServletTemplates" name="employees_recordRow.java" path="..\CCSBuild\src\ManyToManyListboxes\ManyToManyListboxes\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="ManyToManyListboxesAction.java" path="..\CCSBuild\src\ManyToManyListboxes\ManyToManyListboxes\" comment="//" forShow="True" url="ManyToManyListboxes.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="ManyToManyListboxesModel.java" path="..\CCSBuild\src\ManyToManyListboxes\ManyToManyListboxes\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="ManyToManyListboxesView.java" path="..\CCSBuild\src\ManyToManyListboxes\ManyToManyListboxes\" comment="//" forShow="False"/>
		<CodeFile id="employees_recordRecordEventHandler" language="ServletTemplates" name="employees_recordRecordHandler.java" path="..\CCSBuild\src\ManyToManyListboxes\ManyToManyListboxes\" comment="//" forShow="False"/>
		<CodeFile id="employees_recordAvailableListBoxEventHandler" language="ServletTemplates" name="employees_recordAvailableListBoxHandler.java" path="..\CCSBuild\src\ManyToManyListboxes\ManyToManyListboxes\" comment="//" forShow="False"/>
		<CodeFile id="employees_recordLinkedListBoxEventHandler" language="ServletTemplates" name="employees_recordLinkedListBoxHandler.java" path="..\CCSBuild\src\ManyToManyListboxes\ManyToManyListboxes\" comment="//" forShow="False"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="ManyToManyListboxes.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="ManyToManyListboxes.jsp" name="ManyToManyListboxes.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="Code" language="PHPTemplates" forShow="True" url="ManyToManyListboxes.php" name="ManyToManyListboxes.php" comment="//"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="ManyToManyListboxes.cgi" name="ManyToManyListboxes.cgi" comment="#"/>
		<CodeFile id="3" language="C#" forShow="True" url="ManyToManyListboxes.aspx" name="ManyToManyListboxes.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="ManyToManyListboxes.asp" name="ManyToManyListboxes.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="ManyToManyListboxes.aspx" forShow="True" url="ManyToManyListboxes.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="ManyToManyListboxesEvents.aspx.cs" forShow="True" url="ManyToManyListboxesEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="ManyToManyListboxes.aspx" forShow="True" url="ManyToManyListboxes.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="ManyToManyListboxesEvents.aspx.vb" forShow="True" url="ManyToManyListboxesEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>

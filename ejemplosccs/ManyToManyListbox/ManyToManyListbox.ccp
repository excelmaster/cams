<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\ManyToManyListbox" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="2" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Link id="69" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="ManyToManyListbox_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
		</Link>
		<Grid id="49" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="projects" connection="IntranetDB" dataSource="projects" pageSizeLimit="100" wizardCaption="List of Projects " wizardGridType="Tabular" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" activeCollection="TableParameters" orderBy="project_id">
			<Components>
				<Sorter id="50" visible="True" name="Sorter_project_id" column="project_id" wizardCaption=" Id" wizardSortingType="Simple" wizardControl="project_id">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="51" visible="True" name="Sorter_project_name" column="project_name, project_id" wizardCaption=" Name" wizardSortingType="Simple" wizardControl="project_name" connection="IntranetDB" columnReverse="project_name desc, project_id">
					<Components/>
					<Events/>
				</Sorter>
				<Label id="52" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="False" name="project_id" fieldSource="project_id" wizardCaption=" Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Link id="53" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="project_name" fieldSource="project_name" wizardCaption=" Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="ManyToManyListbox.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="67" sourceType="DataField" name="project_id" source="project_id"/>
					</LinkParameters>
				</Link>
				<Link id="61" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="project_add" hrefSource="ManyToManyListbox.ccp" removeParameters="project_id" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
				</Link>
				<Navigator id="54" type="Centered" name="Navigator" size="10" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardUsePageScroller="True">
					<Components/>
					<Events/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables>
				<JoinTable id="71" tableName="projects" posLeft="10" posTop="10" posWidth="109" posHeight="88"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
		</Grid>
		<Record id="55" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="IntranetDB" name="projects_rec" dataSource="projects" errorSummator="Error" wizardCaption="Add/Edit Projects " wizardFormMethod="post" returnPage="ManyToManyListbox.ccp" removeParameters="project_id">
			<Components>
				<TextBox id="60" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="project_name" fieldSource="project_name" required="True" caption="Project" wizardCaption=" Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<ListBox id="62" fieldSourceType="CodeExpression" sourceType="Table" dataType="Integer" editable="True" hasErrorCollection="True" returnValueType="Number" name="employee_list" wizardEmptyCaption="Select Value" connection="IntranetDB" dataSource="employees" boundColumn="emp_id" textColumn="emp_name" orderBy="emp_id" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="72" tableName="employees" posLeft="10" posTop="10" posWidth="117" posHeight="180"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<Button id="56" urlType="Relative" enableValidation="True" isDefault="False" name="Insert1" operation="Insert" wizardCaption="Add">
					<Components/>
					<Events/>
				</Button>
				<Button id="57" urlType="Relative" enableValidation="True" isDefault="False" name="Update1" operation="Update" wizardCaption="Submit">
					<Components/>
					<Events/>
				</Button>
				<Button id="58" urlType="Relative" enableValidation="False" isDefault="False" name="Delete1" operation="Delete" wizardCaption="Delete">
					<Components/>
					<Events/>
				</Button>
				<Button id="68" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" operation="Cancel">
					<Components/>
					<Events/>
				</Button>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="63"/>
					</Actions>
				</Event>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="64"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="65"/>
					</Actions>
				</Event>
				<Event name="BeforeDelete" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="70"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="59" conditionType="Parameter" field="project_id" parameterSource="project_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" useIsNull="False"/>
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
		<IncludePage id="73" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
<Components/>
<Events/>
</IncludePage>
</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="ManyToManyListbox_events.asp" comment="'"/>
		<CodeFile id="1" language="C#" name="ManyToManyListbox.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="ManyToManyListbox.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="ManyToManyListbox.aspx"/>
		<CodeFile id="1" language="VB" name="ManyToManyListbox.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="ManyToManyListboxDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="ManyToManyListbox_projects_rec.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="ManyToManyListbox_projects.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="ManyToManyListbox.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="ManyToManyListbox.cfm"/>
		<CodeFile id="codeRecord1" language="CFML" name="ManyToManyListbox_projects_rec.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="Handlers" language="JSP" name="ManyToManyListboxHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="ManyToManyListbox_events.php" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PerlTemplates" name="ManyToManyListbox_events.pl" comment="#" forShow="False"/>
		<CodeFile id="projectsDataObject49" language="ServletTemplates" name="projectsDataObject.java" path="..\CCSBuild\src\ManyToManyListbox\ManyToManyListbox\" comment="//" forShow="False"/>
		<CodeFile id="projects_recDataObject55" language="ServletTemplates" name="projects_recDataObject.java" path="..\CCSBuild\src\ManyToManyListbox\ManyToManyListbox\" comment="//" forShow="False"/>
		<CodeFile id="projectsRow49" language="ServletTemplates" name="projectsRow.java" path="..\CCSBuild\src\ManyToManyListbox\ManyToManyListbox\" comment="//" forShow="False"/>
		<CodeFile id="projects_recRow55" language="ServletTemplates" name="projects_recRow.java" path="..\CCSBuild\src\ManyToManyListbox\ManyToManyListbox\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="ManyToManyListboxAction.java" path="..\CCSBuild\src\ManyToManyListbox\ManyToManyListbox\" comment="//" forShow="True" url="ManyToManyListbox.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="ManyToManyListboxModel.java" path="..\CCSBuild\src\ManyToManyListbox\ManyToManyListbox\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="ManyToManyListboxView.java" path="..\CCSBuild\src\ManyToManyListbox\ManyToManyListbox\" comment="//" forShow="False"/>
		<CodeFile id="projects_recRecordEventHandler" language="ServletTemplates" name="projects_recRecordHandler.java" path="..\CCSBuild\src\ManyToManyListbox\ManyToManyListbox\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" forShow="True" url="ManyToManyListbox.php" name="ManyToManyListbox.php" comment="//"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="ManyToManyListbox.cgi" name="ManyToManyListbox.cgi" comment="#"/>
		<CodeFile id="codeGrid1" language="CFML" forShow="False" name="ManyToManyListbox_projects.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="codePage" language="CFML" forShow="True" url="ManyToManyListbox.cfm" name="ManyToManyListbox.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="ManyToManyListbox.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="ManyToManyListbox.jsp" name="ManyToManyListbox.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="3" language="C#" forShow="True" url="ManyToManyListbox.aspx" name="ManyToManyListbox.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="2" language="C#" forShow="False" name="ManyToManyListboxDataProvider.cs" path="\components" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="ManyToManyListbox.asp" name="ManyToManyListbox.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="ManyToManyListbox.aspx" forShow="True" url="ManyToManyListbox.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="ManyToManyListboxEvents.aspx.cs" forShow="True" url="ManyToManyListboxEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="ManyToManyListbox.aspx" forShow="True" url="ManyToManyListbox.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="ManyToManyListboxEvents.aspx.vb" forShow="True" url="ManyToManyListboxEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>

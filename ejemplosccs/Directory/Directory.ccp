<Page id="1" templateExtension="html" relativePath="..\.." fullRelativePath=".\ejemplosccs\Directory" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0" isService="False">
	<Components>
		<IncludePage id="140" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="85" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="Directory_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Path id="77" sourceType="Table" name="NewPath1" connection="InternetDB" dataSource="directory_categories" activeCollection="TableParameters" activeTableType="dataSource" catIdField="category_id" catParField="category_id_parent">
			<Components>
				<Link id="78" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="PathBeginLink" wizardDefaultValue="Main" wizardThemeItem="SorterLink" fieldSource="category_name" hrefSource="Directory.ccp" removeParameters="category_id" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="79" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="PathCategory" wizardThemeItem="SorterLink" fieldSource="category_name" hrefSource="Directory.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="82" sourceType="DataField" name="category_id" source="category_id"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="80" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="CurrentCategory" fieldSource="category_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="81" conditionType="Parameter" field="category_id" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" useIsNull="True" parameterSource="category_id" orderNumber="1"/>
			</TableParameters>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<PKFields/>
			<Attributes/>
			<Features/>
		</Path>
		<Directory id="8" secured="False" sourceType="Table" name="yp_categories" connection="InternetDB" dataSource="directory_categories cat, directory_categories sub" grouping="cat_category_id" wizardCreatePath="True" wizardNoCategories="No categories found" columns="2" subcategories="4" wizardUseTemplateBlock="False" activeCollection="TableParameters" activeTableType="dataSource" categoryID="cat_category_id" subcategoryID="sub_category_id" orderBy="cat.category_id, sub.category_id">
			<Components>
				<Link id="9" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="CategoryLink" fieldSource="cat_category_name" hrefSource="Directory.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="10" sourceType="DataField" name="category_id" source="cat_category_id"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="11" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="SubcategoryLink" fieldSource="sub_category_name" hrefSource="Directory.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="12" sourceType="DataField" name="category_id" source="sub_category_id"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="13" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="SubcategoriesTailLink" fieldSource="cat_category_name" hrefSource="Directory.ccp" wizardDefaultValue="More..." visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="14" sourceType="DataField" name="category_id" source="cat_category_id"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="84"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="16" conditionType="Parameter" field="cat.category_id_parent" parameterSource="category_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" useIsNull="True"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="201" tableName="directory_categories" alias="cat" posWidth="208" posHeight="163" posLeft="10" posTop="10"/>
				<JoinTable id="204" tableName="directory_categories" alias="sub" posWidth="200" posHeight="156" posLeft="261" posTop="12"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="207" fieldLeft="sub.category_id_parent" fieldRight="cat.category_id" tableLeft="sub" tableRight="cat" joinType="right"/>
			</JoinLinks>
			<Fields>
				<Field id="202" tableName="cat" alias="cat_category_id" fieldName="cat.category_id"/>
				<Field id="203" tableName="cat" alias="cat_category_name" fieldName="cat.category_name"/>
				<Field id="205" tableName="sub" alias="sub_category_id" fieldName="sub.category_id"/>
				<Field id="206" tableName="sub" alias="sub_category_name" fieldName="sub.category_name"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<PKFields/>
			<Attributes/>
			<Features/>
		</Directory>
		<Grid id="24" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" connection="InternetDB" dataSource="directory_items, directory_categories, states" name="yp_grid" pageSizeLimit="100" wizardCaption="List of Yp Listings, States " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" activeCollection="TableParameters" activeTableType="dataSource" orderBy="item_id">
			<Components>
				<Sorter id="25" visible="True" name="Sorter_item_name" column="item_name, item_id" wizardCaption="Item Name" wizardSortingType="SimpleDir" connection="InternetDB" columnReverse="item_name desc, item_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="26" visible="True" name="Sorter_address" column="address, item_id" wizardCaption="Address" wizardSortingType="SimpleDir" connection="InternetDB" columnReverse="address desc, item_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="27" visible="True" name="Sorter_city" column="city, item_id" wizardCaption="City" wizardSortingType="SimpleDir" connection="InternetDB" columnReverse="city desc, item_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="28" visible="True" name="Sorter_phone" column="phone, item_id" wizardCaption="Phone" wizardSortingType="SimpleDir" connection="InternetDB" columnReverse="phone desc, item_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="29" visible="True" name="Sorter_zip" column="zip, item_id" wizardCaption="Zip" wizardSortingType="SimpleDir" connection="InternetDB" columnReverse="zip desc, item_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="30" visible="True" name="Sorter_email" column="email, item_id" wizardCaption="Email" wizardSortingType="SimpleDir" connection="InternetDB" columnReverse="email desc, item_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="31" visible="True" name="Sorter_url" column="url, item_id" wizardCaption="Url" wizardSortingType="SimpleDir" connection="InternetDB" columnReverse="url desc, item_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="76" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="category_name" fieldSource="category_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="33" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="item_name" fieldSource="item_name" wizardCaption="Item Name" wizardSize="50" wizardMaxLength="100" wizardIsPassword="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="34" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="address" fieldSource="address" wizardCaption="Address" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="35" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="city" fieldSource="city" wizardCaption="City" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="36" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="phone" fieldSource="phone" wizardCaption="Phone" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="37" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="zip" fieldSource="zip" wizardCaption="Zip" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="138" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Database" urlType="Relative" preserveParameters="None" editable="False" name="email" fieldSource="email" hrefSource="email" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="139" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Database" urlType="Relative" preserveParameters="None" editable="False" name="url" fieldSource="url" hrefSource="url" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Navigator id="41" type="Simple" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="|&lt;" wizardPrev="True" wizardPrevText="&lt;&lt;" wizardNext="True" wizardNextText="&gt;&gt;" wizardLast="True" wizardLastText="&gt;|" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="False" wizardHideDisabled="False" wizardOfText="of" size="10" wizardUsePageScroller="True" pageSizes="1;5;10;25;50">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="42"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="43" conditionType="Parameter" field="directory_items.category_id" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="category_id" orderNumber="1" useIsNull="True"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="224" tableName="directory_items" posWidth="107" posHeight="235" posLeft="10" posTop="10"/>
				<JoinTable id="234" tableName="directory_categories" posWidth="131" posHeight="100" posLeft="230" posTop="10"/>
				<JoinTable id="236" tableName="states" posWidth="100" posHeight="100" posLeft="235" posTop="124"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="238" fieldLeft="directory_items.category_id" fieldRight="directory_categories.category_id" tableLeft="directory_items" tableRight="directory_categories" conditionType="Equal" joinType="inner"/>
				<JoinTable2 id="239" fieldLeft="directory_items.state_id" fieldRight="states.state_id" tableLeft="directory_items" tableRight="states" conditionType="Equal" joinType="left"/>
			</JoinLinks>
			<Fields>
				<Field id="225" tableName="directory_items" fieldName="item_id"/>
				<Field id="226" tableName="directory_items" alias="directory_items_category_id" fieldName="directory_items.category_id"/>
				<Field id="227" tableName="directory_items" fieldName="item_name"/>
				<Field id="228" tableName="directory_items" fieldName="address"/>
				<Field id="229" tableName="directory_items" fieldName="city"/>
				<Field id="230" tableName="directory_items" fieldName="zip"/>
				<Field id="231" tableName="directory_items" fieldName="phone"/>
				<Field id="232" tableName="directory_items" fieldName="email"/>
				<Field id="233" tableName="directory_items" fieldName="url"/>
				<Field id="235" tableName="directory_categories" fieldName="category_name"/>
				<Field id="237" tableName="states" fieldName="state_name"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<PKFields/>
			<Attributes/>
			<Features/>
		</Grid>
		<IncludePage id="240" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="Directory_events.asp" comment="'"/>
		<CodeFile id="1" language="C#" name="Directory.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="Directory.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Directory.aspx"/>
		<CodeFile id="1" language="VB" name="Directory.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="Directory_yp_grid.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeDirectory1" language="CFMLTemplates" name="Directory_yp_categories.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePath1" language="CFMLTemplates" name="Directory_NewPath1.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="Directory.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="Directory.cfm"/>
		<CodeFile id="codeGrid1" language="CFML" name="Directory_yp_grid.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeDirectory1" language="CFML" name="Directory_yp_categories.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="Handlers" language="JSP" name="DirectoryHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="Directory_events.php" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PerlTemplates" name="Directory_events.pl" comment="#" forShow="False"/>
		<CodeFile id="NewPath1DataObject77" language="ServletTemplates" name="NewPath1DataObject.java" path="..\CCSBuild\src\Directory\Directory\" comment="//" forShow="False"/>
		<CodeFile id="yp_categoriesDataObject8" language="ServletTemplates" name="yp_categoriesDataObject.java" path="..\CCSBuild\src\Directory\Directory\" comment="//" forShow="False"/>
		<CodeFile id="yp_gridDataObject24" language="ServletTemplates" name="yp_gridDataObject.java" path="..\CCSBuild\src\Directory\Directory\" comment="//" forShow="False"/>
		<CodeFile id="NewPath1Row77" language="ServletTemplates" name="NewPath1Row.java" path="..\CCSBuild\src\Directory\Directory\" comment="//" forShow="False"/>
		<CodeFile id="yp_categoriesRow8" language="ServletTemplates" name="yp_categoriesRow.java" path="..\CCSBuild\src\Directory\Directory\" comment="//" forShow="False"/>
		<CodeFile id="yp_gridRow24" language="ServletTemplates" name="yp_gridRow.java" path="..\CCSBuild\src\Directory\Directory\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="DirectoryAction.java" path="..\CCSBuild\src\Directory\Directory\" comment="//" forShow="True" url="Directory.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="DirectoryModel.java" path="..\CCSBuild\src\Directory\Directory\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="DirectoryView.java" path="..\CCSBuild\src\Directory\Directory\" comment="//" forShow="False"/>
		<CodeFile id="yp_categoriesDirectoryEventHandler" language="ServletTemplates" name="yp_categoriesDirectoryHandler.java" path="..\CCSBuild\src\Directory\Directory\" comment="//" forShow="False"/>
		<CodeFile id="yp_gridGridEventHandler" language="ServletTemplates" name="yp_gridGridHandler.java" path="..\CCSBuild\src\Directory\Directory\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="Directory.asp" name="Directory.asp" comment="'"/>
		<CodeFile id="Code" language="PHPTemplates" forShow="True" url="Directory.php" name="Directory.php" comment="//"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="Directory.cgi" name="Directory.cgi" comment="#"/>
		<CodeFile id="codePath1" language="CFML" forShow="False" name="Directory_NewPath1.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="codePage" language="CFML" forShow="True" url="Directory.cfm" name="Directory.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="Directory.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="Directory.jsp" name="Directory.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="3" language="C#" forShow="True" url="Directory.aspx" name="Directory.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="2" language="C#" forShow="False" name="DirectoryDataProvider.cs" path="\components" comment="//"/>
		<CodeFile id="2" language="VB" forShow="False" name="DirectoryDataProvider.vb" path="\components" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="Directory.aspx" forShow="True" url="Directory.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="DirectoryEvents.aspx.cs" forShow="True" url="DirectoryEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="Directory.aspx" forShow="True" url="Directory.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="DirectoryEvents.aspx.vb" forShow="True" url="DirectoryEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>

<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" useDesign="True" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp" wizardTheme="None" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<Panel id="2" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="3" visible="True" name="Content" contentPlaceholder="Content">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="5" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<Path id="6" sourceType="Table" name="Path_categorias" connection="local_cams" dataSource="categorias" catIdField="category_id" catNameField="Category_name" catParField="Category_id_parent" wizardTypeComponent="Path" wizardCaption="{res:categorias_DirectoryForm}" wizardTheme="Black" wizardThemeType="File" PathID="Sidebar1Path_categorias" composition="5">
					<Components>
						<Link id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="PathBeginLink" fieldSource="Category_name" wizardThemeItem="SorterLink" wizardTheme="Black" wizardThemeType="File" hrefSource="main.ccp" removeParameters="category_id" PathID="Sidebar1Path_categoriasPathBeginLink">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="PathCategory" fieldSource="Category_name" wizardThemeItem="SorterLink" wizardTheme="Black" wizardThemeType="File" hrefSource="main.ccp">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="11" sourceType="DataField" format="yyyy-mm-dd" name="category_id" source="category_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="12" fieldSourceType="DBColumn" dataType="Text" html="False" name="CurrentCategory" fieldSource="Category_name" wizardTheme="Black" wizardThemeType="File" PathID="Sidebar1Path_categoriasCurrentCategory">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="29" conditionType="Parameter" useIsNull="True" dataType="Integer" field="category_id" logicOperator="And" orderNumber="1" parameterSource="category_id" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="30" conditionType="Parameter" useIsNull="False" dataType="Integer" field="groupid" logicOperator="And" parameterSource="groupid" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="28" posHeight="120" posLeft="10" posTop="10" posWidth="127" tableName="categorias"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="31" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="32" dataType="Integer" fieldName="category_id" tableName="categorias"/>
					</PKFields>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Path>
				<Directory id="13" secured="False" sourceType="Table" name="categorias" connection="local_cams" originalDataSource="categorias" dataSource="categorias cat, categorias sub" categoryID="cat_category_id" subcategoryID="sub_category_id" columns="2" wizardTheme="Black" wizardCreatePath="True" wizardNoCategories="{res:CCS_NoCategories}" wizardCaptionPath="{res:categorias_DirectoryForm}" wizardUseInterVariables="True" changedCaptionDirectory="False" wizardThemeApplyTo="Component" directoryAddTemplatePanel="False" composition="5" isParent="True" wizardThemeVersion="3.0">
					<Components>
						<Link id="22" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="CategoryLink" fieldSource="cat_Category_name" wizardTheme="Black" hrefSource="main.ccp" PathID="Sidebar1categoriasCategoryLink" wizardThemeVersion="3.0">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="23" sourceType="DataField" format="yyyy-mm-dd" name="category_id" source="cat_category_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="SubcategoryLink" fieldSource="sub_Category_name" wizardTheme="Black" hrefSource="main.ccp" PathID="Sidebar1categoriasSubcategoryLink" wizardThemeVersion="3.0">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="25" sourceType="DataField" format="yyyy-mm-dd" name="category_id" source="sub_category_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="26" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="SubcategoriesTailLink" fieldSource="cat_Category_name" hrefSource="main.ccp" wizardTheme="Black" wizardDefaultValue="{res:CCS_More}" PathID="Sidebar1categoriasSubcategoriesTailLink" wizardThemeVersion="3.0">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="27" sourceType="DataField" format="yyyy-mm-dd" name="category_id" source="cat_category_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="14" conditionType="Parameter" useIsNull="True" field="cat.Category_id_parent" parameterSource="category_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="15" tableName="categorias" alias="cat"/>
						<JoinTable id="16" tableName="categorias" alias="sub"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="17" fieldRight="sub.Category_id_parent" fieldLeft="cat.category_id" tableLeft="cat" tableRight="sub" joinType="left"/>
					</JoinLinks>
					<Fields>
						<Field id="18" tableName="cat" alias="cat_category_id" fieldName="cat.category_id"/>
						<Field id="19" tableName="cat" alias="cat_Category_name" fieldName="cat.Category_name"/>
						<Field id="20" tableName="sub" alias="sub_category_id" fieldName="sub.category_id"/>
						<Field id="21" tableName="sub" alias="sub_Category_name" fieldName="sub.Category_name"/>
					</Fields>
					<PKFields/>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Directory>
			</Components>
			<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="33"/>
</Actions>
</Event>
</Events>
			<Attributes/>
			<Features/>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="main.php" forShow="True" url="main.php" comment="//" codePage="windows-1252"/>
		<CodeFile id="Events" language="PHPTemplates" name="main_events.php" forShow="False" comment="//" codePage="windows-1252"/>
</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
	</Events>
</Page>

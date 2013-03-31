<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" useDesign="True" needGeneration="0" accessDeniedPage="AccesoDenegado.ccp" wizardTheme="None" wizardThemeVersion="3.0" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="26" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="27" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Directory id="17" secured="False" sourceType="Table" name="categorias" connection="local_cams" originalDataSource="categorias" dataSource="categorias cat, categorias sub" categoryID="cat_category_id" subcategoryID="sub_category_id" columns="3" wizardTheme="Austere" wizardCreatePath="True" wizardCaptionPath="Directorio Categorias Directorio" wizardUseInterVariables="False" changedCaptionDirectory="False" wizardThemeApplyTo="Component" directoryAddTemplatePanel="False" composition="2" isParent="True" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="18" conditionType="Parameter" useIsNull="True" field="cat.Category_id_parent" parameterSource="category_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="19" tableName="categorias" alias="cat"/>
						<JoinTable id="20" tableName="categorias" alias="sub"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="21" fieldRight="sub.Category_id_parent" fieldLeft="cat.category_id" tableLeft="cat" tableRight="sub" joinType="left"/>
					</JoinLinks>
					<Fields>
						<Field id="22" tableName="cat" alias="cat_category_id" fieldName="cat.category_id"/>
						<Field id="23" tableName="cat" alias="cat_Category_name" fieldName="cat.Category_name"/>
						<Field id="24" tableName="sub" alias="sub_category_id" fieldName="sub.category_id"/>
						<Field id="25" tableName="sub" alias="sub_Category_name" fieldName="sub.Category_name"/>
					</Fields>
					<PKFields/>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Directory>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="28" visible="True" name="Menu" contentPlaceholder="Menu">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="29" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="redireccion.php" forShow="True" url="redireccion.php" comment="//" codePage="windows-1252"/>
		<CodeFile id="Events" language="PHPTemplates" name="redireccion_events.php" forShow="False" comment="//" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="7" groupID="1"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="BeforeInitialize" type="Server">
			<Actions>
				<Action actionName="Print Text" actionCategory="General" id="8" expr="$redirect"/>
			</Actions>
		</Event>
	</Events>
</Page>

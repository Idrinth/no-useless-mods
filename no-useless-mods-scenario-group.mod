<?xml version="1.0" encoding="UTF-8"?>

<ModuleFile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >

	<UiMod name="NoUselessMods-ScenarioGroup" version="1.6.5" date="2021-04-17" >

		<Author name="Idrinth" />
		
		<VersionSettings gameVersion="1.4.8" windowsVersion="1.0" savedVariablesVersion="1.0" />

        <WARInfo>
			<Categories>
				<Category name="OTHER" />
			</Categories>
      	</WARInfo>
		<Description text="Disables useless mods" />
		<Replaces name="EA_ScenarioGroupWindow" />
		<Dependencies>
			<Dependency name="Careful Core Functions" />
			<Dependency name="EA_OverheadMapWindow" />
		</Dependencies>
		<Files>
            <File name="no-useless-mods-scenario-group.lua" />
		</Files>
		<OnInitialize>
            <CallFunction name="NoUselessMods.ScenarioGroup.Initialize" />
		</OnInitialize>
	</UiMod>

</ModuleFile>
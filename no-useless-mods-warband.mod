<?xml version="1.0" encoding="UTF-8"?>

<ModuleFile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >

	<UiMod name="NoUselessMods-Warband" version="1.6.1" date="2021-04-02" >

		<Author name="Idrinth" />
		
		<VersionSettings gameVersion="1.4.8" windowsVersion="1.0" savedVariablesVersion="1.0" />

        <WARInfo>
			<Categories>
				<Category name="OTHER" />
			</Categories>
      	</WARInfo>
		<Description text="Disables useless mods" />
		<Replaces name="EA_BattlegroupHUD" />
		<Dependencies>
			<Dependency name="Careful Core Functions" />
		</Dependencies>
		<Files>
			<File name="no-useless-mods-warband.lua"/>
		</Files>
	</UiMod>

</ModuleFile>
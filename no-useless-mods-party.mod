<?xml version="1.0" encoding="UTF-8"?>

<ModuleFile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >

	<UiMod name="NoUselessMods-Party" version="1.6.4" date="2021-04-16" >

		<Author name="Idrinth" />

        <WARInfo>
			<Categories>
				<Category name="OTHER" />
			</Categories>
      	</WARInfo>		
		<VersionSettings gameVersion="1.4.8" windowsVersion="1.0" savedVariablesVersion="1.0" />
		<Description text="Disables useless mods" />
		<Files>
			<File name="no-useless-mods-party.lua"/>
		</Files>
		<OnInitialize>
		</OnInitialize>
		<Dependencies>
			<Dependency name="Careful Core Functions" />
		</Dependencies>		
		<Replaces name="EA_GroupWindow" />
	</UiMod>

</ModuleFile>
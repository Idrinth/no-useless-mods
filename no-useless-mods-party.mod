<?xml version="1.0" encoding="UTF-8"?>

<ModuleFile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >

	<UiMod name="NoUselessMods-Party" version="1.2.0" date="2021-03-20" >

		<Author name="Idrinth" />

        <WARInfo>
			<Categories>
				<Category name="OTHER" />
			</Categories>
      	</WARInfo>		
		<VersionSettings gameVersion="1.4.8" windowsVersion="1.0" savedVariablesVersion="1.0" />
		<Description text="Disables useless mods" />
		<Files>
            <File name="no-useless-mods-party.lua" />
		</Files>
		<OnInitialize>
            <CallFunction name="NoParty.Initialize" />
		</OnInitialize>
	</UiMod>

</ModuleFile>
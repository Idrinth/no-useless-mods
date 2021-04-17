<?xml version="1.0" encoding="UTF-8"?>

<ModuleFile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >

	<UiMod name="NoUselessMods-FriendSuggester" version="1.6.5" date="2021-04-17" >

		<Author name="Idrinth" />
		
		<VersionSettings gameVersion="1.4.8" windowsVersion="1.0" savedVariablesVersion="1.0" />

        <WARInfo>
			<Categories>
				<Category name="OTHER" />
			</Categories>
      	</WARInfo>
		<Description text="Disables useless mods" />
		<Files>
            <File name="no-useless-mods-friendsuggester.lua" />
		</Files>
		<OnInitialize>
            <CallFunction name="NoUselessMods.FriendSuggester.Initialize" />
		</OnInitialize>
		<Dependencies>
			<Dependency name="Careful Core Functions" />
		</Dependencies>
	</UiMod>

</ModuleFile>
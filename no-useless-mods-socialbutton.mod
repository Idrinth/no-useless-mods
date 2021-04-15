<?xml version="1.0" encoding="UTF-8"?>

<ModuleFile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >

	<UiMod name="NoUselessMods-SocialButton" version="1.6.2" date="2021-04-15" >

		<Author name="Idrinth" />
		
		<VersionSettings gameVersion="1.4.8" windowsVersion="1.0" savedVariablesVersion="1.0" />

        <WARInfo>
			<Categories>
				<Category name="OTHER" />
			</Categories>
      	</WARInfo>
		<Files>
            <File name="no-useless-mods-socialbutton.lua" />
		</Files>
		<OnInitialize>
            <CallFunction name="NoUselessMods.SocialButton.Initialize" />
		</OnInitialize>
		<Description text="Disables useless mods" />
		<Dependencies>
			<Dependency name="Careful Core Functions" />
		</Dependencies>
	</UiMod>

</ModuleFile>
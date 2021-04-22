<?xml version="1.0" encoding="UTF-8"?>
<ModuleFile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">   
  <UiMod name="MouseHint" version="1.0.0" date="2021-04-15" >
    <Author name="Idrinth"/>
    <Description text="A help to find your cursor" />      
    <VersionSettings gameVersion="1.4.8" />      
    <Dependencies>
    </Dependencies>             
    <Files>         
      <File name="mouse-hint.lua" />
      <File name="window.xml" />
    </Files>      
    <SavedVariables/>
    <OnInitialize>
      <CallFunction name="MouseHint.OnInitialize" />
    </OnInitialize>
    <OnUpdate>
      <CallFunction name="MouseHint.OnUpdate" />
    </OnUpdate>
    <OnShutdown/>
  </UiMod>
</ModuleFile>
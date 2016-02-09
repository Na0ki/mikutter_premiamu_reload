# -*- coding: utf-8 -*-

Plugin.create(:premiamu_reload) do
  command(:premiamu_reload,
          name: "りろーど",
          condition: ->(m){ true },
          visible: true,
          # icon: Skin.get(File.join(__dir__, "ahiru240.jpg")),
          icon: "#{__dir__}/reload.png",
          role: :window) do |opt|
            Plugin.uninstall(:mikutter_premiamu)
            Miquire::Plugin.load(:mikutter_premiamu)
          end
end

#-*- coding: utf-8 -*-

Plugin.create(:ldesu) do
  command(:meu,
          name: 'めうめう',
          condition: lambda {|opt| true },
          visible: true,
          role: :timeline) do |opt|
  opt.messages.each { 
	ls = "めめめめめめめ めうめうーっ！(」*ﾟﾛﾟ)」めめめ めうめうーっ！(」*ﾟﾛﾟ)」*ﾟﾛﾟ)」 ぺーったんぺったんぺったんぺったん 大好き～っ☆⌒ヽ(*'､＾*)"
	Service.primary.post(:message => "#{ls}")     
     }
  end
end	

#-*- coding: utf-8 -*-

Plugin.create(:thin) do
  command(:thin,
          name: 'チン',
          condition: lambda {|opt| true },
          visible: true,
          role: :timeline) do |opt|
      opt.messages.each { |m|
	ls="( ^o^)Г☎ﾁﾝｯ "
        Service.primary.post(:message => "@#{m.user.idname} #{ls * rand(10)}", :replyto => m)
      }
  end
end


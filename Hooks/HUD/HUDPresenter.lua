NepHook:Post(HUDPresenter, "init", function(self, hud)
    --self._hud_panel:child("present_panel"):set_visible(true)
end)

NepHook:Post(HUDPresenter, "_present_information", function(self, params)
    local present_panel = self._hud_panel:child("present_panel")
    local title = self._bg_box:child("title")
    local text = self._bg_box:child("text")

    title:set_font(Idstring("fonts/font_large_mf"))
    text:set_font(Idstring("fonts/font_large_mf"))
    title:set_font_size(24)
    text:set_font_size(18)

    title:set_text(utf8.to_upper(params.title or ""))
    text:set_text(utf8.to_upper(params.text))
    title:set_visible(true)
    text:set_visible(true)

    local _, _, w, _ = title:text_rect()
	title:set_w(w)
	local _, _, w2, _ = text:text_rect()
	text:set_w(w2)
	local tw = math.max(w, w2)
    self._bg_box:set_w(tw + 16)
end)

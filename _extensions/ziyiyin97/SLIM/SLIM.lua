
local maybesubs = false
local stk_end = false

add = pandoc.RawInline('html', "<ins>")
adde = pandoc.RawInline('html', "</ins>")

rm = pandoc.RawInline('html', "<del>")
rme = pandoc.RawInline('html', "</del>")
rmeadd = pandoc.RawInline('html', "</del><ins>")

mark = pandoc.RawInline('html', "<mark>")
marke = pandoc.RawInline('html', "</mark>")

comm = pandoc.RawInline('html', [[<span class="critic comment">]])
comme = pandoc.RawInline('html', "</span>")

ruless = {['{%+%+']=add, ['{\u{2013}']=rm, ['{==']=mark, ['{>>']=comm, ['{~~']=rm,
          ['%+%+}']=adde, ['\u{2013}}']=rme, ['==}']=marke, ['<<}']=comme, ['~~}']=rme, ['~>']=rmeadd}

-- Strikeout before/after
st_b = '{'
st_e = '}'

local scriptcode = [[

]]

function criticheader (meta)
  quarto.doc.add_html_dependency({
    name = 'SLIM',
    scripts = {'SLIM.min.js'},
    stylesheets = {'ScholarlyMarkdown-forMarked-latest.css'}
  })
  -- inject the rendering code
  quarto.doc.include_text("after-body", scriptcode)
end

-- All pass with Meta first
return {{Meta = criticheader}}

local _, ns = ...
local cfg = CreateFrame("Frame")
if not MoverDB then MoverDB = {} end
ns.cfg = cfg

-- Configure
local Media = "Interface\\Addons\\Stagger\\Media\\"
cfg.MyClass = select(2, UnitClass('player'))
cfg.cc = (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[cfg.MyClass]
cfg.MyColor = format('|cff%02x%02x%02x', cfg.cc.r*255, cfg.cc.g*255, cfg.cc.b*255)
cfg.InfoColor = "|cff70C0F5"
cfg.IconSize = 32		-- 圖示大小
cfg.BarHeight = 5		-- 條列高度
cfg.Font = {STANDARD_TEXT_FONT, 16, "THINOUTLINE"}
cfg.TexCoord = {0.08, 0.92, 0.08, 0.92}
cfg.glowTex = Media.."glowTex"
cfg.normTex = Media.."normTex"
cfg.StaggerPos = {"CENTER", UIParent, "CENTER", 0, -220}	-- 圖示位置
cfg.FadeAlpha = 0.5		-- 非使用時的透明度
cfg.OOCAlpha = 0.1		-- 非戰鬥中透明度
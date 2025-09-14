if not ffi then
    print('请允许使用ffi！！！')
    print('请允许使用ffi！！！')
    print('请允许使用ffi！！！')
    print(' ')
    print('Turn on ffi support！！！')
    print('Turn on ffi support！！！')
    print('Turn on ffi support！！！')

    gui.notify:add(gui.notification('Fatal Error', 'Turn on ffi support', draw.textures['icon_close']))
    return error("Turn on unsafe scripts")
end

print('HackGPT was Loading! Developer: Rw0ter.');

print('█──█─████─████─█──█─████─████─███');
print('█──█─█──█─█──█─█─█──█────█──█──█─');
print('████─████─█────██───█─██─████──█─');
print('█──█─█──█─█──█─█─█──█──█─█─────█─');
print('█──█─█──█─████─█──█─████─█─────█─');

print('Get good Hack Generative Pre-trained Transformer')

-------UI Vars --------
CGUI = {
    --- Global ---

    LuaA = gui.ctx:find('lua>elements a'),
    LuaB = gui.ctx:find('lua>elements b'),
    nop_text = gui.label(gui.control_id('Main Titie'), ''),
    start_text = gui.label(gui.control_id('Main Titie'), '               ===== HackGPT =====   '),

    CheackBox = {
        LuaA = {

            Semi_Rage = {
                Auto_FNS_InAir = gui.checkbox(gui.control_id('Auto_FNS_InAir')),
                Anti_Head_Shake = gui.checkbox(gui.control_id('Anti_Head_Shake'))

            },

            Visuals = {
                Crosshair_Watermark = gui.checkbox(gui.control_id('Crosshair_Watermark'))
            },
            Movement = {
                Speed_status = gui.checkbox(gui.control_id('Speed_status')),
                No_Fall_DMG = gui.checkbox(gui.control_id('No_Fall_DMG')),
                Anti_AFK = gui.checkbox(gui.control_id('Anti_AFK')),
                Player_status = gui.checkbox(gui.control_id('Player_status'))

            }

        },

        LuaB = {}
    },

    Combo = {
        LuaA = {
            feature_combo = gui.combo_box(gui.control_id('luaA_feature_combo_selc')),
            Semi_Rage = {},
            Logs = {
                Vote_Log = gui.combo_box(gui.control_id('luaA_Vote_Log_combo_selc'))
            }
        }

    },

    Slider = {
        LuaA = {
            Semi_Rage = {
                Rage_Fov_Changer_In_Land = gui.slider(gui.control_id('Rage_FOV_Custom'), 0, 10, {'%.3fdeg'}, 0.001)

            }
        }
    }
}

CRowControls = {
    LuaA = {
        feature_combo = gui.make_control('Feature', CGUI.Combo.LuaA.feature_combo),
        Semi_Rage = {
            Rage_Fov_Changer_In_Land = gui.make_control('Change Rage Fov',
                CGUI.Slider.LuaA.Semi_Rage.Rage_Fov_Changer_In_Land),
            Auto_FNS_InAir = gui.make_control('Auto FNS', CGUI.CheackBox.LuaA.Semi_Rage.Auto_FNS_InAir),
            Anti_Head_Shake = gui.make_control('Anti Head Shake', CGUI.CheackBox.LuaA.Semi_Rage.Anti_Head_Shake)
        },
        Visuals = {
            Crosshair_Watermark = gui.make_control('Crosshair Watermark',
                CGUI.CheackBox.LuaA.Visuals.Crosshair_Watermark)
        },
        Movement = {
            Speed_status = gui.make_control('Speed Status', CGUI.CheackBox.LuaA.Movement.Speed_status),
            No_Fall_DMG = gui.make_control('No Fall DMG', CGUI.CheackBox.LuaA.Movement.No_Fall_DMG),
            Anti_AFK = gui.make_control('Anti AFK', CGUI.CheackBox.LuaA.Movement.Anti_AFK),
            Player_status = gui.make_control('Player Status', CGUI.CheackBox.LuaA.Movement.Player_status)
        },
        Logs = {
            Vote_Log = gui.make_control('Vote Log', CGUI.Combo.LuaA.Logs.Vote_Log)
        }

    },

    LuaB = {}

}

-----UI Init ---------

function GUI_Init()

    CGUI.LuaA:add(CGUI.start_text);
    CGUI.Combo.LuaA.feature_combo:add(gui.selectable(gui.control_id('option_SEMIRAGE'), 'Semi-Rage'))
    CGUI.Combo.LuaA.feature_combo:add(gui.selectable(gui.control_id('option_Visuals'), 'Visuals'))
    CGUI.Combo.LuaA.feature_combo:add(gui.selectable(gui.control_id('option_Movement'), 'Movement'))
    CGUI.Combo.LuaA.feature_combo:add(gui.selectable(gui.control_id('option_Chat'), 'Chat'))
    CGUI.Combo.LuaA.feature_combo:add(gui.selectable(gui.control_id('option_Event & Log'), 'Event & Log'))

    CGUI.Combo.LuaA.Logs.Vote_Log:add(gui.selectable(gui.control_id('option_Consle'), 'Consle'))
    CGUI.Combo.LuaA.Logs.Vote_Log:add(gui.selectable(gui.control_id('option_Notify'), 'Notify'))

    ---- Global ----
    CGUI.LuaA:add(CRowControls.LuaA.feature_combo);

    ----- SemiRage -----
    CGUI.LuaA:add(CRowControls.LuaA.Semi_Rage.Rage_Fov_Changer_In_Land);
    CGUI.LuaA:add(CRowControls.LuaA.Semi_Rage.Auto_FNS_InAir);
    CGUI.LuaA:add(CRowControls.LuaA.Semi_Rage.Anti_Head_Shake);

    ----- Visuals -----
    CGUI.LuaA:add(CRowControls.LuaA.Visuals.Crosshair_Watermark);

    ----- Movement -----
    CGUI.LuaA:add(CRowControls.LuaA.Movement.Speed_status);
    CGUI.LuaA:add(CRowControls.LuaA.Movement.Player_status);
    CGUI.LuaA:add(CRowControls.LuaA.Movement.No_Fall_DMG);
    CGUI.LuaA:add(CRowControls.LuaA.Movement.Anti_AFK);
    ----- Logs -----
    CGUI.LuaA:add(CRowControls.LuaA.Logs.Vote_Log);
    CGUI.Combo.LuaA.Logs.Vote_Log.allow_multiple = true;

    CGUI.LuaA:reset();

    local notif = gui.notification('HackGPT UI Has Been Init! ',
        'Welcome! ' .. gui.ctx.user.username .. ' Sama (c´ω`c)', draw.textures['icon_cloud']);

    gui.notify:add(notif);

end

------GlobalVars------

IGlobalVars = {
    char = {
        player_status = {
            [0] = "Standing",
            [1] = "Walking",
            [2] = "Running",
            [3] = "Crouch",
            [4] = "In AIR",
            [5] = "AIR Duck"
        },

        weapon_names = {
            [0] = "None",
            [1] = "Desert Eagle",
            [2] = "Dual Berettas",
            [3] = "Five-SeveN",
            [4] = "Glock-18",
            [7] = "AK-47",
            [8] = "AUG",
            [9] = "AWP",
            [10] = "FAMAS",
            [11] = "G3SG1",
            [13] = "Galil AR",
            [14] = "M249",
            [16] = "M4A4",
            [17] = "MAC-10",
            [19] = "P90",
            [20] = "Zone Repulsor",
            [23] = "MP5-SD",
            [24] = "UMP-45",
            [25] = "XM1014",
            [26] = "PP-Bizon",
            [27] = "MAG-7",
            [28] = "Negev",
            [29] = "Sawed-Off",
            [30] = "Tec-9",
            [31] = "Zeus x27",
            [32] = "P2000",
            [33] = "MP7",
            [34] = "MP9",
            [35] = "Nova",
            [36] = "P250",
            [37] = "Shield",
            [38] = "SCAR-20",
            [39] = "SG 553",
            [40] = "SSG-08",
            [41] = "Golden Knife",
            [42] = "Knife",
            [43] = "Flashbang",
            [44] = "HE Grenade",
            [45] = "Smoke Grenade",
            [46] = "Molotov",
            [47] = "Decoy Grenade",
            [48] = "Incendiary Grenade",
            [49] = "C4 Explosive",
            [50] = "Health Shot",
            [51] = "Terrorist Knife",
            [60] = "M4A1-S",
            [61] = "USP-S",
            [63] = "CZ75-Auto",
            [64] = "R8 Revolver",
            [68] = "Tactical Awareness Grenade",
            [69] = "Fists",
            [70] = "Breach Charge",
            [72] = "Tablet",
            [74] = "Melee",
            [75] = "Axe",
            [76] = "Hammer",
            [78] = "Spanner (Wrench)",
            [80] = "Ghost Knife",
            [81] = "Firebomb",
            [82] = "Diversion Device",
            [83] = "Frag Grenade",
            [84] = "Snowball",
            [85] = "Bump Mine",
            [500] = "Bayonet",
            [503] = "Classic Knife",
            [505] = "Flip Knife",
            [506] = "Gut Knife",
            [507] = "Karambit",
            [508] = "M9 Bayonet",
            [509] = "Huntsman Knife",
            [512] = "Falchion Knife",
            [514] = "Bowie Knife",
            [515] = "Butterfly Knife",
            [516] = "Shadow Daggers",
            [517] = "Paracord Knife",
            [518] = "Survival Knife",
            [519] = "Ursus Knife",
            [520] = "Navaja Knife",
            [521] = "Nomad Knife",
            [522] = "Stiletto Knife",
            [523] = "Talon Knife",
            [525] = "Skeleton Knife",
            [526] = "Kukri Knife"
        },

        weapon_type_names = {
            [0] = "Knife",
            [1] = "Pistols",
            [2] = "SMGs",
            [3] = "Rifles",
            [4] = "Heavy",
            [5] = "Auto Snipers",
            [6] = "Bolt Snipers",
            [7] = "C4",
            [8] = "Taser",
            [9] = "Grenades",
            [10] = "Stackable Items",
            [11] = "Fists",
            [12] = "Breach Charge",
            [13] = "Bump Mine",
            [14] = "Tablet",
            [15] = "Melee",
            [16] = "Shield",
            [17] = "Zone Repulsor",
            [18] = "Unknown"
        },

        say_CN = {"STL.SU?! why I miss?", "you can't kill STL.SU user", "STL.SU user are super",
                  "you can buy a cheat,but you cant buy a win xD", "ez owned by STL.SU? lol", "what u do?? dog",
                  "1, y u lose? xaxaxaxaxa", "legends never die -- STL.SU", "你的aa比薯片脆",
                  "实在不行你去买个模型吧", "你的脑子只适合玩原神?",
                  "滚去玩王者荣耀吧窝囊废", "你是没有手吗?", "你的脑容量比你参群人数还少",
                  "银行卡密码都被我骗出来了", "农村人滚回去种地", "你怎么一骗就出了孩子",
                  "你在屏幕前红温的样子被我记录下来了", "我杀你只需要一根手指", "ez",
                  "这就死了吗...我都还没开始发力", "我没想到你参数这么垃圾...",
                  "杀你只需要一根手指", "1，你怎么这么菜...", "你在用awc么废物?", "easy xD",
                  "1,别急", "农民你被你爹1了，滚去买个好点的参数吧", "你也被脑控了吗",
                  "用绿演参是打不中我的", "怎么退出训练营",
                  "对不起没玩过原神，不理解你的打法", "你选错原神启动项了",
                  "小孩子不懂事e着玩的", "转人工", "忘注入了，绿玩杀的",
                  "这智商去玩原神吧，那里适合你",
                  "嘿，你是在试图击打我身边的空气来窒息我？", "Get better get <S T L . S U>",
                  "stay with us - STL.SU", "STL still on top", "1.", "[STL.SU] buy or die", "我使用的是 STL.SU",
                  "◣_◢ S T L ◣_◢", "when u miss, cry u dont have STL.SU",
                  "被哥哥蒙在鼓里有什么意思呢，蒙在被子里才有趣。",
                  "我喜欢你脸红红的样子，更喜欢你气喘吁吁的样子。",
                  "我们浪漫点好不好 怎么浪漫点？ 我慢点，你浪点。",
                  "我希望压得我喘不过气的不是生活，而是你。",
                  "我有71种温柔，洗衣做饭和69。", "如果插一晚上不拔出来会怎么样。",
                  "日久不一定生情，但情深一定要日久。",
                  "初次见面就喜欢你，日久以后更爱上你。​​​",
                  "你饿不饿，要不要我下面给你吃。", "清晨射在脸上的不一定是阳光。",
                  "我最喜欢看见的是你在我身下仰头娇喘的样子。",
                  "我什么都干不好，除了你。",
                  "玫瑰是我偷的，情书是我抄的，但我想干你是真的。",
                  "你笑起来很甜，尝起来很咸。", "我心里装的怀里抱的身下压的都是你。",
                  "你喜不喜欢浪漫，当然是我浪点，你慢点啊。"},

        say_EN = {"I'd tell you to shoot yourself, but I bet you'll miss.",
                  "You should let your chair play, at least it knows how to support.",
                  "The only thing lower than your k/d ratio is your I.Q.",
                  "Did you know sharks only kill 5 people each year? Looks like you got some competition.",
                  "My knife is well-worn, just like your mother.",
                  "Get the bomb, at least you will carry something this game.", "Options -> How To Play",
                  "My dead dad has better aim than you, it only took him one bullet.",
                  "Some babies were dropped on their heads but you were clearly thrown at a wall.",
                  "Internet Explorer is faster than your reactions.",
                  "I'm surprised you've got the brain power to keep your heart beating.",
                  "You're about as useful as pedals on a wheelchair.", "You define autism.",
                  "The only thing you carry is an extra chromosome.",
                  "You don't deserve to play this game. Go back to playing with crayons and shitting yourself.",
                  "Yo mama so fat when she plays Overpass, you can shoot her on Mirage.",
                  "The only thing you can throw are rounds.", "I'm not trash talking, I'm talking to trash.",
                  "If you were a CSGO match, your mother would have a 7-day cooldown all the time, because she kept abandoning you.",
                  "Choose your excuse: 1.Lags | 2.New mouse | 3.Low FPS | 4.Low team | 5.Hacker | 6.Lucker | 7.Smurf | 8.Hitbox | 9.Tickrate.",
                  "Your family tree must be a circle.", "Everyone who loves you is wrong.",
                  "LISTEN HERE YOU LITTLE FUCKER, WHEN I WAS YOUR AGE, PLUTO WAS A PLANET!",
                  "If CS:GO is too hard for you maybe consider a game that requires less skill, like idk.... solitaire?",
                  "Oops, I must have chosen easy bots by accident...",
                  "I thought I put bots on hard, why are they on easy?", "Is your monitor on?",
                  "Don't be a loser, buy a rope and hang yourself.",
                  "If I were to commit suicide, I would jump from your ego to your elo.",
                  "Do you feel special? Please try suicide again... Hopefully you will be successful this time.",
                  "I'm not trash talking, I'm talking to trash.", "Sell your computer and buy a Wii.",
                  "Idk if u know but it's mouse1 to shoot.",
                  "How did you change your difficulty settings? My CS:GO is stuck on easy.",
                  "You are the reason why people say the csgo community sucks.",
                  "The only thing lower than your k/d ratio is your I.Q.",
                  "Your aim is so poor that people held a fundraiser for it.",
                  "Better buy PC, stop playing at school library.",
                  "The only thing more unreliable than you is the condom your dad used.",
                  "Calling you a retard is a compliment in comparison to how stupid you actually are.",
                  "I didn't know dying was a special ability.",
                  "If I jumped from your ego to your intelligence, I'd die of starvation half-way down.",
                  "Studies show that aiming gives you better chances of hitting your target.",
                  "You should let your chair play, at least it knows how to support.",
                  "There are about 37 trillion cells working together in your body right now, and you are disappointing every single one of them.",
                  "I'd call you a tool, but that would imply you were useful in at least one way.",
                  "You're the human equivalent of a participation award.",
                  "I'd love to see things from your perspective, but I don't think I could shove my head that far up my ass.",
                  "I'm not trash talking, I'm talking to trash.",
                  "Legend has it that the number 0 was first invented after scientists calculated your chance of doing something useful.",
                  "You're the type of pd to get 3rd place in a 1v1 match.",
                  "I'm not saying I hate you, but I would unplug your life support to charge my phone.",
                  "You're an inspiration for birth control.",
                  "Does your ass ever get jealous of the amount of shit that comes out of your mouth.",
                  "You should turn the game off. Just walk outside and find the nearest tree, then apologize to it for wasting so much oxygen.",
                  "I'd tell you to shoot yourself, but I bet you'll miss.",
                  "Did you know sharks only kill 5 people each year? Looks like you got some competition.",
                  "Some babies were dropped on their heads but you were clearly thrown at a wall.",
                  "To which foundation do I need to donate to help you?",
                  "I'm sure your body pillow is very proud of you.",
                  "Two wrongs don't make a right, take your parents as an example.",
                  "I bet the last time you felt a breast was in a KFC bucket.", "Maybe God made you a bit too special.",
                  "I bet your brain feels as good as new, seeing that you never use it.",
                  "It must be difficult for you, exhausting your entire vocabulary in one sentence.",
                  "You have some big balls on you. Too bad they belong to the guy fucking you from behind.",
                  "If only you could hit an enemy as much as your dad hits you.",
                  "I'm surprised that you were able to hit the Install button.",
                  "Some people get paid to suck, you do it for free.",
                  "I would ask you how old you are but I know you can't count that high.",
                  "I'm okay with this team. I work in the city as a garbage collector. I'm used to carrying trash.",
                  "You're as dense as a brick, but honestly a less useful one."},

        say_RU = {"Слава Украине!", "Сука блядь", "Иди на хуй", "Твою мать",
                  "Ни на что не годная импотентная сучка Юн сосала мой член",
                  "Ебанутый", "идиот", "Я твой рот ебал на хуй", "Я тебя выебу",
                  "Мозг`и еб`ать", "дурак", "простая игра", "бездарный",
                  "Хуёвый", "Еб твою мать", "Сукины дети！", "ты никчемный",
                  "Пошёл на хуй", "жопа", "Ты ебанутый что ли?",
                  "Я тебя въебу на хуй", "Ах ты ёбанная блядь", "Сукин сын！",
                  "Я ебу твою бабу в жобу",
                  "Сука ，блять ，что ты там пиздишь?",
                  "Ты дура кончиная，блять，сука ебанная",
                  "Ах ты ёбанная блять",
                  "Урод，хули ты там выёбываешься! пидорас ебучий",
                  "Трахать", "Я ебу твою мать", "Иди на хуй !", "твай матель",
                  "дурак убогий",
                  "Я вставляю свой пенис в твою бесполезную пизду, как флешку",
                  "иди на хуй", "скотина", "ничтожество", "Как вы живѐте?",
                  "Спешить как голый ебаться",
                  "Я буду трахать клитор твоей суки, пока он не станет мясистым"},

        Dead_CN = {"是的孩子 你赢了", "^^_", "1,我帮你扣的 你还不配给我扣1",
                   "我让你一个头,我怕你玻璃心砸电脑",
                   "我在游戏里被你杀死,你妈在现实里被我杀死", "打的我好困,先睡会Zzzz",
                   "看你可怜,这个头送你了", "据说你爸妈当年也是这么死的",
                   "1,你在奇怪我死了为什么扣1 ?因为我帮你扣的", "666踩到甲沟炎了",
                   "这.....不是终点...."}

    },

    textures = {
        inferno = draw.svg_texture(
            [[<svg xmlns="http://www.w3.org/2000/svg" width="94" height="90"><path d="M59 9h3v2h-1v4h1v3h1v2h1v4h1v7h-1v3h-1v3h-1v2h-1v1h-1v1h-1v1h-1v1h-2v1h-1v1h-1v1h-1v2h1v1h2v1h2v-1h2v-1h1v-3h1v-4h1v-1h1v-2h1v-1h2v-1h1v-1h1v-1h2v-1h3v-1h2v-1h1v-1h1v-1h1v-1h1v-3h1v-6h1v1h1v1h1v2h1v3h1v6h-1v3h-1v1h-1v2h-1v1h-1v1h-1v1h-1v1h-1v1h-1v2h-1v2h-1v19h-1v3h-1v2h-1v1h-1v1h-1v1h-1v1h-1v1h-1v1h-1v1h-2v1h-2v1h-5v1H46v-1h-5v-1h-3v-1h-2v-1h-2v-1h-1v-1h-1v-1h-1v-2h-1v-2h-1v-3h-1v-4h-1v-5h-1v1h-1v1h-1v2h-1v3h-1v2h1v4h1v4h1v4h-1v1h-4v1h-1v-1h-3v-1h-2v-1h-1v-1h-1v-1h-1v-2h-1v-3H9v-6H8V53h1v-3h1v-2h1v-2h1v-1h1v-1h1v-1h1v-1h1v-1h1v-1h2v-1h1v-1h2v-1h1v-1h1v-1h1v-1h1v-9h-1v-2h-1v-2h-1v-2h-1v-1h-1v-1h-1v-2h2v1h3v1h3v1h1v1h2v1h1v1h1v1h1v1h1v2h1v4h1v7h-1v2h1v-1h1v-1h1v-1h1v-1h2v-1h2v-1h2v-1h3v-1h2v-1h2v-1h1v-1h1v-2h1v-4h-1v-8h1v-1h1v-1h1v-1h1Z" fill="#FFF"/></svg>]],
            192),
        start_texture = draw.animated_texture("../../csgo/fatality/hutao.gif"),
        player_def_svg = draw.svg_texture(
            [[<svg t="1757695957265" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="5427" width="200" height="200"><path d="M949.76 60.416V552.96c0 36.864-7.68 73.216-23.04 109.568-15.36 35.84-34.304 68.096-56.832 96.256-22.528 28.16-49.664 55.296-80.896 81.408-31.232 26.624-60.416 48.64-86.528 66.048-26.624 17.408-54.272 34.304-82.944 49.664-28.672 15.872-49.152 26.112-61.44 31.744-12.288 5.632-21.504 9.728-29.184 12.8-5.632 2.56-11.264 4.096-17.92 4.096-6.144 0-12.288-1.536-17.92-4.096-7.168-3.072-16.896-7.168-29.184-12.8-12.288-5.632-32.256-16.384-61.44-31.744-28.672-15.872-56.32-32.256-82.944-49.664-26.624-17.408-55.296-39.424-86.528-66.048-31.232-26.624-57.856-53.76-80.896-81.408-22.528-28.16-41.472-59.904-56.832-96.256-15.36-35.84-23.04-72.704-23.04-109.568V60.416c0-11.264 4.096-20.992 12.8-28.672 8.704-8.192 18.944-12.288 30.72-12.288h788.992c11.776 0 22.016 4.096 30.72 12.288 10.24 8.192 14.336 17.92 14.336 28.672z m-54.784 506.368V74.24H512L511.488 926.72c54.272-27.136 102.912-56.32 145.92-87.552 107.52-79.36 237.568-197.12 237.568-272.384z" p-id="5428"></path></svg>]],
            64),
        warning_texture = draw.animated_texture("../../csgo/fatality/warning_icon.gif"),
        keybind_texture = draw.animated_texture("../../csgo/fatality/keybind.gif"),
        player_def_avatar = nil
    },

    float = {
        frame_rate = 0.0,
        current_x = nil,
        current_x_speed = nil,
        current_x_status = nil

    },

    int = {
        lp_speed = 0,
        draw_padding = 0,
        Team_general_dmg = 0,
        Team_kill = 0
    },

    bool = {
        temp_Hide_Shot_staut = false,
        Hide_Shot_bool = false,
        recover_Hide_Shot = false
    },

    vec3 = {
        prev_lp_pos = nil
    },

    CCS2_FA_GUI_Entity = {
        misc_slowwalk = gui.ctx:find('misc>movement>slowwalk'),
        angles_Left_checkbox = gui.ctx:find('rage>anti-aim>angles>override left'),
        angles_Right_checkbox = gui.ctx:find('rage>anti-aim>angles>override right'),
        angles_Back_checkbox = gui.ctx:find('rage>anti-aim>angles>override back'),
        angles_Forward_checkbox = gui.ctx:find('rage>anti-aim>angles>override forward'),
        force_nospread = gui.ctx:find('rage>aimbot>general>nospread>settings>force'),
        duck_peek_assist = gui.ctx:find('misc>aimbot>general>duck peek assist'),
        peek_assist = gui.ctx:find('misc>movement>peek assist'),
        doubletap = gui.ctx:find('rage>aimbot>general>doubletap'),
        nospread = gui.ctx:find('rage>aimbot>general>nospread'),
        force_bodyaim = gui.ctx:find('rage>aimbot>general>force bodyaim'),
        headshot_only = gui.ctx:find('rage>aimbot>general>headshot only'),
        force_shoot = gui.ctx:find('rage>aimbot>general>force shoot'),
        jump_bug = gui.ctx:find('misc>movement>jumpbug'),
        edge_jump = gui.ctx:find('misc>movement>edge jump'),
        straight_throw = gui.ctx:find('misc>misc>grenades>straight throw'),
        Thirdperson = gui.ctx:find('visuals>misc>local>thirdperson'),
        yaw_custom_slider = gui.ctx:find('rage>anti-aim>angles>yaw>settings>amount'),
        pitch_custom_slider = gui.ctx:find('rage>anti-aim>angles>pitch>settings>value'),
        AA_Hide_Shot = gui.ctx:find('rage>anti-aim>angles>hide shot'),
        Yaw_Base_Mode = gui.ctx:find('rage>anti-aim>angles>yaw'),
        DPI_Scale = gui.ctx:find('misc>menu>dpi scale')
    }

}

----- textures Init ---------------------------------------------------------------------
IGlobalVars.textures.inferno:create()
IGlobalVars.textures.start_texture:create()
IGlobalVars.textures.player_def_svg:create()
IGlobalVars.textures.warning_texture:create()
IGlobalVars.textures.keybind_texture:create()

---- GPT_utils Init -------------------------------------------------------------------------
GPT_utils = {}

function GPT_utils:get_abs_fps()
    IGlobalVars.float.frame_rate = 0.9 * IGlobalVars.float.frame_rate + (1.0 - 0.9) * game.global_vars.frame_time
    return math.floor((1.0 / IGlobalVars.float.frame_rate) + 0.5)
end

function GPT_utils:calculate_distance(vec1, vec2)
    local dx = vec2.x - vec1.x
    local dy = vec2.y - vec1.y
    local dz = vec2.z - vec1.z
    return math.sqrt(dx * dx + dy * dy + dz * dz)
end

function GPT_utils:rotate_vector(vectors, angle)
    local cos_angle = math.cos(angle)
    local sin_angle = math.sin(angle)
    return vector(vectors.x * cos_angle - vectors.y * sin_angle, vectors.x * sin_angle + vectors.y * cos_angle,
        vectors.z)
end

function GPT_utils:hsv_to_rgb(b, c, d, e)
    local f, g, h;
    local i = math.floor(b * 6)
    local j = b * 6 - i;
    local k = d * (1 - c)
    local l = d * (1 - j * c)
    local m = d * (1 - (1 - j) * c)
    i = i % 6;
    if i == 0 then
        f, g, h = d, m, k
    elseif i == 1 then
        f, g, h = l, d, k
    elseif i == 2 then
        f, g, h = k, d, m
    elseif i == 3 then
        f, g, h = k, l, d
    elseif i == 4 then
        f, g, h = m, k, d
    elseif i == 5 then
        f, g, h = d, k, l
    end
    return f * 255, g * 255, h * 255, e * 255
end

function GPT_utils:get_bar_color()
    local r, g, b, a = 255, 0, 0, 255

    local palette = 100
    local rgb_split_ratio = 0.9

    local h = game.global_vars.real_time * (20 / 100)

    r, g, b = GPT_utils:hsv_to_rgb(h % 1, 1, 1, 1)

    r, g, b = math.min(r * rgb_split_ratio, 255), math.min(g * rgb_split_ratio, 255), math.min(b * rgb_split_ratio, 255)

    return r, g, b, a
end

function GPT_utils:update_x(current, target, speed)
    if not current then
        return target
    end
    return current + (target - current) * speed
end

function GPT_utils:text_lerp(v1, v2, t)
    return v1 + (v2 - v1) * t
end

function GPT_utils:ToAbsolute(pBase, nPreOffset, nPostOffset)
    pBase = ffi.cast("uintptr_t", pBase)
    pBase = pBase + (nPreOffset or 1)
    pBase = pBase + ffi.sizeof("int") + ffi.cast("int64_t", ffi.cast("int*", pBase)[0])
    pBase = pBase + (nPostOffset or 0)
    return pBase
end

---- Custom_Edited Init ------------------------------------------------------------
Custom_Edited = {}

function Custom_Edited:text_fade_animation(x, y, speed, color1, color2, text)
    local d = draw.surface
    d.font = draw.fonts["gui_title"]

    local curtime = game.global_vars.real_time
    if not curtime then
        return
    end
    if not text or #text == 0 then
        return
    end

    local a1 = (color1 and color1.a) or 255

    local cursor_x = x
    for i = 1, #text do
        local char = text:sub(i, i)
        if char then
            local wave = math.sin(speed * curtime + i / 5) * 0.5 + 0.5

            local lr = GPT_utils:text_lerp(color1.r, color2.r, wave)
            local lg = GPT_utils:text_lerp(color1.g, color2.g, wave)
            local lb = GPT_utils:text_lerp(color1.b, color2.b, wave)

            lr = math.min(255, math.max(0, lr))
            lg = math.min(255, math.max(0, lg))
            lb = math.min(255, math.max(0, lb))

            d:add_text(draw.vec2(cursor_x + 1, y + 1), char, draw.color(lr * 0.6, lg * 0.6, lb * 0.6, a1 * 0.7))
            d:add_text(draw.vec2(cursor_x, y), char, draw.color(lr, lg, lb, a1))

            local glyph_sz = d.font:get_text_size(char) -- vec2 { x, y }
            local advance = (glyph_sz and glyph_sz.x) or 0
            cursor_x = cursor_x + advance + 2
        end
    end
end

--- call func -----
fnFindHudElement = ffi.cast("void*(__fastcall*)(const char*)",
    utils.find_pattern("client.dll", "4C 8B DC 53 48 83 EC 50 48 8B 05 ? ? ? ? 48 8B"))
fnChatPrintf = ffi.cast("void*(__cdecl*)(void*, unsigned int, const char*, ...)", GPT_utils:ToAbsolute(
    utils.find_pattern("client.dll", "E8 ? ? ? ? 49 8B 4E ? BA ? ? ? ? 48 83 C1 ? E8"), 1, 0))
CHudChatDelegate = fnFindHudElement "HudChatDelegate"
function print_chat(chat)
    --[[
	\x01 - white
	\x02 - red
	\x03 - purple
	\x04 - green
	\x05 - yellow green
	\x06 - light green
	\x07 - light red
	\x08 - gray
	\x09 - light yellow
	\x0A - gray
	\x0C - dark blue
	\x10 - gold
	]]
    fnChatPrintf(CHudChatDelegate, -1, chat)
end

------ events ----------------------------------------------------------------------

CPresent_queue = {
    draw_crosshair_watermark = function()
        local w, h = game.engine:get_screen_size()
        local d = draw.surface
        d.font = draw.fonts['gui_title']
        local r, g, b, a = GPT_utils:get_bar_color()
        local lp = entities.get_local_pawn()
        if not lp then
            return;
        end

        if not CGUI.CheackBox.LuaA.Visuals.Crosshair_Watermark:get_value():get() then
            return;
        end

        if game.engine:in_game() and lp:is_alive() then

            IGlobalVars.int.draw_padding = IGlobalVars.int.draw_padding + 12;

            local text = "HGPT.NS"

            if not lp.m_bIsScoped:get() then
                IGlobalVars.float.current_x = GPT_utils:update_x(IGlobalVars.float.current_x,
                    w / 2 - d.font:get_text_size(text).x / 2 - 5, 0.1)

            else
                IGlobalVars.float.current_x = GPT_utils:update_x(IGlobalVars.float.current_x,
                    w / 2 - d.font:get_text_size(text).x / 2 + 42, 0.1)
            end

            d:add_glow(draw.rect(IGlobalVars.float.current_x + 12, h / 2 + IGlobalVars.int.draw_padding + 10,
                IGlobalVars.float.current_x + 81, h / 2 + IGlobalVars.int.draw_padding + 10), 16,
                draw.color(170, 130, 250, 85));

            Custom_Edited:text_fade_animation(IGlobalVars.float.current_x, h / 2 + IGlobalVars.int.draw_padding, 3, {
                r = 170,
                g = 130,
                b = 250,
                a = 255
            }, {
                r = 0,
                g = 0,
                b = 0,
                a = 255
            }, text)
        end

    end,

    draw_speed_prg = function()
        local w, h = game.engine:get_screen_size()
        local d = draw.surface
        d.font = draw.fonts['gui_title']
        local r, g, b, a = GPT_utils:get_bar_color()
        local lp = entities.get_local_pawn()
        if not lp then
            return;
        end

        local lp_pos = lp:get_abs_origin()

        if not IGlobalVars.vec3.prev_lp_pos then
            IGlobalVars.vec3.prev_lp_pos = lp_pos
        end

        local distance = GPT_utils:calculate_distance(IGlobalVars.vec3.prev_lp_pos, lp_pos);

        IGlobalVars.int.lp_speed = distance / game.global_vars.frame_time
        IGlobalVars.int.lp_speed = math.floor(IGlobalVars.int.lp_speed);
        IGlobalVars.vec3.prev_lp_pos = lp_pos;

        if not CGUI.CheackBox.LuaA.Movement.Speed_status:get_value():get() then
            return
        end

        if game.engine:in_game() and lp:is_alive() then

            IGlobalVars.int.draw_padding = IGlobalVars.int.draw_padding + 18;

            local weapon = lp:get_active_weapon()
            if not weapon then
                return
            end

            local maxspeed = weapon:get_max_speed()

            if not lp.m_bIsScoped:get() then
                IGlobalVars.float.current_x_speed = GPT_utils:update_x(IGlobalVars.float.current_x_speed, w / 2 + 13,
                    0.1)
            else
                IGlobalVars.float.current_x_speed = GPT_utils:update_x(IGlobalVars.float.current_x_speed, w / 2 + 43,
                    0.1)
            end

            local progress_bar_x = IGlobalVars.float.current_x_speed - 40
            local progress_bar_y = h / 2 + IGlobalVars.int.draw_padding
            local progress_bar_width = 55
            local progress_bar_height = 4

            local fill_width = math.max(0, math.min(IGlobalVars.int.lp_speed / maxspeed, 1)) * progress_bar_width

            d:add_rect_filled(draw.rect(progress_bar_x, progress_bar_y, progress_bar_x + progress_bar_width,
                progress_bar_y + progress_bar_height), draw.color.black())

            d:add_glow(draw.rect(progress_bar_x, progress_bar_y, progress_bar_x + progress_bar_width,
                progress_bar_y + progress_bar_height), 4, draw.color(255, 255, 255, 125));

            d:add_rect_filled(draw.rect(progress_bar_x, progress_bar_y, progress_bar_x + fill_width,
                progress_bar_y + progress_bar_height), draw.color(255, 255, 255, 255))

        end
    end,

    force_overrride_ragebot_fov = function()

        if (CGUI.Slider.LuaA.Semi_Rage.Rage_Fov_Changer_In_Land:get_value():get() == 0) then
            gui.ctx:find('rage>aimbot>general>maximum fov'):get_value():set(180);
            return
        end

        gui.ctx:find('rage>aimbot>general>maximum fov'):get_value():set(CGUI.Slider.LuaA.Semi_Rage
                                                                            .Rage_Fov_Changer_In_Land:get_value():get());
    end,

    GUI_Event = function()

        CRowControls.LuaA.Semi_Rage.Rage_Fov_Changer_In_Land:set_visible(false);
        CRowControls.LuaA.Visuals.Crosshair_Watermark:set_visible(false);
        CRowControls.LuaA.Movement.Speed_status:set_visible(false);
        CRowControls.LuaA.Movement.No_Fall_DMG:set_visible(false);
        CRowControls.LuaA.Movement.Anti_AFK:set_visible(false);
        CRowControls.LuaA.Logs.Vote_Log:set_visible(false);
        CRowControls.LuaA.Semi_Rage.Auto_FNS_InAir:set_visible(false);
        CRowControls.LuaA.Movement.Player_status:set_visible(false);
        CRowControls.LuaA.Semi_Rage.Anti_Head_Shake:set_visible(false);
        local switch = {

            [1] = function()
                CRowControls.LuaA.Semi_Rage.Rage_Fov_Changer_In_Land:set_visible(true);
                CRowControls.LuaA.Semi_Rage.Auto_FNS_InAir:set_visible(true);
                CRowControls.LuaA.Semi_Rage.Anti_Head_Shake:set_visible(true);
            end,
            [2] = function()
                CRowControls.LuaA.Visuals.Crosshair_Watermark:set_visible(true);
            end,
            [4] = function()
                CRowControls.LuaA.Movement.Speed_status:set_visible(true);
                CRowControls.LuaA.Movement.No_Fall_DMG:set_visible(true);
                CRowControls.LuaA.Movement.Anti_AFK:set_visible(true);
                CRowControls.LuaA.Movement.Player_status:set_visible(true);
            end,
            [8] = function()

            end,
            [16] = function()
                CRowControls.LuaA.Logs.Vote_Log:set_visible(true);
            end
        }

        local case_value = CGUI.Combo.LuaA.feature_combo:get_value():get():get_raw();

        if switch[case_value] then
            switch[case_value]()
        end
    end,

    no_fall_dmg = function()

        if not CGUI.CheackBox.LuaA.Movement.No_Fall_DMG:get_value():get() then
            return
        end

        if game.engine:in_game() then

            local lp = entities.get_local_pawn()

            if not lp then
                return
            end

            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and lp.m_flOldFallVelocity:get() > 570 then
                gui.ctx:find('misc>movement>jumpbug'):set_value(true)
            else
                gui.ctx:find('misc>movement>jumpbug'):set_value(false)
            end
        end

    end,

    draw_Player_Status = function()

        local w, h = game.engine:get_screen_size()
        local d = draw.surface
        d.font = draw.fonts['gui_semi_bold']
        local r, g, b, a = GPT_utils:get_bar_color()
        local lp = entities.get_local_pawn()
        if not lp then
            return;
        end

        local DPI_Scale = IGlobalVars.CCS2_FA_GUI_Entity.DPI_Scale:get_value():get():get_raw();

        local cur_x = nil;

        local switch = {

            [1] = function()
                cur_x = 0

            end,
            [2] = function()
                cur_x = -5
            end,
            [4] = function()
                cur_x = -3
            end,
            [8] = function()
                cur_x = 0
            end,
            [16] = function()
                cur_x = 3
            end,
            [32] = function()
                cur_x = 5
            end
        }

        if switch[DPI_Scale] then
            switch[DPI_Scale]()
        end

        if not CGUI.CheackBox.LuaA.Movement.Player_status:get_value():get() then
            return;
        end

        if game.engine:in_game() and lp:is_alive() then

            IGlobalVars.int.draw_padding = IGlobalVars.int.draw_padding + 12;

            if not lp.m_bIsScoped:get() then
                if IGlobalVars.int.lp_speed ~= 0 and IGlobalVars.CCS2_FA_GUI_Entity.misc_slowwalk:get_value():get() ==
                    false and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and
                    bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                    d:add_text(draw.vec2(w / 2 - d.font:get_text_size(IGlobalVars.char.player_status[2]).x / 2 - cur_x,
                        h / 2 + IGlobalVars.int.draw_padding + 1), IGlobalVars.char.player_status[2], draw.color.black())
                    d:add_text(draw.vec2(w / 2 - d.font:get_text_size(IGlobalVars.char.player_status[2]).x / 2 - cur_x,
                        h / 2 + IGlobalVars.int.draw_padding), IGlobalVars.char.player_status[2],
                        draw.color(255, 255, 255))
                end

                if IGlobalVars.CCS2_FA_GUI_Entity.misc_slowwalk:get_value():get() and IGlobalVars.int.lp_speed ~= 0 and
                    bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ==
                    0 then
                    d:add_text(draw.vec2(w / 2 - d.font:get_text_size(IGlobalVars.char.player_status[1]).x / 2 - cur_x,
                        h / 2 + IGlobalVars.int.draw_padding + 1), IGlobalVars.char.player_status[1], draw.color.black())
                    d:add_text(draw.vec2(w / 2 - d.font:get_text_size(IGlobalVars.char.player_status[1]).x / 2 - 1 -
                                             cur_x, h / 2 + IGlobalVars.int.draw_padding),
                        IGlobalVars.char.player_status[1], draw.color(255, 255, 255))
                end

                if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ==
                    0 then
                    d:add_text(draw.vec2(w / 2 - d.font:get_text_size(IGlobalVars.char.player_status[4]).x / 2,
                        h / 2 + IGlobalVars.int.draw_padding + 1), IGlobalVars.char.player_status[4], draw.color.black())
                    d:add_text(draw.vec2(w / 2 - d.font:get_text_size(IGlobalVars.char.player_status[4]).x / 2 - 1,
                        h / 2 + IGlobalVars.int.draw_padding), IGlobalVars.char.player_status[4],
                        draw.color(255, 255, 255))
                end

                if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ~=
                    0 then
                    d:add_text(draw.vec2(w / 2 - d.font:get_text_size(IGlobalVars.char.player_status[5]).x / 2 - cur_x,
                        h / 2 + IGlobalVars.int.draw_padding + 1), IGlobalVars.char.player_status[5], draw.color.black())
                    d:add_text(draw.vec2(w / 2 - d.font:get_text_size(IGlobalVars.char.player_status[5]).x / 2 - 1 -
                                             cur_x, h / 2 + IGlobalVars.int.draw_padding),
                        IGlobalVars.char.player_status[5], draw.color(255, 255, 255))
                end

                if IGlobalVars.int.lp_speed == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and
                    bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                    d:add_text(draw.vec2(w / 2 - d.font:get_text_size(IGlobalVars.char.player_status[0]).x / 2 - cur_x,
                        h / 2 + IGlobalVars.int.draw_padding + 1), IGlobalVars.char.player_status[0], draw.color.black())
                    d:add_text(draw.vec2(w / 2 - d.font:get_text_size(IGlobalVars.char.player_status[0]).x / 2 - 1 -
                                             cur_x, h / 2 + IGlobalVars.int.draw_padding),
                        IGlobalVars.char.player_status[0], draw.color(255, 255, 255))
                end

                if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ~=
                    0 then
                    d:add_text(draw.vec2(w / 2 - d.font:get_text_size(IGlobalVars.char.player_status[3]).x / 2 - cur_x,
                        h / 2 + IGlobalVars.int.draw_padding + 1), IGlobalVars.char.player_status[3], draw.color.black())
                    d:add_text(draw.vec2(w / 2 - d.font:get_text_size(IGlobalVars.char.player_status[3]).x / 2 - 1 -
                                             cur_x, h / 2 + IGlobalVars.int.draw_padding),
                        IGlobalVars.char.player_status[3], draw.color(255, 255, 255))
                end

            else
                IGlobalVars.float.current_x_status = GPT_utils:update_x(IGlobalVars.float.current_x_status, w / 2 + 5,
                    0.1)

                if not IGlobalVars.float.current_x_status then
                    return
                end

                if IGlobalVars.int.lp_speed ~= 0 and IGlobalVars.CCS2_FA_GUI_Entity.misc_slowwalk:get_value():get() ==
                    false and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and
                    bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                    d:add_text(draw.vec2(IGlobalVars.float.current_x_status, h / 2 + IGlobalVars.int.draw_padding + 1),
                        IGlobalVars.char.player_status[2], draw.color.black())
                    d:add_text(draw.vec2(IGlobalVars.float.current_x_status - 1, h / 2 + IGlobalVars.int.draw_padding),
                        IGlobalVars.char.player_status[2], draw.color(255, 255, 255))
                end

                if IGlobalVars.CCS2_FA_GUI_Entity.misc_slowwalk:get_value():get() and IGlobalVars.int.lp_speed ~= 0 and
                    bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ==
                    0 then
                    d:add_text(draw.vec2(IGlobalVars.float.current_x_status, h / 2 + IGlobalVars.int.draw_padding + 1),
                        IGlobalVars.char.player_status[1], draw.color.black())
                    d:add_text(draw.vec2(IGlobalVars.float.current_x_status - 1, h / 2 + IGlobalVars.int.draw_padding),
                        IGlobalVars.char.player_status[1], draw.color(255, 255, 255))
                end

                if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ==
                    0 then
                    d:add_text(draw.vec2(IGlobalVars.float.current_x_status, h / 2 + IGlobalVars.int.draw_padding + 1),
                        IGlobalVars.char.player_status[4], draw.color.black())
                    d:add_text(draw.vec2(IGlobalVars.float.current_x_status - 1, h / 2 + IGlobalVars.int.draw_padding),
                        IGlobalVars.char.player_status[4], draw.color(255, 255, 255))
                end

                if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ~=
                    0 then
                    d:add_text(draw.vec2(IGlobalVars.float.current_x_status, h / 2 + IGlobalVars.int.draw_padding + 1),
                        IGlobalVars.char.player_status[5], draw.color.black())
                    d:add_text(draw.vec2(IGlobalVars.float.current_x_status - 1, h / 2 + IGlobalVars.int.draw_padding),
                        IGlobalVars.char.player_status[5], draw.color(255, 255, 255))
                end

                if IGlobalVars.int.lp_speed == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and
                    bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                    d:add_text(draw.vec2(IGlobalVars.float.current_x_status, h / 2 + IGlobalVars.int.draw_padding + 1),
                        IGlobalVars.char.player_status[0], draw.color.black())
                    d:add_text(draw.vec2(IGlobalVars.float.current_x_status - 1, h / 2 + IGlobalVars.int.draw_padding),
                        IGlobalVars.char.player_status[0], draw.color(255, 255, 255))
                end

                if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 1 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) ~=
                    0 then
                    d:add_text(draw.vec2(IGlobalVars.float.current_x_status, h / 2 + IGlobalVars.int.draw_padding + 1),
                        IGlobalVars.char.player_status[3], draw.color.black())
                    d:add_text(draw.vec2(IGlobalVars.float.current_x_status - 1, h / 2 + IGlobalVars.int.draw_padding),
                        IGlobalVars.char.player_status[3], draw.color(255, 255, 255))
                end

            end

        end

    end,

    Auto_FNS = function()
        local lp = entities.get_local_pawn()
        if not lp then
            return;
        end

        local weapon = lp:get_active_weapon()
        if not weapon or not weapon:is_gun() then
            return
        end

        if game.engine:in_game() and lp:is_alive() then
            IGlobalVars.CCS2_FA_GUI_Entity.force_nospread:get_value():set(false);

            if bit.band(lp.m_fFlags:get(), bit.lshift(1, 0)) == 0 and bit.band(lp.m_fFlags:get(), bit.lshift(1, 1)) == 0 then
                IGlobalVars.CCS2_FA_GUI_Entity.force_nospread:get_value():set(true);
            end
        else
            IGlobalVars.CCS2_FA_GUI_Entity.force_nospread:get_value():set(false);
        end

    end,

    Anti_Head_Shake = function()

        if IGlobalVars.bool.Hide_Shot_bool == false then
            IGlobalVars.bool.temp_Hide_Shot_staut = IGlobalVars.CCS2_FA_GUI_Entity.AA_Hide_Shot:get_value():get()
        end

        if true then
            Hide_Shot_bool = true
            IGlobalVars.bool.recover_Hide_Shot = false
            if IGlobalVars.CCS2_FA_GUI_Entity.yaw_custom_slider:get_value():get() < 35 and
                IGlobalVars.CCS2_FA_GUI_Entity.yaw_custom_slider:get_value():get() > -35 and
                IGlobalVars.CCS2_FA_GUI_Entity.Yaw_Base_Mode:get_value():get():get_raw() == 4 or
                IGlobalVars.CCS2_FA_GUI_Entity.angles_Forward_checkbox:get_value():get() then
                IGlobalVars.CCS2_FA_GUI_Entity.AA_Hide_Shot:set_value(false)
            else
                IGlobalVars.CCS2_FA_GUI_Entity.AA_Hide_Shot:set_value(true)
            end

        else

            if IGlobalVars.bool.recover_Hide_Shot == false and IGlobalVars.bool.Hide_Shot_bool == true then
                IGlobalVars.CCS2_FA_GUI_Entity.AA_Hide_Shot:set_value(IGlobalVars.bool.temp_Hide_Shot_staut)
                IGlobalVars.bool.recover_Hide_Shot = true
                IGlobalVars.bool.Hide_Shot_bool = false
            end

        end
    end

}

---- Event Function ---------

CEVent = {};

function CEVent:Anti_AFK()
    if not CGUI.CheackBox.LuaA.Movement.Anti_AFK:get_value():get() then
        return
    end

    game.engine:client_cmd('+duck');
    game.engine:client_cmd('-duck');
end

function CEVent:on_vote_start(event)
    local event_name = event:get_name()

    if event_name == 'vote_cast' then
        local vote_option = event:get_int('vote_option')
        local team = event:get_int('team')
        local user_pawn = event:get_pawn_from_id('userid')
        if not user_pawn then
            return
        end
        local user_name = user_pawn:get_name()
        local yes_or_no = "null"
        local team_name = "null"
        if vote_option == 0 then
            yes_or_no = "Yes"
        else
            yes_or_no = "No"
        end

        if team == 2 then
            team_name = "T"
        else
            team_name = "CT"
        end

        local vote_message = string.format("Team: %s | Vote to: %s | name: %s", team_name, yes_or_no, user_name)
        local votenotif = gui.notification('Vote Event!', vote_message, draw.textures['gui_icon_bug'])

        if (CGUI.Combo.LuaA.Logs.Vote_Log:get_value():get():get_raw() == 1 or
            CGUI.Combo.LuaA.Logs.Vote_Log:get_value():get():get_raw() == 3) then
            print(vote_message);
        end

        if (CGUI.Combo.LuaA.Logs.Vote_Log:get_value():get():get_raw() == 2 or
            CGUI.Combo.LuaA.Logs.Vote_Log:get_value():get():get_raw() == 3) then
            gui.notify:add(votenotif)
            print_chat("\x01[\x03HACK\x01GPT\x01] " .. vote_message);
        end

    end
end

function CEVent:on_player_hurt(event)
    local event_name = event:get_name()
    local lp = entities.get_local_pawn()

    if not lp or not game.engine:in_game() then
        return
    end

    if event_name == 'player_hurt' then
        local attacker_name_Hitlog
        local user_name_Hitlog
        local attacker_pos
        local user_pos

        local user_pawn = event:get_pawn_from_id('userid')
        local attacker_pawn = event:get_pawn_from_id('attacker')

        local player_remaining = event:get_int('health')
        local damage_Hitlog = event:get_int("dmg_health")
        local hitgroup_Hitlog = event:get_int("hitgroup")
        local attacker_weapon = event:get_string('weapon')

        local hitgroup_names = {
            [0] = "unknown",
            [1] = "Head",
            [2] = "neck",
            [3] = "stomach",
            [4] = "Left Hand",
            [5] = "Right Hand",
            [6] = "Left Leg",
            [7] = "Right Leg"
        }

        if not attacker_pawn and user_pawn then
            attacker_name_Hitlog = "yourself"
            attacker_pos = user_pawn:get_abs_origin()
        else
            attacker_name_Hitlog = attacker_pawn:get_name()
            attacker_pos = attacker_pawn:get_abs_origin()
        end

        user_name_Hitlog = user_pawn:get_name()
        user_pos = user_pawn:get_abs_origin()

        local distance = GPT_utils:calculate_distance(attacker_pos, user_pos) * 0.1
        distance = math.floor(distance)

        if not attacker_weapon then
            attacker_weapon = "world"
        end

        local HitSite = hitgroup_names[hitgroup_Hitlog]

        if attacker_pawn == lp then

            if user_pawn:is_enemy() then

                local hitlog_text = string.format("%s for %d hp in %s (%d remaining | distance: %dm)", user_name_Hitlog,
                    damage_Hitlog, HitSite, player_remaining, distance)
                local isFNS = "Off"

                if IGlobalVars.CCS2_FA_GUI_Entity.force_nospread:get_value():get() then
                    isFNS = "On"
                end

                print_chat("\x01[\x03HACK\x01GPT\x01] " .. "\x01命中\x04 " .. user_name_Hitlog .. "\x01 的 \x04" ..
                               HitSite .. "\x01 伤害: \x04" .. tostring(damage_Hitlog) .. "\x01 剩余HP: \x02" ..
                               tostring(player_remaining) .. "\x01 距离: \x04" .. distance ..
                               "\x01 m \x01 速度: \x0c" .. IGlobalVars.int.lp_speed .. " \x01 FNS: \x02" .. isFNS)

                local Hit_message_Hitlog = string.format("Damage: %d HP | Hit site: %s | Remaining: %d | Distance: %dm",
                    damage_Hitlog, HitSite, player_remaining, distance)

                local Hitnotif = gui.notification('Hit Message', Hit_message_Hitlog, draw.textures['icon_rage'])
                gui.notify:add(Hitnotif)

            end

            if not user_pawn:is_enemy() and user_pawn ~= lp then

                IGlobalVars.int.Team_general_dmg = IGlobalVars.int.Team_general_dmg + damage_Hitlog
                if player_remaining == 0 then
                    IGlobalVars.int.Team_kill = IGlobalVars.int.Team_kill + 1
                end
                local Hurt_message_Hitlog = string.format(
                    "Kill: %d/3 | Damage: %d HP | Remaining: %d | General DMG: %d/300", IGlobalVars.int.Team_kill,
                    damage_Hitlog, player_remaining, IGlobalVars.int.Team_general_dmg)
                local Hurtnotif = gui.notification('Team Damage Warning', Hurt_message_Hitlog,
                    draw.textures['icon_info'])

                gui.notify:add(Hurtnotif)
            end

        end

        if user_pawn == lp and damage_Hitlog ~= 0 then

            if not HitSite then
                HitSite = "unknown"
            end

            print_chat("\x01[\x03HACK\x01GPT\x01] " .. "\x01被\x02 " .. attacker_name_Hitlog .. "\x01 击中 \x04" ..
                           HitSite .. "\x01 伤害: \x04" .. tostring(damage_Hitlog) .. "\x01 剩余HP: \x02" ..
                           tostring(player_remaining) .. "\x01 距离: \x04" .. distance .. "\x01 m")

            local Hurt_message_Hitlog = string.format(
                "Hurt by: %s | Damage: %d HP | Hit site: %s | Remaining: %d | Distance: %dm", attacker_name_Hitlog,
                damage_Hitlog, HitSite, player_remaining, distance)
            local Hurtnotif = gui.notification('Hurt Message', Hurt_message_Hitlog, draw.textures['icon_close'])
            gui.notify:add(Hurtnotif)
        end

    end
end

----- Global Event ----------

function CEVent:on_round_start(event)
    local event_name = event:get_name()
    if event_name == 'round_start' then
        CEVent:Anti_AFK();
    end
end

----- callback -----
mods.events:add_listener('player_death')
mods.events:add_listener('vote_cast')
mods.events:add_listener("cs_win_panel_match")
mods.events:add_listener('round_end');

GUI_Init()
events.present_queue:add(function()
    IGlobalVars.int.draw_padding = 0
    CPresent_queue:draw_Player_Status();
    CPresent_queue:draw_speed_prg();
    CPresent_queue:draw_crosshair_watermark();
    CPresent_queue:force_overrride_ragebot_fov();
    CPresent_queue:GUI_Event();
    CPresent_queue:no_fall_dmg();
    CPresent_queue:Auto_FNS();
    CPresent_queue:Anti_Head_Shake();
end)

events.event:add(function(event)
    CEVent:on_round_start(event);
    CEVent:on_vote_start(event);
    CEVent:on_player_hurt(event);
end);


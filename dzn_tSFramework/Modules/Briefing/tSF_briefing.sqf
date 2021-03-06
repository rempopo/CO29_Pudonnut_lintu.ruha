//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
#define TAGS(X) tSF_MissionTags = X ;
//
//
// Mission tags
TAGS(["INFANTRY"])

// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Конец августа 2022 года, на территории стран Прибалтики проходили масштабные учения НАТО, в ходе которых звено американских истребителей случайно покинуло зону выполнения операции и вступило в бой с патрулирующей группой российских истребителей. После этого инцидента войска НАТО усилили свое присутствие на границе с Российской Федерацией, что спровоцировало Россию ответить тем же. Подписание договора о размещении Американского и Канадского контингента на территории Финляндии спровоцировало Россию на военные действия в сторону Финляндии, в свою очередь блок НАТО объявил войну Российской Федерации.
<br />7 Сентябрь 2022, Российские войска сильно углубились на территорию Финляндии, ВС Финляндии не в состоянии оказать существенный отпор по всей территории государства, решили стянуть основные силы в Южную часть страны для обороны столицы и основных портов. Наш взвод, Кайнууского егерского батальона (Kainuun jääkäripataljoona), остался в тылу противника. В данном секторе ВС Норвегии проводят масштабную наступательную операцию на позиции войск РФ. Мы должны облегчить их наступление путем уничтожения артиллерийских позиций и рем. пункта врага."
END

TOPIC("А. Враждебные силы:")
"ВС РФ - Регулярные войска.
<br />
<br />Около 2 или 3 взводов.
<br />Несколько вооруженных бронеавтомобилей.
<br />Станковые пулемёты.
<br />
<br />Возможно подкрепление.
<br />"
END

TOPIC("Б. Дружественные силы:")
"Взвод Кайнууского егерского батальона (Kainuun jääkäripataljoona) ВС Финляндии.
<br />
<br />1'1 - 9 чел.
<br />1'2 - 9 чел.
<br />1'3 - 9 чел.
<br />1'6 - 2 чел."
END

TOPIC("II. Задание:")
"1. Уничтожить вражескую артиллерию.
<br />2. Уничтожить ремонтный пункт.
<br />3. Выдвинуться на точку Kodikkuutta.
<br />"
END

TOPIC("III. Выполнение:")
"Начинаем на точке ""Suolla"".
<br />В данном секторе имеется дальнобойная артиллерия врага (2С3М1), а также рем. пункт противника. Нам необходимо уничтожить как минимум один из этих объектов.
<br />Уничтожение этих объектов поможет нашим норвежским товарищам, в их наступлении.
<br />После выполнения задач необходимо отступить в точку ""Kodikkuutta""."
END

TOPIC("IV. Поддержка:")
"Ящики с доп. медициной и боеприпасами на точке ""Suolla"".
<br />
<br />Редеплои и доукомплекты согласно стандартным правилам."
END

TOPIC("V. Сигналы:")
"PL NET 50 Mhz
<br />SUP NET 51 Mhz
<br />
<br />1'1 - SR CH 1
<br />1'2 - SR CH 2
<br />1'3 - SR CH 3"
END

TOPIC("VI. Замечания:")
"Для выполнение миссии необходимо уничтожить, как минимум, одну цель.
<br />Патроны для пулеметчиков в рюкзаках гренадеров!
<br />Ящики с доп. медициной и боеприпасами на точке ""Suolla"".
<br />Взрывчатка у райфлменов и фтл-ов + в ящиках на точке ""Suolla"".
<br />
<br />Редеплои и доукомплекты согласно стандартным правилам."
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"Патрули которые игроки обошли, можно перенаправить в контратаку.
<br />Если будет слишком легко - поспаунь доп ботов.
<br />Когда игроки зайдут в зону артиллерии, должно выдвинуться подкрепление на ""тигре"", если шо помоги им докатить."
END
};

ADD_TOPICS

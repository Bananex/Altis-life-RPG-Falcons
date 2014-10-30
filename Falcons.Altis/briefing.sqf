waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Actualités"];

	player createDiaryRecord["changelog",
		[
			"Actualités",
				"
				<br/>
				____________________________________________<br/>
				<br/>
					Serveur officiel www.team-falcons.fr<br/>
					Passez sur notre forum pour les actualités.<br/>
					Teamspeak disponible a cette adresse :<br/>
					- 188.165.195.202:64738<br/>
					Administrateurs : Nicolas / Lucas / Haribo<br/>
					Dernière M.A.J : 30 septembre 2014<br/>
				<br/>
				____________________________________________<br/>
				"
		]
	];
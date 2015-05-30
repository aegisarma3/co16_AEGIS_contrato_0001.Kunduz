//waituntil {(player getvariable ["alive_sys_player_playerloaded",false])}; This waits until a players persistence data is loaded, uncomment and place appropriately if you have scripts
// that depend on player being fully synced

///////////////////--Basic--///////////////////        -----> https://community.bistudio.com/wiki/enableSaving
enableSaving [false, false];



// player creatediaryRecord["Diary", ["Execução", "<br/><br/>"]];
// player creatediaryRecord["Diary", ["Operação", "<br/><br/>"]];
// player creatediaryRecord["Diary", ["Contrato 0001", "<br/><br/>"]];


execVM "intro.sqf";
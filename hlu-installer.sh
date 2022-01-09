#!/bin/bash
Bin_folder="/usr/local/bin"
Hist_folder="$HOME/Hist"
Exec_folder="$(dirname "$0")/source"
if [[ ! -d "$Hist_folder" ]]; then mkdir -p "$Hist_folder"; fi
noc=$(tput sgr0); rec=$(tput setaf 1); grc=$(tput setaf 2); cyc=$(tput setaf 6)
if [[ -f "$Bin_folder/histutilities" ]]; then
	echo -e "\n ${cyc}1${noc} - ${grc}Update${noc}"
	echo -e " ${cyc}2${noc} - ${grc}Uninstall${noc}"
	echo -e "\nChoose ${cyc}option${noc} from the ${grc}list${noc} above:"; read -r -e "installer_ans"
else installer_ans="1"; fi
if [[ "$installer_ans" == "1" ]]; then
	#cd "$(dirname "$0")" || exit; git reset --hard; git pull "https://github.com/sergeyhist/hist-linux-utilities"
	sudo cp "$Exec_folder/histutilities" "$Bin_folder/histutilities"
	cp -r "$Exec_folder/Configs" "$Hist_folder/";cp -r "$Exec_folder/Installers" "$Hist_folder/"
	sudo chmod 755 "$Bin_folder/histutilities"
	if [[ -f "$Bin_folder/histutilities" ]]; then echo -e "\n${grc}Successful${noc}\n"
	else echo -e "\n${rec}Failed${noc}\n"; fi
elif [[ "$installer_ans" == "2" ]]; then
	sudo rm -f "$Bin_folder/histutilities"
	if [[ ! -f "$Bin_folder/histutilities" ]]; then echo -e "\n${grc}Successful${noc}\n"
	else echo -e "\n${rec}Failed${noc}\n"; fi; fi

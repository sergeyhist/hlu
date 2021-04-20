#!/bin/bash
Bin_folder="/usr/local/bin"
Exec="histgamehelper"
noc=$(tput sgr0); rec=$(tput setaf 1); grc=$(tput setaf 2); blc=$(tput setaf 4); cyc=$(tput setaf 6); mac=$(tput setaf 5)

echo -e "\n ${mac}Linux Game Helper Installer:${noc}"
echo -e "\n ${cyc}1${noc} - ${grc}Install${noc}"
echo -e " ${cyc}2${noc} - ${grc}Uninstall${noc}"
echo -e "\nChoose ${cyc}option${noc} from the ${grc}list${noc} above:"; read -e "installer_ans"
if [[ "$installer_ans" == "1" ]]; then
	sudo cp source/$Exec $Bin_folder/$Exec
	sudo chmod 755 $Bin_folder/$Exec
	if [[ -f "$Bin_folder/$Exec" ]]; then echo -e "\n${grc}Program${noc} installed ${grc}successfully${noc}!\n"
	else echo -e "\n${grc}Program${noc}${rec}not installed${noc}!\n"; fi
elif [[ "$installer_ans" == "2" ]]; then
	if [[ ! -f "$Bin_folder/$Exec" ]]; then echo -e "\n${grc}Program${noc} not ${grc}installed${noc}!\n"
	else
		sudo rm -f $Bin_folder/$Exec
		if [[ ! -f "$Bin_folder/$Exec" ]]; then echo -e "\n${grc}Program${noc} uninstalled ${grc}successfully${noc}!\n"
		else echo -e "\n${grc}Program${noc} ${rec}not uninstalled${noc}!\n"; fi; fi; fi

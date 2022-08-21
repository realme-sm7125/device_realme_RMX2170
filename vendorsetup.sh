# vendor/hotword
if [ -e vendor/hotword ]; then
    echo "repo vendor/hotword exists.. Skipping cloning." && echo ""
else
    echo "Now will clone vendor/hotword" && echo ""
    git clone https://github.com/realme-sm7125/vendor_hotword vendor/hotword
    echo "Done cloning of vendor/hotword" && echo ""
fi

# clang
if [ -e prebuilts/clang/host/linux-x86/clang-r437112 ]; then
    echo "Clang exists... Skipping cloning." && echo "" && sleep 0.5
else
    echo "Now will clone Clang" && echo ""
    git clone https://github.com/ArrowOS-Devices/android_prebuilts_clang_host_linux-x86_clang-r437112 prebuilts/clang/host/linux-x86/clang-r437112
    if [ -e prebuilts/clang/host/linux-x86/clang-r437112 ]; then
        echo "Done cloning of Clang" && echo "" && sleep 0.5
    else
        echo "There is some problem in cloning Clang" && echo "" && sleep 0.5
    fi
fi

# dirac
if [ -e packages/apps/RealmeDirac ]; then
    echo "RealmeDirac exist... Skipping cloning." && echo "" && sleep 0.5
else
    echo "Now will clone Realme dirac" && echo ""
    git clone https://github.com/realme-sm7125/android_packages_apps_RealmeDirac packages/apps/RealmeDirac
    if [ -e packages/apps/RealmeDirac ]; then
        echo "Done cloning of Realme dirac" && echo && sleep 0.5
    else
        echo "There is some problem in cloning Realme dirac" && echo "" && sleep 0.5
    fi
fi

# hardware/xiaomi
if [ -e hardware/xiaomi ]; then
    echo "Repo hardware/xiaomi exist... Skipping cloning." && echo "" && sleep 0.5
else
    echo "Now will clone hardware/xiaomi" && echo ""
    git clone https://github.com/realme-sm7125/hardware_xiaomi hardware/xiaomi
    if [ -e hardware/xiaomi ]; then
        echo "Done cloning of repo hardware/xiaomi" && echo && sleep 0.5
    else
        echo "There is some problem in cloning hardware/xiaomi" && echo "" && sleep 0.5
    fi
fi

# Lawnchair
if [ -e vendor/lawnchair ]; then
    echo "Lawnchair exist... Skipping cloning." && echo "" && sleep 0.5
else
    echo "Now will clone lawnchair" && echo ""
    git clone https://github.com/realme-sm7125/lawnchair vendor/lawnchair
    if [ -e vendor/lawnchair ]; then
        echo "Done cloning of lawnchair" && echo && sleep 0.5
    else
        echo "There is some problem in cloning lawnchair" && echo "" && sleep 0.5
    fi
fi

# Oplus
if [ -e external/oplus-fonts ]; then
    echo "external/oplus-fonts exist... Skipping cloning." && echo "" && sleep 0.5
else
    echo "Now will clone external/oplus-fonts" && echo ""
    git clone https://github.com/realme-sm7125/external_oplus-fonts external/oplus-fonts
    if [ -e external/oplus-fonts ]; then
        echo "Done cloning of external/oplus-fonts" && echo && sleep 0.5
    else
        echo "There is some problem in cloning external/oplus-fonts" && echo "" && sleep 0.5
    fi
fi

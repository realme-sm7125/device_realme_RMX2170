# vendor/hotword
if [ -e vendor/hotword ]; then
    echo "repo vendor/hotword exists.. Skipping cloning." && echo ""
else
    echo "Now will clone vendor/hotword" && echo ""
    git clone https://github.com/realme-sm7125/vendor_hotword vendor/hotword
    echo "Done cloning of vendor/hotword" && echo ""
fi

# proton clang
if [ -e prebuilts/clang/host/linux-x86/clang-proton ]; then
    echo "Proton clang exists... Skipping cloning." && echo "" && sleep 0.5
else
    echo "Now will clone Proton clang" && echo ""
    git clone --depth=1 https://github.com/kdrag0n/proton-clang prebuilts/clang/host/linux-x86/clang-proton
    if [ -e prebuilts/clang/host/linux-x86/clang-proton ]; then
        echo "Done cloning of Proton clang" && echo "" && sleep 0.5
    else
        echo "There is some problem in cloning Proton clang" && echo "" && sleep 0.5
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

# viper
if [ -e packages/apps/ViPER4AndroidFX ]; then
    echo "ViPER4AndroidFX exist... Skipping cloning." && echo "" && sleep 0.5
else
    echo "Now will clone ViPER4AndroidFX" && echo ""
    git clone https://github.com/swiitch-OFF-Lab/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX
    if [ -e packages/apps/ViPER4AndroidFX ]; then
        echo "Done cloning of ViPER4AndroidFX" && echo && sleep 0.5
    else
        echo "There is some problem in cloning ViPER4AndroidFX" && echo "" && sleep 0.5
    fi
fi

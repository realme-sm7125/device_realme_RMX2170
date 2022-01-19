# Clone caf hals for sm8150
arrowgit="https://github.com/ArrowOS"
branch="arrow-12.0-caf-sm8150"
aud="hardware/qcom-caf/sm8150/audio"
disp="hardware/qcom-caf/sm8150/display"
med="hardware/qcom-caf/sm8150/media"
rep="android_hardware_qcom_"

echo "Will start cloning of hals" && echo "" && sleep 0.5
rm -rf $aud && git clone $arrowgit/${rep}audio -b $branch $aud && echo ""
rm -rf $disp && git clone $arrowgit/${rep}display -b $branch $disp && echo ""
rm -rf $med && git clone $arrowgit/${rep}media -b $branch $med && echo ""
echo "Done cloning of hals"  && echo "" && echo ""

# vendor/hotword
if [ -e vendor/hotword ]; then
    echo "repo vendor/hotword exists.. Skipping cloning." && echo ""
else
    echo "Now will clone vendor/hotword" && echo ""
    git clone https://github.com/realme-sm7125/vendor_hotword vendor/hotword
fi

build:
  pio run

flash: build removeOld copyToSD

removeOld:
  rm /Volumes/NO\ NAME/firmware*.bin

copyToSD:
  cp `ls -t .pio/build/STM32F103RE_creality_maple/firmware*.bin | head -1` `/Volumes/NO NAME/.`

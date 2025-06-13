#!/bin/bash

rm -r convert-output

echo "Converting MRAO textures"
while IFS= read -r -d '' -u 9
do
  input_file="$REPLY"
  output_file=convert-output/${input_file%.png}.ktx2

  echo "Converting $input_file to $output_file"
  ktx create --format R8G8B8_UNORM --assign-tf linear --encode uastc --generate-mipmap --zstd 18 --uastc-rdo "$REPLY" "$output_file"
done 9< <( find ./materials -type f -name "*_mrao.png" -exec printf '%s\0' {} + )

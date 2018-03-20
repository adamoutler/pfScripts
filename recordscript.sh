#! /bin/bash

for  i in {0..99}; do
  echo "record disableRule$i
parse_config(true);
print_r($config["filter"]["rule"]["$i"]["disabled"] = true);
write_config();
stoprecording
record enableRule$i
parse_config(true);
print_r($config["filter"]["rule"]["$i"]["disabled"] = false);
write_config();
stoprecording
"
done

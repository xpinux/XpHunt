#!/bin/bash

# Get service name and version as inputs
echo "Enter the name of the service you want to search for exploits: "
read service_name
echo "Enter the version of the service you want to search for exploits: "
read service_version

# Construct search query for searchsploit
search_query="$service_name $service_version"

while true; do
  # Search for exploits using searchsploit
  echo "Searching for exploits for $search_query ..."
  search_results=$(searchsploit $search_query)

  # Check if any results were found
  if [ -z "$search_results" ]; then
    echo "No exploits found for $search_query"
    break
  else
    # Print search results
    echo ""
    echo "Exploits found for $search_query:"
    echo "---------------------------------"
    echo "$search_results"
    echo "---------------------------------"

    while true; do
      # Ask user if they want to download an exploit
      echo ""
      echo "Do you want to download an exploit? (Enter exploit number or N for no)"
      read user_choice

      # Check if user wants to download an exploit
      if [ "$user_choice" != "N" ] && [ "$user_choice" != "n" ]; then
        # Parse exploit file path from searchsploit result
        exploit_file=$(echo "$search_results" | awk -v num="$user_choice" 'NR==num{print $2}')

        # Download exploit file
        echo "Downloading $exploit_file ..."
        searchsploit -m $user_choice

        # Ask user if they want to download another exploit
        echo ""
        read -p "Do you want to download another exploit? (Y/N) " download_another

        # Check if user wants to download another exploit
        if [ "$download_another" != "Y" ] && [ "$download_another" != "y" ]; then
          break 2
        fi
      else
        break 2
      fi
    done
  fi
done

# Ask user if they want to search for exploits in Metasploit
echo ""
read -p "Do you want to search for exploits in Metasploit? (Y/N) " search_in_metasploit

# Check if user wants to search for exploits in Metasploit
if [ "$search_in_metasploit" = "Y" ] || [ "$search_in_metasploit" = "y" ]; then
  echo ""
  echo "Searching for exploits for $search_query in Metasploit ..."
  msfconsole -q -x "search $search_query;exit;"
fi

echo "Done."

#!/bin/bash
# Create a temporary directory for processed images
mkdir -p temp_images

# Initialize counter for sequential filenames
i=1

# Loop through each image in the photos directory recursively
while read img; do
  # Extract the filename without the path
  filename=$(basename "$img")
  # Extract the folder path relative to photos
  folderpath=$(dirname "$img" | sed 's|photos/||')
  # Replace / with space in folderpath
  folderpath=$(echo "$folderpath" | tr '/' ' ')

  echo "Processing: $img"
  echo "Label: $folderpath"
  # Add the folder path as a text overlay on the image at bottom left, resized to FullHD
  ffmpeg -i "$img" -vf "scale=w=1920:h=1080:force_original_aspect_ratio=decrease,pad=1920:1080:-1:-1:color=black,drawtext=text='$folderpath':x=10:y=h-th-10:fontsize=64:fontcolor=white:box=1:boxcolor=black@0.5" "temp_images/$(printf "%04d.jpg" $i)"
  i=$((i+1))
done < <(find photos -name "*.jpg" -type f | sort)

# Create the video from the processed images
# ffmpeg -framerate 1/5 -pattern_type glob -i 'temp_images/*.jpg' -c:v libx264 -vf "scale='min(1920,iw)':min'(1080,ih)':force_original_aspect_ratio=decrease,pad=1920:1080:-1:-1:color=black,fps=8,format=yuv420p" -crf 20 video-no-music.mp4


# ffmpeg -framerate 1/5 -pattern_type glob -i 'sample/*.jpg' -c:v libx264 -vf "scale='min(1920,iw)':min'(1080,ih)':force_original_aspect_ratio=decrease,pad=1920:1080:-1:-1:color=black,fps=8,drawtext=text='%{filename}':x=(w-text_w)/2:y=h-th-10:fontsize=24:fontcolor=white:box=1:boxcolor=black@0.5" -crf 20 video-no-music.mp4


# Plesk
# iqTvVa$OU3qdiJ*^TEZEsk!9GkH!6AZPR4XQzs%LMAxm2hjr

# mysql
# -h p3nlmysql125plsk.secureserver.net -u kmcssz -p
# Nr6FHG#yP%9k

# https://kmcsszadat.org/camps/scoutregister.asp?scoutID=5738 kmcsszadat.org 500 0 0 496 1383 95



# event: 2024-2-18
# cancelURL: https://kmcsszadat.org/people/events.asp?ID=5738
# prevEvent: 2024-2-18
# eventID: 
# scoutID: 5738
# subcamp_ID: 77
# role_ID: 4
# shirt_size: W-M
# camp_patrol: 
# register: Bejelenteni

# curl -v -X POST "https://kmcsszadat.org/camps/scoutregister.asp?scoutID=604" -d "event=2024-2-18&cancelURL=https%3A%2F%2Fkmcsszadat.org%2Fpeople%2Fevents.asp%3FID%3D604&prevEvent=2024-2-18&eventID=1012&scoutID=604&subcamp_ID=77&role_ID=46&shirt_size=M-L&camp_patrol=&register=Register" -b "ASPSESSIONIDAEDCAACT=GMOHOJIALPPPFBAKKJHCALHA; ASPSESSIONIDAUABCABT=MINDEAAAJBCJGHMGNNHNDBFN"

# SELECT ID FROM Event_List WHERE event_year = 2024 AND type_ID = 3 AND district_ID = 17 AND subcamp_ID = 108
# 1018

# UPDATE Event_Master SET event_ID = ( SELECT ID FROM Event_List WHERE event_year = 2024 AND type_ID = 3 AND district_ID = 17 AND subcamp_ID = 108 ), role_ID = 35, shirt_size = 'M-L', camp_patrol = '', date_mod = now() WHERE ID = 19474

#                 .Parameters.Append .CreateParameter("@eventYear", adDouble, adParamInput, -1, CInt(eventInfo(0)))
#                 .Parameters.Append .CreateParameter("@eventID", adDouble, adParamInput, -1, CInt(eventInfo(1)))
#                 .Parameters.Append .CreateParameter("@districtID", adDouble, adParamInput, -1, CInt(eventInfo(2)))
#                 .Parameters.Append .CreateParameter("@subcampID", adDouble, adParamInput, -1, CInt(Request.Form("subcamp_ID"))) 
#                 .Parameters.Append .CreateParameter("@roleID", adDouble, adParamInput, -1, CInt(Request.Form("role_ID")))
#                 .Parameters.Append .CreateParameter("@shirtSize", adVarChar, adParamInput, 20, Request.Form("shirt_size"))
#                 .Parameters.Append .CreateParameter("@patrol", adVarChar, adParamInput, 50, Request.Form("camp_patrol"))
#                 .Parameters.Append .CreateParameter("@date", adDBTimeStamp, adParamInput, -1, now())
#                 .Parameters.Append .CreateParameter("@subcampID", adDouble, adParamInput, -1, CInt(Request.Form("eventID"))) 


# The MySQL server is running with the --read-only option so it cannot execute this statement




# Sub LogMessage(message)
#     Response.Write "<script>console.log('" & Replace(message, "'", "\'") & "');</script>"
# End Sub

# LogMessage "GEO: start"
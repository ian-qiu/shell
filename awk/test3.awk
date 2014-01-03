{
    if($2 == "android_simulator" || $2 == "change_device" || $2 == "location_ip_diff"){
        if($1 < 50000000){
            print $0
        }
    }
}

function flush --description 'Flush DNS cache'
    sudo dscacheutil -flushcache
    sudo killall -HUP mDNSResponder
end

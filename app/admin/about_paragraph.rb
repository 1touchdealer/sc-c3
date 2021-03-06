ActiveAdmin.register AboutParagraph do
  menu parent: 'About'

  permit_params :about_category_id, :title, :text, :icon, :image, :position

  icons = %w(
    note
    note-beamed
    music
    search
    flashlight
    mail
    heart
    heart-empty
    star
    star-empty
    user
    users
    user-add
    video
    picture
    camera
    layout
    menu
    check
    cancel
    tag
    eye
    lock-open
    lock
    attach
    link
    back
    info-circled
    info
    help-circled
    help
    minus-squared
    minus-circled
    minus
    plus-squared
    plus-circled
    plus
    cancel-squared
    cancel-circled
    bookmark
    bookmarks
    flag
    thumbs-up
    thumbs-down
    download
    upload
    upload-cloud
    reply
    quote
    forward
    reply-all
    export
    pencil
    feather
    print
    keyboard
    comment
    book
    book-open
    newspaper
    retweet
    doc-text
    doc-landscape
    doc-text-inv
    doc
    docs
    trash
    cup
    compass
    direction
    location
    address
    vcard
    map
    alert
    attention
    bell
    code
    home
    chat
    folder
    light-down
    box
    block
    adjust
    rss
    cog
    tools
    resize-full
    popup
    share
    shareable
    publish
    resize-small
    basket
    arrow-combo
    calendar
    window
    down-circled
    bag
    login
    left-circled
    right-circled
    mic
    up-circled
    mute
    left-open
    sound
    volume
    right-open
    down-open
    up-open
    clock
    hourglass
    down-open-mini
    lamp
    light-up
    phone
    logout
    archive
    right-open-mini
    up-open-mini
    left-open-mini
    left-thin
    right-thin
    up-thin
    down-open-big
    ccw
    cw
    left-open-big
    arrows-ccw
    level-down
    left
    right-open-big
    up-open-big
    level-up
    down
    right
    loop
    up
    down-dir
    play
    left-dir
    stop
    right-dir
    pause
    switch
    shuffle
    record
    up-dir
    down-bold
    to-end
    to-start
    right-bold
    fast-forward
    fast-backward
    up-bold
    left-bold
    down-thin
    progress-0
    progress-1
    flash
    tape
    graduation-cap
    progress-2
    progress-3
    flight
    ticket
    paper-plane
    moon
    language
    palette
    target
    leaf
    water
    droplet
    lifebuoy
    list
    list-add
    mouse
    air
    credit-card
    briefcase
    signal
    trophy
    suitcase
    floppy
    clipboard
    dot
    battery
    dot-2
    megaphone
    dot-3
    monitor
    mobile
    brush
    drive
    bucket
    magnet
    database
    cd
    infinity
    thermometer
    network
    inbox
    erase
    key
    flow-cascade
    chart-pie
    install
    globe
    chart-line
    flow-branch
    flow-tree
    cloud
    cloud-thunder
    chart-area
    flow-line
    chart-bar
    back-in-time
    rdio
    vimeo-circled
    flow-parallel
    rocket
    twitter
    twitter-circled
    gauge
    rdio-circled
    spotify
    spotify-circled
    facebook
    traffic-cone
    cc
    facebook-circled
    qq
    instagram
    facebook-squared
    cc-by
    cc-nc
    gplus
    dropbox
    evernote
    gplus-circled
    cc-nc-eu
    cc-nc-jp
    pinterest
    flattr
    skype
    pinterest-circled
    cc-sa
    cc-nd
    tumblr
    skype-circled
    renren
    tumblr-circled
    cc-pd
    cc-zero
    linkedin
    sina-weibo
    paypal
    linkedin-circled
    cc-share
    cc-remix
    dribbble
    picasa
    soundcloud
    dribbble-circled
    github
    github-circled
    stumbleupon
    mixi
    behance
    stumbleupon-circled
    flickr
    flickr-circled
    lastfm
    google-circles
    vkontakte
    lastfm-circled
    vimeo
    smashing
    sweden
    db-shape
    logo-db
  )

  index do
    selectable_column
    id_column
    column :about_category
    column :title
    column :position
    actions
  end

  form do |f|
    f.inputs do
      f.input :about_category
      f.input :title
      f.input :text
      f.input :icon, collection: icons
      f.input :image
      f.input :position
    end
    f.actions
  end
end

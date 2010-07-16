resque-tabber
=============

Now that it's super-simple to mount Sinatra apps inside our Rails apps, there's
a lot of people running their resque-web interface inside their app.  Cool stuff
indeed.  The trick is, once you're in resque-web, there's no way to get out.
It's a lot like the Hotel California.

Resque-tabber creates a easy way to add a tab to the resque-web interface that
links to whatever you want.  This allows you to link back to your app however
you like.

Usage:

    require 'resque-tabber'
    Resque::Tabber.add_tab('My New Tab', '/my/url')

That's it.

# Saturday March 21, 2020

### Adding MikeyScreen count-up timer.

Looks like "Today Extension" is what I want: _allow you to present
information in the Notification Center and Lock Screen_

Tutorialage: https://www.raywenderlich.com/697-today-extension-tutorial-getting-started

(ignoring all the bitcoin jazz)

sigh. #ilyswift
    The targets “Crypticker” and “CryptoCurrencyKit” contains source
    code developed with Swift 3.x. This version of Xcode does not
    support building or migrating Swift 3.x targets. Use Xcode 10.1 to 
    migrate the code to Swift 4.

- add a today extension target.
- run the extension - it's off to the left of the main page of the springboard
- edit MainInterface.storyboard
- now getting "cannot load".
- and nice!  the template has constraint conflicts out of the box.
- Trying on device - working there.  #ilyxc
  - and now getting Unable To Load.


Also https://www.nodesagency.com/challenges-when-making-today-widgets/

- add app group for app and extension

Using kCFPreferencesAnyUser with a container is only allowed for System Containers, detaching from cfprefsd

notes from Quinn - https://forums.developer.apple.com/message/253232#253232


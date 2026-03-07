const path = require('path');
require('icloud-windows-base').run({
  appName: 'iCloud Find My',
  protocol: 'icloud-findmy',
  icloudUrl: 'https://www.icloud.com/find',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});

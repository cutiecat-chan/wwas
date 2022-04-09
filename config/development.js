'use strict';

module.exports = {
	port: process.env.PORT || 3000,
	mongoUrl: 'mongodb+srv://dcat:dcat@dcat.672tp.mongodb.net/testauth?retryWrites=true&w=majority',
	insightApi: 'https://insight.wificoin.club/insight-api',
	wfcPayUrl: 'https://wfc.wificoin.club/#/wifiPortal/payment?authServer=',
	authDomain: 'http://172.96.252.145:8080',
	wfcAuthPath: '/wifidog/auth/wfc',
	wxAuthPath: '/wifidog/auth/weixin',
	device_dir: './public/device',
    client_dir: './public/client',
	session: {
		name: 'SID',
		secret: 'SID',
		cookie: {
			httpOnly: true,
			secure: false,
			maxAge: 300000,
		}
	}
}

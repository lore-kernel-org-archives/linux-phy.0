Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B285C3DA61
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jul 2024 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T518NITUy5XCQVsx/Ayy6/LgOZ27EdPnEYW+23RuOa0=; b=1W+uKBKsnl5mNy
	m08n0Bl1e+5+fvIcURl8mf95bCDWZcgxnD4+Ty7bYwirbjkN1K6RUZS3bB/TQybV27WQrDB1JoLO5
	tAV1GNBCDl7XuozFLbR3XzSCjwK6PDFk1UvKgKk2YSpdFbzlPJOBZ6tcvIfDCM0QNzl1eJ0ItWfdc
	1IVVoJlYiaUTv0jvykvD/Z2GQ7EGPFqT/Ryk5pny69a7ehar7AuKr/A9yVXSwx5rAmxDlTIMVjCJ3
	rDsnWuUtFpC3TlepLcBi9c/TQ6DI5v41+XkXgmQ4vCZIVOKlweCD2AisXpcNuEsVoBXqiAPkFshPA
	aeyE9MOplCiY3cyF3X/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYJq4-0000000A9X6-3zqP;
	Mon, 29 Jul 2024 06:26:32 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYJq2-0000000A9WG-2oaG;
	Mon, 29 Jul 2024 06:26:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uoAKw8MVkKJR3tWJONk+9pFVg/F4QVbQ0lwS5CL4I3iDqQWmWaCzZYdftN4mZDPi43ZW5j0A4/1O9W4GNFgBcetHqttQ9U3gX+IKfcyjjIaPPBhC+nzKu8OzHvXZ9yq1UhJaurd8YFw5DezUfIrnf+/TaMltlGmBVcAfWEbIuWfuBxk0fq5FUk/7dsatrqXb2TQf9A2W/+O3FUcca+gt6uR1t5dsSkBq6HRzHG3IHseiNnkTsTq5F6xxGy8yDGdrJ5qquKhVddpHBvFVW9tG2W/0kR3wglyNRKnet4pC28kyb40ev344IJ1Hmy8Vi34tjg7x8OxNuKcnatkMtnHW0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=impZmQ+ryOlZTvBycNt2IYo+hxzeR2z7otYweouOX30=;
 b=TB4oOC+B6JoERW0HP9zcLtgm0pOw5mCImRC9N7pR8O9O6Slq+rsScpQJJWNM6M+r7T5kuDs2kQ8slLFQ520oSUE5aFQvFb7j58pLp26dFPLItZomPINRpNpMO27IUNnQ8Fy1ztTOpesPdqc6Xw+Z99Nfgm4Iz0+mWQvjQaQDj1Y2GgElUf5J+L0Nf1bvZrPXpXV7PsMfLC9kkUMUgQMWhc8RTokT+eySI/eNDaEXI45yVq+l2ETHHhWtTB4LzR3Dy6PKlgxy/2egTYEVv6haaLQX/NtPYXtOQOO10t2UHSYk/PMJS8KLJ4KBDX2V4Uptv8Pf8LnMeM4lLJV5PQlqYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=impZmQ+ryOlZTvBycNt2IYo+hxzeR2z7otYweouOX30=;
 b=fUMqRYe54aoB+L/3jvPGZFttdZRpTr0DOxmrYSqxv8pChyEYcY3tcJg6zUM/bF+ANW3TSIOQm/tUmK7YwkoPUFoNGOD1EPk8GLGyS6yAo313DTVUKA5/SV/IXRlpguaiW70ypTizqfFUX6zvOj/c+m19SVHj4WXtL4Nnqy4oATpay4sIYppKmkNTvEmej/Z5fde0whKciEnwuecPQDHJqEjazNNvQd6u2ZHxuwqiM2DZqmugGiSHx2pqUuq6i5CF1ndqCD+JRqhDygfOGBFo4atstZdjfAhla2ioqY9rz/G3oELnrylQX38cP2IgeAlmL2RHcxfgEWNznQ+1hQ21Gg==
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by AM8PR04MB7203.eurprd04.prod.outlook.com (2603:10a6:20b:1d5::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Mon, 29 Jul
 2024 06:26:25 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::165a:30a2:5835:9630]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::165a:30a2:5835:9630%4]) with mapi id 15.20.7784.020; Mon, 29 Jul 2024
 06:26:24 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Xu Yang <xu.yang_2@nxp.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
	<kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"peter.chen@kernel.org" <peter.chen@kernel.org>, "herve.codina@bootlin.com"
	<herve.codina@bootlin.com>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, Jun Li <jun.li@nxp.com>
Subject: RE: [PATCH v2 3/6] dt-bindings: phy: mxs-usb-phy: add nxp,sim
 property
Thread-Topic: [PATCH v2 3/6] dt-bindings: phy: mxs-usb-phy: add nxp,sim
 property
Thread-Index: AQHa3097fNjJlnhH/0ODxZBb+E47dbIM53LAgABXgoCAAAInEA==
Date: Mon, 29 Jul 2024 06:26:24 +0000
Message-ID: <PAXPR04MB8459A07BDD8EA36E1E9C03E188B72@PAXPR04MB8459.eurprd04.prod.outlook.com>
References: <20240726113207.3393247-1-xu.yang_2@nxp.com>
 <20240726113207.3393247-3-xu.yang_2@nxp.com>
 <PAXPR04MB8459517F5F5BC4E1C7A5E67888B72@PAXPR04MB8459.eurprd04.prod.outlook.com>
 <b1a4b23b-1c0a-49cb-9601-f4a7609cc930@kernel.org>
In-Reply-To: <b1a4b23b-1c0a-49cb-9601-f4a7609cc930@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB8459:EE_|AM8PR04MB7203:EE_
x-ms-office365-filtering-correlation-id: bacd507f-d651-4219-ea60-08dcaf975efd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|7416014|366016|38070700018|921020;
x-microsoft-antispam-message-info: =?utf-8?B?QW9TSHJoSzVoRVNOUEg5ZUlTSk1KVkdwZGJDcUg1dmlqOXEvMmdUZXhsaDA1?=
 =?utf-8?B?anZuVGtqdXM5NFZ2RCt2aEdib0NLVk9WeGZMOEtVSlpJRzlQcnkxb2VEemtP?=
 =?utf-8?B?Wk9qUDRoN2o5Zld5bzZFL05zMUhUcy9IS2xMZDhjOThWdzlKVVBPUUVlc0hK?=
 =?utf-8?B?ek9oRVZlY09sTmRHcTZwZlhtTGl3KytqR2x1N2RYa3gvU25MS3ZRN09STWpy?=
 =?utf-8?B?eFYxMENSZDJ1WUdEdXNieVZ1N0FuUjEvK200bHlENmJhd244aEFYeC9ZUTVm?=
 =?utf-8?B?dEdLWG9uRll5UWwxbGFpeTRNVDNxYm9BOGN1WVhOU2F4K001N2ZZL3U5b3pM?=
 =?utf-8?B?TmJNekp5STRZc1NNTjNPUjBBQWRBV1FLaVdjWEhxazkzTkpMbXRlU3B2MGdM?=
 =?utf-8?B?cUZHQmNyVDBXU1JOa0VBNnA1Nm1QWU5KQjN1TUkwQWdnUklKVzU2MEZpRlBj?=
 =?utf-8?B?bGZZOUs1MFRTRmVFUGdwSW4xcGQ4aVcwbkJxMi9oUzNaUmRXek1XRXZpSlNU?=
 =?utf-8?B?K3BZVkttbDUxcWg4cWhNK2RBbDJNdDQzajVNT0g1eEgrNDVpM2FOb0ljbU1L?=
 =?utf-8?B?RmFUUEVTYXh0VlFabUNDY1BycGk4b2lpUTJGMkVaK2xjWkZLZ2l6OFQ0bDFu?=
 =?utf-8?B?NmpZamliN2ZkYTV4emgvL29XNHpNOCtlck1KY294TmtUcENvcGgwOXJnKzgx?=
 =?utf-8?B?dUZKRzh1SCtEUFJINENOMjVCRmdDald0U1Fxdlk4ZDhJK25RampUdkRqTW1z?=
 =?utf-8?B?WHM5VVd6S2luNnpTMUg1SFhmTmlseUV0U3BGVDB2QzUxV3hxNzBxTmJ0UmFV?=
 =?utf-8?B?MkhEMXUyWWtQaXpnTGlYL1poVmtDYkVJVEZIWXI2em04MUFtcW82MUl0Yksx?=
 =?utf-8?B?YjRjWGZXRlFWZmI0NytNcGVDMDIzRjlwdUtHKzl0akJBc1V6bmxxMGVIbUtl?=
 =?utf-8?B?cEhvdzRUeDBybE1uTi92N29TWXdQT3Z6OGcrK2xPcTc3TERRWEpIbWZFSFFm?=
 =?utf-8?B?ZXhRdDZVY0p6dWtzTHlqVTJQT0xSdHYrNVpPSHJ5WFl1M3U3WHEwM2lCSlBE?=
 =?utf-8?B?YlhsMnRSQWlYTGpzSXdUMVVDdnI1RDRPSHIwV2VXckhLWXRoZXpCMTJaWVhS?=
 =?utf-8?B?Y3dSVU44UXU3WU9HaTVsU2l2MG9KVUhOT2F2VXNEQjZKcGhzeElDL0I3Z0Nu?=
 =?utf-8?B?Qi9HRjFUS3NmRkJXTzZPYTRjTjVWeDMwaEdoNk5TUzd1Mk1KclpXaTNPOGJ1?=
 =?utf-8?B?OHBpR2NmVnZlN0xEaXpOa0ZDVkhwZVR0L3hXbWk0Y21rTEF0WW9BMWQ4cThC?=
 =?utf-8?B?MGlCd0pHZDBXRGVBZGdxcDZDc0E3aVR3U1A1RGFHQ2FzY3BVMHAzdUhEQk0y?=
 =?utf-8?B?L1FEaGVleG91R1VPUFFnblBCa2FRMDVhSENwcUVOcmZCdFpzWDZiaUhzSkJX?=
 =?utf-8?B?N21xKzBqSnZpYVlmM21yTXBpWEJLa01FNllzK0g3RkhLcXo5c3NBVnk2ZkVJ?=
 =?utf-8?B?bUNacU8yN1BCcnRjOU9BOEFwTlJla0U0SVFYdFJXQkE3SHV2YjZab25GWE1v?=
 =?utf-8?B?Y2JhMDFyWG1mOW9GSWM5RC8yVWZ2eUF3NEV5OVRrUGswMVRTRUtLZ2JISFJH?=
 =?utf-8?B?alE3b01WUktHellrN3JxdDB2b1ZPK0FxMDZkWHhScWtLSEVENGpzRjNCazVT?=
 =?utf-8?B?VGI1QUE3REYvdGRMTWhSUlhUYUtDQ24vVHdMdXBpOWdvcFVMMThNa0hHOFlE?=
 =?utf-8?B?cmFEWTVpM01LdndhKzdtaEhzMkJYSlNacGU4VUFteDl0TTJmZWJrSGVjaHY2?=
 =?utf-8?B?YVErelFMVzlTckg1bkNTUTUxbkl5RGJDRVZmSTRGdnRmWUJqS2g4WjZPdGlw?=
 =?utf-8?B?SytXOEZ5VTZXbi94a0hpaWlSK2JoRlVLUHBHMlJHdXh4NjJFcEIrNTZiendo?=
 =?utf-8?Q?6fU3KA5yjdw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(7416014)(366016)(38070700018)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SzVKWXhIWjNyM3NtVkJCM000VTZvWng5anpNdENQQVZwbUJMMk9IT3JCcFJB?=
 =?utf-8?B?cVBpdFRIMmNrQU9yL0Jmc05La1RGZTJ5YU16V2dsMC9WeFFRYjZlSkRyMit3?=
 =?utf-8?B?QVF5ME9VclJ4M2V1bDJNZmlyZWp6SHpFY1gwYkpHMjU1QUxNVEZkTHdIaFZa?=
 =?utf-8?B?ZmM0UGNiWkZJaDhRYTE2elNQdEkrajdIbkpTMkg1cThBOGhZZEpKUmFoRVdQ?=
 =?utf-8?B?RlhiM1R6a3M4djJ0eWUrOW5DM3VobDRHRGZTK3A0ZHBCbmE1QXRQRWlrQm9I?=
 =?utf-8?B?dyt2QUVFSGVIbkpEVi9mVCtJc2VtaXNhK3BRYVFXM3B3VU5sNXRhYnVhVjRK?=
 =?utf-8?B?TnZDM3E5Z3FncGhvaTVDV01JcnkvTzRBWlNnaWwrblFaQ1J6VjJvaFhzcTVB?=
 =?utf-8?B?NzhFcTNxMUpKMVNYMDYxVUx6L1UwTnpDZG5hdDRRdzlpcmxqTEpDVXI3Q3Y4?=
 =?utf-8?B?OVdFeTNsazIwdkxCb01VdllZOWNSNXRsMmRNUFl3cG1IcUY0dlZMQmlGYzZK?=
 =?utf-8?B?RVV6WlZDMzFvTzNOSWplUnVkYUFSY2x2aktFcitNQWVkTXFENWJQWXAzVjJz?=
 =?utf-8?B?MzBTMWloTUYxS2Zkcm1mT1I0QWRBY2dRczlOYWR3TmRoMEthZEExN3ZSdDBJ?=
 =?utf-8?B?eVd5MUpHb0NTTjZaSmkxdnd2b1k5a1E2YnIva1pmcVhVbjR6WmU4aEFmL0ha?=
 =?utf-8?B?R3RFV1dmNmxrUXRZWXdxOTlMZWFQTjhBUjY1dE50M2R3NUczQU13OC9wUGZs?=
 =?utf-8?B?Q2s1UjIxQUo4dHFXT2JRLzJMSE5EaHJBU2paWnlnUCtxVVp0aWVvMVB6aS9F?=
 =?utf-8?B?aUVObGdSYkhJYlRrRkpGWW02RmFoSEFPaHBmTDBsMlpYempvR0FCbGUwb1gw?=
 =?utf-8?B?dGRxeFVMeFgvYVNSTFBPTzl6OGdENTJ5dkZQTnZ0SWhXL1dzYlo3NmdIV2Mr?=
 =?utf-8?B?c3doajhQa3YzV0RVeG5vd0RsUWdtTTJIZFFHSmpySGVGSTR3cGFWb0s2RjJZ?=
 =?utf-8?B?RzhzUmJNdm11VWgyaHEvMW5nM0IyMEloZjZGZDJwNlorWnU5Q0RXeXJGeno0?=
 =?utf-8?B?VTZ2S2JweFpaMzhlc2dNbmFLWWt4WWNNRjd6TUdJcXowUlI3Uy83WlhiZHdu?=
 =?utf-8?B?Z01yNitJZnVIQ2JKeFc4SmFnMVd2TVIwc1Z1U2N6Wlg0Y0pzNEdLdHNBSjZy?=
 =?utf-8?B?c3padkp2bmNvcTh3bjZMUElJOWtSZzN5YUg3K3dnRFNYRG9GVkkxMU92Wkhy?=
 =?utf-8?B?OUNxWWVDYmd4WkM3VWo4OTVkZEFQSGQ4QllNcm8xdWcxT0poZVNhN25CVm90?=
 =?utf-8?B?ZnhXQUZzSHhpcFdsWDRTeHE4b0xWNDBiQnFrNnZiWStvbEFOdU94SllLdEJt?=
 =?utf-8?B?QU9MOWVwalZQTEUveEwvSkVzbVdxYnl3NUt5NHYrUEROakUvVUVXcjR4K2dC?=
 =?utf-8?B?RjlrNjFNZU10ZTRNRHhydlRncDYyY3R2Mk9uR0tTY3FrMUo2VVRrN0FRa0F5?=
 =?utf-8?B?UlFFcFZ4SjYyRjBQRk1NY3o1Q0V4bFB3aXlERFFZUHlmeW9FdFlKenNmOGNw?=
 =?utf-8?B?eVJFUkhrUzRSdGdlNkQ0OHJqdStuYnBGMEVXbjVIYWhsVTdLSTE1MnRGMGF6?=
 =?utf-8?B?RE5YRTlFcithbU8vQ1hiRzlmTm01ODBqbXlST3MvOTdDeXE1OEh0TzlXNVZm?=
 =?utf-8?B?TktOL0MycXpDMG81YWhtaUc0K3A0ci81K24xMnF2Ujh6K2JtTTQ3SmdNVnQv?=
 =?utf-8?B?WnlTeGtFdnN3ZElUWE43NVVaektVbGVzR3BMRDF2MlhyTWs1aXMrZ1VEZ0J5?=
 =?utf-8?B?dFFnUWdLblVNb1BhRzdxWHZlVTF2SzNMb2x5b2hSUzFCeEVaL0N4YkpCVmRa?=
 =?utf-8?B?TGZ3RVlURDNTQ05XSkdtQ2tLSVc3RVdIeUptMG9RMXMrdG1kdjVCTWl4K0d2?=
 =?utf-8?B?RVpoU0g1ZWtnN2l3NFFZVncrQ3I2eFYrQTdSS2FJclN1ZzZBZFN4YitTcWRI?=
 =?utf-8?B?ZlA1dENxajBqS1RwSTFUWG9sY2k0akNqRXRVMzBaSFJpRjhiZFdpWWplWjhX?=
 =?utf-8?B?UG83N05Ra0Z5blljalpxbDNqNUhwUlhwb2toS2lLVWxucWo5ay9SZ2hENUhG?=
 =?utf-8?Q?f9Kg=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bacd507f-d651-4219-ea60-08dcaf975efd
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2024 06:26:24.8207
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xxo2h1X8weY1TSE3azDQcdhYCU7tpHVb9ID6wVGmD1aUm0Icjgmlcdrz8UFwzWCvhGY6NkhTF4ApL0r2DLOsxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7203
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240728_232630_759910_D651175A 
X-CRM114-Status: GOOD (  19.84  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

> Subject: Re: [PATCH v2 3/6] dt-bindings: phy: mxs-usb-phy: add
> nxp,sim property
> 
> On 29/07/2024 03:03, Peng Fan wrote:
> >> Subject: [PATCH v2 3/6] dt-bindings: phy: mxs-usb-phy: add nxp,sim
> >> property
> >>
> >> i.MX7ULP need properly set System Integration Module(SIM)
> module to
> >> make usb wakeup work well. This will add a "nxp,sim" property.
> >>
> >> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> >>
> >> ---
> >> Changes in v2:
> >>  - add else branch suggested by Rob
> >> ---
> >>  .../devicetree/bindings/phy/fsl,mxs-usbphy.yaml | 17
> >> +++++++++++++++++
> >>  1 file changed, 17 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-
> >> usbphy.yaml b/Documentation/devicetree/bindings/phy/fsl,mxs-
> >> usbphy.yaml
> >> index f4b1ca2fb562..ce665a2779b7 100644
> >> --- a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> >> +++ b/Documentation/devicetree/bindings/phy/fsl,mxs-
> usbphy.yaml
> >> @@ -87,6 +87,12 @@ properties:
> >>      maximum: 119
> >>      default: 100
> >>
> >> +  nxp,sim:
> >
> > "nxp,imx7ulp-sim" should be better. SIM is specific to i.MX7ULP as of
> now.
> 
> Can you guarantee that? IOW, if you ever, ever come with another
> "sim"
> property for another SoC NXP agrees that it will be rejected?

I could not judge here. I was thinking, vendor,soc-ip is the preferred
property.
> 
> Properties should be defined once and naming such per-soc kind of
> contradicts it.

It is fine to keep nxp,sim as what the patch did. 

Regards,
Peng.

> 
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

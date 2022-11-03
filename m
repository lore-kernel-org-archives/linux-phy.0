Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EB23C43217
	for <linux-phy@archiver.kernel.org>; Thu,  3 Nov 2022 10:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2n93m+RexDdlGQHNBDnrF4hFcr3lwFE3mCeaf5JIGM=; b=S81CroridgQisG
	0OzN/H1npCPu9Yac7e0xhTy+cWw1McdLhDEwmi9kaV4CYJ5E9I0pOLW9eK30oiJb7QXuxhemUnp+c
	Qw3adT9W2oB9lqICPHcaQfdiUxVnUaybuM6OB5P0eRaDKsiHyfi32Je25ymS/8SNdVwpynEWVqY9L
	eqsm3NOzaD7bRtmdm21orU+5Xr8QN67nw37UTahXgiYuyqlmDTh83CkQpcIATFa7FcE98bQD2jIK8
	H4n8K85UYkN17lE7uVbgD25mJ6XJMfYU7IXWsOk3Jf2Kg/BY0uzQUloVh5XurCqkig62kWsjopQmy
	8aecfldxu5+gh2JFKm5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqXkm-00H8WL-Hr
	for linux-phy@archiver.kernel.org; Thu, 03 Nov 2022 10:47:20 +0000
Received: from mail-bn8nam11on2040.outbound.protection.outlook.com ([40.107.236.40] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqXki-00H8Uo-JM
	for linux-phy@lists.infradead.org; Thu, 03 Nov 2022 10:47:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=epTj5WrWcgmntWeTjsqB9WqKkwwIxeGRe+rb+nJEAtZQ3qI4smRur67tr0+Rkz1tt6bf+W7rEBvtZoghKdM0POjWUL0imU+ZTcDGUMQG/FQDSM91imX6dGjT5izuujxxtSBKdcACh58L+WmA7zJuQqqfJwhDk+1Pbg5CVbT45HVW1Qu6ItRxl2Oy9vDsEqwkoDEvXhsXflFcqanjz9ZbMx4eSoQuvGJuc7uZnms1dsuTkLcA0BJYqNFWU4lLJMbvpbpIba5amyPnS0Wt42vd68dDIo0q2J+PhJAm3rgejwio6aLV5n3j6uFuHIshm/1D4k9WEqRcouFULKcUb6lKUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rC3h5WIqb8cL09CB65hE2jL+WCOhrHA4o3HzdQtO/48=;
 b=FlwwVntM5vAk7O3wYV9NHKb7GEmiqkvL3ZLfBfz8Pz7Zwn9Do3XOG13ohq1nH9FBfv+/MOWKSO3ZqSK2mvnA+4tBs9gh8ODsYYIpkCbhxt+SpYFaPdN7MdsaBsmigYWK63nOq5cme+1Vn08QODmF1BsyuXCjj2YEhjPGwMWKRgkGBdUd7NexIAxMiyNCCjNEZQaPE6nsPAP0IbjsOPS9LUUNFFxlUNVT8+yoVohJXnJU9qY2iz2iHjtVcqsr9QY+llYU19RjihbtOgCogWpITULHgOll0y8wxzZTCus7ufFHlXSHj0rdFouRHMY5M+Ym/3PRnDm8OJEvK81ykSgnSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rC3h5WIqb8cL09CB65hE2jL+WCOhrHA4o3HzdQtO/48=;
 b=sJ/NLjBfeISvLr8jRKQCbRVXaUjzw+jNtbEGKh2HSfLrGRyUpICB3Nsd6vkOm+YuURg4PDPLmpjrXZ+Sa67NZDVMd/nOqEy3NtZNj5R7MdvHr2BjHPbAAtVG20gEC2BosyeddvmjekBMwBseJD7KXXtThAvc2yecqX3Baxr/sxIfd0m45vv678Wb7tkqFSDfxvREglPsxq7sgun9cDpggfA48CyVcOhKFuVUIbhCMHVV3ORQDy3/kE9ByBOmii1vMIAXdiabLZx+Re80Ir+dfTmA+YtAnqHuRmaHHha0O6Fs4YT7pDhxjPkffOXlU5mWjQXCUWULw3PhWHbyHBj/1g==
Received: from PH0PR12MB5500.namprd12.prod.outlook.com (2603:10b6:510:ef::8)
 by CY5PR12MB6480.namprd12.prod.outlook.com (2603:10b6:930:33::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 10:47:11 +0000
Received: from PH0PR12MB5500.namprd12.prod.outlook.com
 ([fe80::ac8c:eada:77a0:e2f0]) by PH0PR12MB5500.namprd12.prod.outlook.com
 ([fe80::ac8c:eada:77a0:e2f0%2]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 10:47:11 +0000
From: Wayne Chang <waynec@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter
	<jonathanh@nvidia.com>
CC: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>, Thierry Reding <treding@nvidia.com>,
	"heikki.krogerus@linux.intel.com" <heikki.krogerus@linux.intel.com>, Ajay
 Gupta <ajayg@nvidia.com>, "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"balbi@kernel.org" <balbi@kernel.org>, "mathias.nyman@intel.com"
	<mathias.nyman@intel.com>, Jui Chang Kuo <jckuo@nvidia.com>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Sing-Han Chen
	<singhanc@nvidia.com>, "linux-i2c@vger.kernel.org"
	<linux-i2c@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-tegra@vger.kernel.org"
	<linux-tegra@vger.kernel.org>
Subject: Re: [PATCH 03/11] dt-bindings: usb: Add binding for Cypress cypd4226
 I2C driver
Thread-Topic: [PATCH 03/11] dt-bindings: usb: Add binding for Cypress cypd4226
 I2C driver
Thread-Index: AQHY53wc4Wuwt5Vi/E64/Mw7R9FUF64gRg6AgAN9YYCAAAMcAIAAF7gAgAk2BAA=
Date: Thu, 3 Nov 2022 10:47:11 +0000
Message-ID: <3edaa3c8-f0fb-3b87-4f33-324d5b964aea@nvidia.com>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-4-waynec@nvidia.com>
 <f8eeeebc-e635-9c97-b97b-46df38f06002@nvidia.com> <Y1vLoT+/dgOgrxjD@orome>
 <7a1c4943-4ae2-cde4-221b-fa972c2baab2@nvidia.com> <Y1viIsL+Nxthc97j@orome>
In-Reply-To: <Y1viIsL+Nxthc97j@orome>
Accept-Language: en-US, zh-TW
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB5500:EE_|CY5PR12MB6480:EE_
x-ms-office365-filtering-correlation-id: 8fada1ae-60ac-457b-7412-08dabd88c334
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 	=?utf-8?B?L0RQNUZiNXovcDU5akF4dmtIclNQRS92WjVTZlRMaG41aVRKYWsrZTlTNXd4?=
 =?utf-8?B?OEZLQisxbU52N2oxeXhIYWJFQk9sbkh5eENYZ1dzaUpQVGFuNGFmQjZBQWxr?=
 =?utf-8?B?eUZtUjVaNHlDVDZ6K2MrSmN5Wmg2MzlIZnJCaEZsMkhEZzIvK1RBYmJNUE11?=
 =?utf-8?B?aFVvNEdFY0IzNDNSV3o0YWRNK0VOaFFLVDNmb2lqRFJ4VlBJSWtZK3BHVmIr?=
 =?utf-8?B?N0RmQUdMd2xDME0wSE1lVW1GNDdDcklwVUk1aHdsZ2VaL3dXUE9uWktma1Vw?=
 =?utf-8?B?akVGdWVZTTNYMSt3cmlGQndqaS91dVJ6Q21wd0E1M05hdlZjMndZSXg4REtQ?=
 =?utf-8?B?MFhjQkowUW5LOXA3c3FYbnNLZExoYjFtanJ0RlFaTmlRU1VSazFaeld2YU11?=
 =?utf-8?B?VjNWR3d3cFdCY05GM3N4ZUxEeXFSOW1DUzNsUmtGRWkwOGZscFNSRmMzU0hF?=
 =?utf-8?B?QWt0aFRqWGNBem9TMVloVGFTNkpQcy9hcDN2YzFyV3QxNWorSnBXWkV2OFhE?=
 =?utf-8?B?QjhqbmE3RUltUnk2RXppbzd4RnpLeHdxbm5sSWpRSkhqS2tKWHhNNFh3U21r?=
 =?utf-8?B?Z0x0T2ZKdlZRZjNsMEhML01jVWlXbDlueStaZE1zSFdVeWRyODBObGJxL1BH?=
 =?utf-8?B?VjFSYWN6ODdPRytGc3dsVUg0SzJPQVJFeEhZY0NsclNSSXRnbDRJb0hZWk5q?=
 =?utf-8?B?ZVBpMU40SU9sdHdnNTdaaWFUdGJJUUlkNGl6WlB4SWFsYXI2MjVIUjJiRm9i?=
 =?utf-8?B?dmdtR05VbFhDRHJaVGVlYS9QTzh5d01oa2Z4VDNZaGN2aUdBL1Q0UGNacENB?=
 =?utf-8?B?OERGNk4xNXg3T1lkb2RvN1A4MnpuOHNsVWN1SHp3Mm1QYWYwczdDdlpJVXlr?=
 =?utf-8?B?dUdwc0FKQXRlV1dIa1B3eEUxanJqcDZVT0lMdnRJbGlqWGJ3cldBeGx3aU1O?=
 =?utf-8?B?MTI2WW93WFplVjhZelg4OTJKbWYzRUxyNDhnanZzTEpIM3k2bnd3SDFSeDZj?=
 =?utf-8?B?VU1wRGNaY2pBMVhZSUgrS0tCbEh0VVVtaE9QaEh3QXhtUVA5M1l3dHR2NENo?=
 =?utf-8?B?Q3lCRTdPOExuY2ZBWW9Pc2lsenJTdlJGYkFLL0VsUE5adEpXNCtQQmVEb0lp?=
 =?utf-8?B?YWEweVdqYkVZTmVja3J3TnloK3VKelBKTFZTR0ZTc01NSGpHRWdoSUV2d05m?=
 =?utf-8?B?aG82M0t4NmdvcTY2N0Y3RFlhMEQvdmc4KzNXbHdmZkwxNTBJKzhZYTEvVkcv?=
 =?utf-8?B?MENVWUhKYldGZ215ZWxCdW9DR0hzRVI1OUNXcVluQStVREJhdz09?=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB5500.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(39860400002)(366004)(376002)(346002)(136003)(451199015)(31686004)(36756003)(66899015)(86362001)(31696002)(2906002)(38100700002)(122000001)(83380400001)(186003)(38070700005)(8676002)(6512007)(4326008)(26005)(53546011)(76116006)(91956017)(478600001)(6506007)(2616005)(6636002)(54906003)(110136005)(66476007)(66556008)(64756008)(66446008)(66946007)(71200400001)(316002)(8936002)(41300700001)(7416002)(5660300002)(966005)(6486002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?aGVsclBEZWUrd3FFZDkvVTljOEMyQTRWUjFQNDhHOWg0c3hIRm1YOFpVa1hF?=
 =?utf-8?B?ZGV1RjhVdEovOTh3Y0tOcXcyKzl3bWlxL0I2eGpaZ2VPSmVBdWNGbXVrSWxh?=
 =?utf-8?B?bDJqaDN1bUplWktiZjZ4bU90MlRKdk9XdVpndGVjbGFEd0ZNaG9hTnpjUVhI?=
 =?utf-8?B?VU90QjM2eUdRaUthSTJaeFFYWWlDNTlpYldIVUlnc0d4UDQ2NkNFaDNzL2Rn?=
 =?utf-8?B?WUxBMDN0Q2NNVzczV3BHcmNKNFhLVjlEdmxVeWRPQUZMQ3pJUklsa2xBbG52?=
 =?utf-8?B?MGZkN29HSWthYXQvRHh6OEgreGNDd3k3ZFRlRUs4NEx3S1dhRXpyd2hld0Fx?=
 =?utf-8?B?djJTbUdCQXBLUFJqTVBDM0JuL1lPRHU4RTkzaWJzT2pMaFZoU090SUFDd2pv?=
 =?utf-8?B?VWROM0RWY1VQc25XU1RWSld5d1FSR09adko5ZUdCRTMreURPVlAwM2RaYWFB?=
 =?utf-8?B?Q0FFUXNSQThrWFVTK3MrRHVkTUJ4SnJISHp4TWhNaExxY2wzbUR4TDBpeDJ1?=
 =?utf-8?B?MldhSWFMMG5KNVRUdzJGejFUVXgvMFBrcEV5TkdvMXZKMUpwR0p5Ti9wVnF4?=
 =?utf-8?B?WGtGd1hvMm4vVVZ3VldOdm9VZUFHRktrQkpycDFXYWZVV0ZIRzlwTEZBa2sz?=
 =?utf-8?B?Q3BNUGVzQXFVZVYzemZ4RWNwVWRRTGlNajB6aEV5Z2QvWVFGSThYbGwwRmU5?=
 =?utf-8?B?RURwRGtFYlQyY3VVTlRPMzFZSm5WZlZFRU53cTNVZVlUNGtWeFNoMCt5Mkcx?=
 =?utf-8?B?NTJjc0xkejEyMVlRM2VlNytZbTlCcXZEbkFuUGxmeWppZVVOREUzaVRtL0tR?=
 =?utf-8?B?aHVaZm5nTElETnJVVVF2YU05SmRkTy95SEMwYk5wZ1Z6V3FlYTNkNzRUckkx?=
 =?utf-8?B?RXJVV3VyOVZiTmJaZWR3bE53S0Yzdm9Jdkc0TDZ3Nzd3cDZEQXVrUjM4RVNI?=
 =?utf-8?B?T0FRMTV0V0krSkpnaWR6ZEl4cmhvU3VEYmhyMktFcWIxZGUwbUd3S3ZYcVY3?=
 =?utf-8?B?QTNuSXpiK2pzMTV0Z0tPZjRVMDRVNW1KaWNxMFZYUWlFb0RhRVVKNmlucDds?=
 =?utf-8?B?MHdxT1RyRXNFRWl2SFRBTVFjbkhFRThWMm40V21lOTljUE9UWGFkdEF5YnJn?=
 =?utf-8?B?c2c2ekVhNms0TlVFTHBGNDhHTkFXajhEMlc3THZmeDZIYW1CaERnUSthd083?=
 =?utf-8?B?M0lrUjRGY2JVcFRJSjYzWGxnMjdhWGQrclpJZXd1ZWN5UDRmbnJwUXJORUhh?=
 =?utf-8?B?S1BMZS9HVDV4dmtQTnJ2N1ZsUGpla1RISEx4TVRoTlozR0gxVEJGNnNmSDNz?=
 =?utf-8?B?Y2VIeGJseXdKNXpIbW91cDlYL296S0dDY2pETDlkQnBZckQ3dkVHWnhCRUpm?=
 =?utf-8?B?a3V6MFBsai9EanVOUlFWbzBlUHl0Y1VIN2hkdmdqbjlEcFhxY0tpOEkvRDRK?=
 =?utf-8?B?dXhLYU9jSUxpbmlzOGVIYjJ2OFE1c2I4UXMrRDg4Qm9Jc0M4SFQ2OVVOMlJ1?=
 =?utf-8?B?R2laSmt5SHdzZWUwNENDeVFyWTNQTGV6R0JOcGszMVJWVTM0dFhzNFdmbE1p?=
 =?utf-8?B?Z2xqRjI2dE5YeWdjSG9PNkJJK3hVK3pNaU9WVnFsb3MybzNtWFRCRUtiK2Zj?=
 =?utf-8?B?VTZrT3dPNDlqTXRMZi9YZFh2aGpJemxOUHIrY2padzNsVTFQYy9lOEdQbWhT?=
 =?utf-8?B?eG5sVDFZMVdsTWxleXVWa2ZZZk9ZUm93aTR0R21DejgxZ0NERi9EK2pqNi9W?=
 =?utf-8?B?OStsSWUzTDlCMDJPVXVXRUpHS1MvU0dDaWNBRVRtcDA1bVZKSzRLU3ZCSWNY?=
 =?utf-8?B?bjlnSHI2TStMR0ZKaHRNcmhnWUFLWEFuMzNMSlVjUkhtN0JlWitBUWVpZmVB?=
 =?utf-8?B?TzVlbnZ3dUZBc21SbkdJOVJYVGwvSXBRY1BBc1gwMHhJUTg0NlJ4M3UzOGxB?=
 =?utf-8?B?OUVKZncyaWJxRUMwdlBmL05VOHM3WndMbkVtSUZIK2hLSzZSdFl1cDFWTVR1?=
 =?utf-8?B?anVTQzd5UTJ1MUxvS09oSTA2UVdPclM4OTczdUNCVEltWURlS0FjU0FwdndT?=
 =?utf-8?B?d2dwU3hZNkZKa0xLUTJTSUVUcEsyd3lJcmlkdmVJblhKVHhDeGRBY042QkFJ?=
 =?utf-8?Q?KOfyuYjwuu+O66HcZwX4f6LqW?=
Content-ID: <D44EC524B60EF14CAF4C2A7BB301572B@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB5500.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fada1ae-60ac-457b-7412-08dabd88c334
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2022 10:47:11.3761
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Of0RhBCj9Aal31YtzJZBt44F8nW5/AO0f2hxxwAaXm1KMxg7/BMnMBtt54WtvY1Ri8jVz7EDYz0IMpqvu1QqaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6480
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_034716_735121_7A810801 
X-CRM114-Status: GOOD (  22.36  )
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



On 10/28/22 22:07, Thierry Reding wrote:
> On Fri, Oct 28, 2022 at 01:42:36PM +0100, Jon Hunter wrote:
>> On 28/10/2022 13:31, Thierry Reding wrote:
>>> On Wed, Oct 26, 2022 at 08:13:57AM +0100, Jon Hunter wrote:
>>>> On 24/10/2022 08:41, Wayne Chang wrote:
>>>>> add device-tree binding documentation for Cypress cypd4226 type-C
>>>>> controller's I2C interface. It is a standard i2c slave with GPIO
>>>>> input as IRQ interface.
>>>>>
>>>>> Signed-off-by: Wayne Chang<waynec@nvidia.com>
>>>>> ---
>>>>>     .../bindings/usb/cypress,cypd4226.yaml        | 86 +++++++++++++++++++
>>>>>     1 file changed, 86 insertions(+)
>>>>>     create mode 100644 Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml b/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
>>>>> new file mode 100644
>>>>> index 000000000000..5ac28ab4e7a1
>>>>> --- /dev/null
>>>>> +++ b/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
>>>>> @@ -0,0 +1,86 @@
>>>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>>>> +%YAML 1.2
>>>>> +---
>>>>> +$id:http://devicetree.org/schemas/usb/cypress,cypd4226.yaml#
>>>>> +$schema:http://devicetree.org/meta-schemas/core.yaml#
>>>>> +
>>>>> +title: Cypress cypd4226 UCSI I2C Type-C Controller
>>>>> +
>>>>> +maintainers:
>>>>> +  - Wayne Chang<waynec@nvidia.com>
>>>>> +
>>>>> +description: |
>>>>> +  The Cypress cypd4226 UCSI I2C type-C controller is a I2C interface type-C
>>>>> +  controller.
>>>>> +
>>>>> +properties:
>>>>> +  compatible:
>>>>> +    const: cypress,cypd4226
>>>>> +
>>>>> +  '#address-cells':
>>>>> +    const: 1
>>>>> +
>>>>> +  '#size-cells':
>>>>> +    const: 0
>>>>> +
>>>>> +  reg:
>>>>> +    const: 0x08
>>>>> +
>>>>> +  interrupts:
>>>>> +    maxItems: 1
>>>>> +
>>>>> +  cypress,firmware-build:
>>>>> +    enum:
>>>>> +      - nv
>>>>> +      - gn
>>>>> +    description: |
>>>>> +      the name of the CCGx firmware built for product series.
>>>>> +      should be set one of following:
>>>>> +      - "nv" for the RTX product series
>>>> Please add 'NVIDIA' so that it is 'for the NVIDIA RTX product series'
>>>>
>>>>> +      - "gn" for the Jetson product series
>>>> Same here please add 'NVIDIA' so that it is 'for the NVIDIA Jetson product
>>>> series'.
>>>>
>>>> Rob, any concerns about this property in general? Unfortunately, ACPI choose
>>>> a 16-bit type for this and used 'nv' for the RTX product. I don't find 'gn'
>>>> for Jetson very descriptive but we need a way to differentiate from RTX.
>>>>
>>>> This is needed in the Cypress CCGX driver for the following ...
>>>>
>>>> https://lore.kernel.org/lkml/20220928150840.3804313-1-waynec@nvidia.com/
>>>>
>>>> Ideally, this should have been included in this series but was sent before.
>>>> We can always re-work/update the above patch even though it has been queued
>>>> up now.
>>> The driver seems to use this 16-bit value only to compare with a
>>> corresponding field in the firmware headers. How exactly we obtain this
>>> value is therefore not important. However, since this 16-bit value is
>>> embedded in firmware images, we also cannot substitute them with
>>> something more sensible.
>> I am actually wondering if this is actually embedded in any images because I
>> see it populated by the i2c-nvidia-gpu.c driver [0]. So I am wondering if we
>> can use PROPERTY_ENTRY_STRING() for this driver instead and have a more
>> descriptive name such as 'nvidia,rtx'?
> What I mean by "embedded in firmware images" is that the value read from
> the property is compared to values read from a firmware blob (either one
> read back from the chip or one loaded using request_firmware()). See for
> example ccg_check_vendor_version() and ccg_check_fw_version().
> 
> So the way that this 16-bit number is used is to define what type of
> vendor firmware we support. So this is also used to avoid trying to load
> a Tegra firmware on a GPU and vice versa.
> 
> So yes, we could potentially still make the i2c-nvidia-gpu.c driver add
> a "nvidia,rtx" string to make it more descriptive like DT, but then we'd
> still need to somehow resolve that to the "nv" string for the assignment
> to uc->fw_build.
> 
> Not sure about how that would impact the AMD bits. Another of those CCGX
> UCSI devices is registered by the i2c-designware-pcidrv.c driver, but it
> doesn't pass a software node. From what I can tell that simply means all
> of those checks will work with fw_build == 0x00. Primarily I think that
> will cause flashing of the firmware not to be supported.
> 
> So yeah, having that string be something else (i.e. more descriptive)
> and then match on that instead would definitely work. After looking at
> this some more, using existing driver-matching may not work after all
> because while there's ACPI matching and with this series DT matching,
> the various GPU I2C instantiations are purely done in software, so they
> have neither and therefore would need a secondary lookup mechanism. We
> may be stuck with that ccgx,firmware-build property, but as you said it
> should be possible to at least sanitize it.
> 

OK. Thanks for the review. I'll make the change to extend the property 
into string in the next patch series.

thanks,
Wayne.


> Thierry
> 
>> Jon
>>
>> [0]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/i2c/busses/i2c-nvidia-gpu.c#n261
>> -- 
>> nvpublic
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

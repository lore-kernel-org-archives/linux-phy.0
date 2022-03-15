Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4907AC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Mar 2022 00:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycpMeZGq7ezOIMQ5PZLHV/v+dBnneLhkrlXRnMQczuE=; b=q2S6zQ9NeKLFql
	CDoS4jE8HiAphlgDcpr3svi4HY5y5SS09BUgVn2BFWU4UfG8rq9Rlp7tnT/N3UCpUb9TBmarBMS4d
	uAUWqr+B1j0UVGqFeJyMk7pNVsmwoFHThsez9OwYKWVJz5s7JRwEXdBWMt8pj5QO0oTB2CuC9vt7p
	sBLTpRxCkw5wq7zM5+2lsSCkx62cMwezm6mWn3cX/CiGnaqRpVEOdoqcc09Cy1/nHKwBBGhFv06Zf
	585Ir8U/NCNScAhdyWslPVMFytgE3QPJJkDxbf3FcC8KW+pMroudaXha8r8eb075fz7fWINO4STEb
	QRq3d30Nf12wdv/s16cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTv6d-007Mee-Ks; Tue, 15 Mar 2022 00:32:07 +0000
Received: from mail-he1eur01on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::618]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTv6D-007MVM-B0; Tue, 15 Mar 2022 00:31:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eeynwID9y4IQz+TR/da5j7shp8WhkG17oqtW6x0AkrmkrRM+OHiwyJu9gGra15xcAJVXEqkft3fZ1oYKKGJ2OWCxRvHyKMEsjyFKJ7uHDcGoUfRm4yslRQRE4mBljmmhSPjKbOoEruu0W5X35fAuQxbVYRpBAehmI2cyR4laC+bu7evkwrT9uUGi/DdNGFHPrk5BWaHtwcX9eSiyHpjL1Yw8Y8H6161ZlHBhXPCoytJPJ0HTCX4LckSlkGE0Lk3lHT75hjFQvxrfZ6cqx+UDVMTmyOj6l5K0Dd0z5o6XniPcIybmPT69Oo9rYpASC9s1CLV2NJzmNMiW4x6KR+IziA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H7RUhNFJHFqGyHRGh5QsDKfL8fJyfrx8qAMLjs/7+Ac=;
 b=dfTB7uXf9aTi9xXezKcEjw/+rhSUioPTb0Sw6oCaDhtcbYSq1E4mhIoN7CZ1RnES3AymWnU6WCevtf7XWkiSTbHWaKY6ZGsa4sJULOQq4+fc9k9KcYMfkPmizkIdT7lHYAEyiBeRDfxucgZjV9HnyRAujIqYGEuirJWx5Z6KeDPKHH1UD1SBz0QsT/48HFh7y78luZ+HqgTJHUDqCz2J7VxJI/AyYVmVfRv+L3B/p07wglJCBq8aGBDv8PaBZqyEPU6YNnE3gyYtRR8EtoWm3wlj/AKTogToa7yLqE3JSv2WrhkrvT/Y/Ivm2uTNiG8hFk7NXXP/oQYVH+bbIpWCUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H7RUhNFJHFqGyHRGh5QsDKfL8fJyfrx8qAMLjs/7+Ac=;
 b=Ru2bfLVa6HxZ0t6d1OSWiSJNivV0DYng3iIByGWq7bqC2SXciLxqHCH1l4Sojyj2S5yXmX7m5IZohFuRKHnhQPqhUJYZA1bguwiICvAMJCNBkvTHUiMKL6jAel6II4XLDqNRhNwzbT1i6sUMA7okHW1ZtSEe7UMk/cPNhaTAzqM=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by DB8PR04MB6555.eurprd04.prod.outlook.com (2603:10a6:10:103::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.29; Tue, 15 Mar
 2022 00:15:51 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f4f1:fe49:d19e:4770]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f4f1:fe49:d19e:4770%9]) with mapi id 15.20.5061.028; Tue, 15 Mar 2022
 00:15:51 +0000
From: Hongxing Zhu <hongxing.zhu@nxp.com>
To: Marek Vasut <marex@denx.de>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>
CC: Fabio Estevam <festevam@denx.de>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, dl-linux-imx
 <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>, Shawn Guo
 <shawnguo@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] phy: freescale: imx8m-pcie: Handle
 IMX8_PCIE_REFCLK_PAD_UNUSED
Thread-Topic: [PATCH] phy: freescale: imx8m-pcie: Handle
 IMX8_PCIE_REFCLK_PAD_UNUSED
Thread-Index: AQHYNbHivMio6URy9EinOynKWYH9Pqy+E49AgAAd0wCAAAmQ0IAAfOoAgADfqeA=
Date: Tue, 15 Mar 2022 00:15:51 +0000
Message-ID: <AS8PR04MB8676E598DC9F8835880BA8788C109@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <20220312013812.169671-1-marex@denx.de>
 <AS8PR04MB86766F6033FF0FDAB1E0693B8C0F9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <7ebd66d1-0b16-9b6b-ff0a-4901f054217a@denx.de>
 <AS8PR04MB86760D239565D852334A95F28C0F9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <49b1d398-c422-80f4-231e-a04776358871@denx.de>
In-Reply-To: <49b1d398-c422-80f4-231e-a04776358871@denx.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 252be22f-d2b4-40fe-136c-08da0618f6cb
x-ms-traffictypediagnostic: DB8PR04MB6555:EE_
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <DB8PR04MB655546BBDB142CE787D027B88C109@DB8PR04MB6555.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sQ4+020VwZOiK1hEg98NQOKQW47Onm2RscXl8Q+xo0baAiViNmEb8WwqmBfyv7P3wrvvfmEJ+IPQaHO8S/K1uPW9rBabiGePCn4EZFZbwm8LlsGOB27XXSvm32RRWTcD1nFcH/iJ52ogwsgMIXtZefbGMvFfLIIMtC8LZIRZUEsaDXtSFVA7J7/pjaLaX4t+HMMmSieiZShaDkbhm4WnSca4s4zmqFRBrV7UH7OoeXhvnJG6VdYex/+QDHPMGvlV+hVgR6ACQAmqcSlC2jAi91M6WffWHwHEjR7aa43RdtCw31A7WcGKeE5pTTx8mm+ivMwgxYuU8etKwm3iiwMvuM5Rn6KNff+Rso2LZBTsm/PTOeO4sr4CN2oFEZBcaPLe9EkQG2fYYZjnHB1ZTGkbK+s6y5QfHvNxA48pzGLd2rDsMzWWOVes1xcxxECGS5Gkkz5GI9/ZKVWtMlUZ9QF25qM9UJicNeteiV4acB2rKckBuZ/8y/oi0JtIJIFdMtZVQU49bMSAbRxe/fmCtQ50M0RVcX7fC/ORkiX2+jjCzIp2Y/rubtuGzBMqAC5epHFe/w2YD5HJmL8WMV6bvmfeOAfA5JDL2NpWdGRD2pEKWWSKMXg/5XtYD6J69MUGBmccXIWdRmDobEanRHK5EIHlQgGt+FeNA49mvxWRrmIWih9BT8KigzHj8uhZN/vdEWGCHMedbrAtvT46nIPFU1EvGIHZ6sqivtnnbScFRKJ9+fQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(6506007)(9686003)(7696005)(71200400001)(186003)(26005)(498600001)(83380400001)(33656002)(66556008)(66476007)(66446008)(64756008)(76116006)(66946007)(55016003)(8936002)(38100700002)(2906002)(4326008)(5660300002)(52536014)(44832011)(122000001)(110136005)(53546011)(54906003)(38070700005)(86362001)(8676002)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVlKcUtJZWJvMnVXbUJPQ2o0T2haWnVDcjN1WjNBNHArRjMzYlArS0NrZVZQ?=
 =?utf-8?B?NFoxQ3FzOVJob21zdVpXWDVsenpScWYvVktMbkNRNEtYeGhySkJBVEVNOHBJ?=
 =?utf-8?B?akQzRjhZMXU3dThWb3ovREVyWG5MZGd1Y2taV3NFakN3NHdWb0RKTG44YU9W?=
 =?utf-8?B?TWJvV0ViM0xkQVpWTUtndmgrMlIreGwreGxieVRNdG5JWWtsdW5GOVByT2pl?=
 =?utf-8?B?NHFzQ0JYSmZjQWhBeVFVbkFhdnF5OWlEZE8ySHdUUDdIQm83RU9TRzliaW5M?=
 =?utf-8?B?R1ZvOER4V2tsV0JUbVMzbHdzeG95L1BqNDdBTXIwb0JFVFVDN2NPakUvVUVk?=
 =?utf-8?B?UXhsaDZoVkV4NGt6T1JvYzNiZjBXa0dNRXhPSE5ET3lyNGVjS0lwZXM4bkl5?=
 =?utf-8?B?eWlpYlk4ZHVhNWNnUjRsWSt1VWlRLzd6K2lYQ0N4WUZSZFVSTkw0SVlZZVNy?=
 =?utf-8?B?NHpGWjgxbUkxOXN4dzV4M212eUthMHhncWVjVnpUSmpZYytGd0VUcVg5emJN?=
 =?utf-8?B?eG1idmJDSlFMSW5BZm1rVHMwVTQ0ckVRb1V3V2RNQ2NEY0FYTmtpQ2g1Rmtu?=
 =?utf-8?B?Y0dPWDBoa0lYYWVBSW16VS80RUpncXN3Wmt2RWFYaWpERk5HZDl5dy8rZ0pL?=
 =?utf-8?B?MzdZV3JzbjZiN3lnbE9oZkZaeGp2WlVTbC9Ua2FwTGxWbVlqSFl3S3VTY2xG?=
 =?utf-8?B?dDVwMmg4SEw4VEx1d3hZbzVSOFgwczZnYk9VLzJVdStTN0thRGpvK29PbE5C?=
 =?utf-8?B?c2l2MXRlZlhKM2t2Yk9SQ3NKaWhXYXhCNllkSkp4Kzc5VzRBQUIweEVkOGxR?=
 =?utf-8?B?ZXprR0tNcVpuZjZzb3VsdFA0akVIOWN0QW94aGNoTGRabUk3WDlvRXNHKytj?=
 =?utf-8?B?aWplNkwxWkNSNHp5Q1hGOFNCVTZFd01NSW5MUFVGQWttcVFwM3RROXFCakRY?=
 =?utf-8?B?L3VjUlpvdVIycEdZVjRrWmpmZmlKMmI0ZHBUY2dESEI5bk4yNnNpZmowRzlY?=
 =?utf-8?B?MitVOHNnQmhXRGJZSkZIQnowZ2RncFNkRGlXRUY1RmdXNFJySTRFeit6K1pX?=
 =?utf-8?B?TTcyYTBpbmNpYkVJeXdIdTl2YzEycmJwNENxWE1jbFNnMjlscGpsMlpCbTA2?=
 =?utf-8?B?eElRRW8xUVVkL1pXSEYzVDRMcVdHWFVYSXdrU1VQYnI5R1Z5bE9pVFEzTEpJ?=
 =?utf-8?B?K3VOWG13ajU3R2JoQ0dDa0prei8xK25mWGZLMTV2SU13bmtIYVp5QWRRd25T?=
 =?utf-8?B?eENveDFrRkNTemxXWkVMelpJLzZYWGlWdS9lRDB4UUJzUndsY0RWVFo0c1RJ?=
 =?utf-8?B?S0tobTJ0Z0JJZ2UwQnhXeCtqQkFYRnVHald4S3FrODI1S3paSllCVWxjQkJQ?=
 =?utf-8?B?ZE5zeFpvT1VJU1lYeEtCeC8wVldMOGZnNDFvN2FZc2RObnVKUG5xYktKTEFj?=
 =?utf-8?B?NWFtMU9DbHViZSt5NHpGR2tCMExpWWZjWUd3eHo4NjNpZkZyb0o0WFdqUGFx?=
 =?utf-8?B?VFFvS1FoeUZRSXo5Nm50VGFkNk1GcGpQNnQ1VWk3VDZjcXJNRm5jQWNpRG5V?=
 =?utf-8?B?ZlVUWEdhN3h3NURPaE9RVjlVbHMyUTZXSGdBK1UzQmJsekFWajFUUU52djhZ?=
 =?utf-8?B?MW81UmZ1ZjRObFFWS0ZVaW9JZitpK0ZaQzlxS0ZiMDRaMVowdG9yY1ZRekI1?=
 =?utf-8?B?ZnkvWURubUtHYzM2MUw2YUdaZ1dpbnF1MFR3dnBRWXVGbk1jNDFVNE5BNkdm?=
 =?utf-8?B?L3pZT09oeDFyOTJ0bHhrMlBRRTM1SmJOQkRXV3RTUC9Bc0xCMlB1Vlhma0VU?=
 =?utf-8?B?WStUSWdleU1PYU9uSng0NW90ZjdIa1Y4UEVGVElsZWZJc0dmalk4aU9EUW5U?=
 =?utf-8?B?RHBUeGM0L2gwbUVNamM1VmdFbWJiQXJlUXdQQVVXZENJNnkxbjVEVmxWK3hw?=
 =?utf-8?Q?1SLH2ge3Wt79FVOFLvhBYvoZHijZgL6D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 252be22f-d2b4-40fe-136c-08da0618f6cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2022 00:15:51.5051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z0iIWXiKZUv7XHHWT3P4tp2IiUK8iKFszhWZllpBMEFcvNLvMrHRD3zrnxP3BBNayyCZTDnt9cpcdC+Q0EyRWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6555
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_173141_408997_A5F47E4F 
X-CRM114-Status: GOOD (  20.20  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNYXJlayBWYXN1dCA8bWFyZXhA
ZGVueC5kZT4NCj4gU2VudDogMjAyMuW5tDPmnIgxNOaXpSAxODo1Mw0KPiBUbzogSG9uZ3hpbmcg
Wmh1IDxob25neGluZy56aHVAbnhwLmNvbT47IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
DQo+IENjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBkZW54LmRlPjsgS2lzaG9uIFZpamF5IEFi
cmFoYW0gSQ0KPiA8a2lzaG9uQHRpLmNvbT47IE1hcmNlbCBaaXN3aWxlciA8bWFyY2VsLnppc3dp
bGVyQHRvcmFkZXguY29tPjsNCj4gZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47IFBl
bmcgRmFuIDxwZW5nLmZhbkBueHAuY29tPjsgU2hhd24NCj4gR3VvIDxzaGF3bmd1b0BrZXJuZWwu
b3JnPjsgVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz47DQo+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBwaHk6IGZyZWVzY2Fs
ZTogaW14OG0tcGNpZTogSGFuZGxlDQo+IElNWDhfUENJRV9SRUZDTEtfUEFEX1VOVVNFRA0KPiAN
Cj4gT24gMy8xNC8yMiAwNDoyOSwgSG9uZ3hpbmcgWmh1IHdyb3RlOg0KPiANCj4gWy4uLl0NCj4g
DQo+ID4+Pj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+DQo+ID4+
PiBIaSBNYXJlazoNCj4gPj4+IFRoYW5rcyBmb3IgeW91ciBwYXRjaC4NCj4gPj4+IEkgYXNzdW1l
IHRoYXQgeW91IGhhZCB0ZXN0ZWQgdGhpcyBJTVg4X1BDSUVfUkVGQ0xLX1BBRF9VTlVTRUQNCj4g
b3B0aW9uLg0KPiA+Pg0KPiA+PiBZZXMNCj4gPj4NCj4gPj4+IFRoZSBDTEtfTi9QIHBhZHMgYXJl
IG5vdCBjb25uZWN0ZWQgb24gdGhlIHRlc3RlZCBib2FyZCwgcmlnaHQ/DQo+ID4+DQo+ID4+IFRo
ZXkgYXJlIGNvbm5lY3RlZCBmcm9tIE1YOE1QIFNvQyB0byBNaW5pUENJZSBzbG90Lg0KPiA+PiBU
aGVyZSBpcyBubyBleHRlcm5hbCBjbG9jayBzb3VyY2UgbGlrZSBvbiB0aGUgRVZLLCB0aGUgTVg4
TVAgaW50ZXJuYWwNCj4gPj4gUExMIGlzIHRoZSBjbG9jayBzb3VyY2UuDQo+ID4+DQo+ID4gR290
IHRoYXQsIHRoYW5rcy4NCj4gDQo+IGJ0dy4gaWYgeW91IHBsYW4gdG8gcmVzZW5kIHRoZSBNWDhN
UCBQQ0llIHBhdGNoZXMgKGFzc3VtaW5nIHRoZXkgZGlkbid0IGdldA0KPiBhcHBsaWVkIHlldCks
IENDIG1lLCBJIGNhbiBwcm92aWRlIGEgVGVzdGVkLWJ5IC4NCg0KU3VyZSwgSSB3b3VsZCBDQyB5
b3UgZnJvbSBuZXh0IHJldmlldyBjeWNsZS4NCkl0J3MgZ3JlYXQgdGhhdCB5b3UgY2FuIGhlbHAu
IFRoYW5rcy4NCg0KPiANCj4gPj4+IEJUVywgaXQncyBiZXR0ZXIgdG8gYWRkIHRoZSBGaXhlcyB0
YWcgaW50byB0aGUgY29tbWl0IGxvZy4NCj4gPj4NCj4gPj4gRG8geW91IHRoaW5rIHRoaXMgc2hv
dWxkIGJlIGNvbnNpZGVyZWQgYSBidWdmaXggPw0KPiA+IEVtbS4uLg0KPiA+IEl0J3MgcmVhc29u
YWJsZSB0byBjb25zaWRlciBpdCBhcyBuZXcgYWRkZWQuDQo+ID4gT2theSwgSSdtIGZpbmUgd2l0
aCBpdC4gVGhhbmtzIGFnYWluIGZvciB5b3VyIHBhdGNoLg0KPiA+DQo+ID4gUmV2aWV3ZWQtYnk6
IFJpY2hhcmQgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT4NCj4gDQo+IExldCdzIHdhaXQgZm9y
IG90aGVycycgb3BpbmlvbiwgSSdtIHJlYWxseSB1bnN1cmUgd2hldGhlciB0aGlzIGlzIGENCj4g
Rml4ZXM6IG9yIG5vdC4NCk9rYXkuDQoNCkJlc3QgUmVnYXJkcw0KUmljaGFyZCBaaHUNCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

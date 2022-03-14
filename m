Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 293ABC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Mar 2022 01:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZ9QriGv7silUjqhYHjRm3UvlRaaxGAwVK49JUotkGQ=; b=Gzm6oGz3V4moon
	vakX46t5O3RfWFX3Kir7ALSzPYHNMz2AgSdRwKuZ5KGHS7x9wbLNGhqYdRAtR7+DV6/SnIqFWQ0us
	TPRWJloYIDLDlZ3Vuka9YIr0njdUXfIjBlPUHQliNWsehMcyxULm09QvEcrF7Th2u9iBb/0Wtt7oF
	xzPUj2/pZQd8A1FscXQ4Z7TTCKlOWbBsoTbneW0iN1BgP3iBsMzP6WRr8BUjs1soYoo1i5br6yy5A
	cSQPdwzgKffS/n0M+pyz2Bmp48eJBCzr4NfUnkDK1lP2QSLqHkP9VBgYIyc9STpn7W0RpIdXuiXFA
	BuOO55BSY9YsmVl5nGEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTZrh-003aAm-Gw; Mon, 14 Mar 2022 01:51:17 +0000
Received: from mail-vi1eur05on2060a.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::60a]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTZrf-003aA4-4m; Mon, 14 Mar 2022 01:51:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DFI9I3Q+2QYk7K1qSfIqi+1VcSzJ4+NXx/XbHVy1nAfkecDMnBuhpwsCmzDUv1ga2bJwDFwAx4cKJRt+s8SvLR4h/yUS82RiCgoXQOD47A+Ixao80QuOFoEAeTssnAz7QGs3fKZy6eafXvIeDJxuaX6fVdTBJ3i8IllqKNRv2yDf3E9GeQGkyRnsNNSMr1Lc35RXQIQnSXt6tZhCrh/OeDXUWYQZkx+JDk6UQlTK+/6aX1gTytwLNrdjCZdYbyuA6rV0KJ/nt8mqXS5VH5Ktl/7DHUu6w7n97QJXQ9awYHHZQ94c69pdMKmWIMl4zWWLwTf4FCdb6fR/9um2MUJ4Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hxgsk3ewk3Ucal9ioCqqI0SaWmS/bBDkJ+u9cojtU0g=;
 b=ciXV/NHhM4cOdqffgUY5hRB9pP2V8nGI56TvtUJRC6fAXjrH/Bo+vhKRQvv1Dy+8NN7sk1yv+byRTYK1rM0qDw/vPV13FGJH5mlPAH0+23cLdSAJsqIAP2EkGC2onLUys3zmI48yP6EbiCTHb8mDkruJhEWxXFM2Q3JMRPsfBG+hy5AlXsWE0C5tZsSih49wncc6YX3G9NeYG9r/BRkeenWOlINRRicgyT0cKwbbNXZM3I7jja7ZBo4JqDaedA3b57xFdeqTIXfcpV5tsYWp43R44CEICG4GcRml/g13vsmlfaEDEKwEnJZMJVXZDniF1hYKw0yFXaJErDiUrMW5wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hxgsk3ewk3Ucal9ioCqqI0SaWmS/bBDkJ+u9cojtU0g=;
 b=IWBdwMgnm7K7yuJWXwbQZqXkK3E+xQMP9Jnc6IrM5r/oumfmGHoaNIhau6zUQvHnezi5LwxLc4uHKkP1z2hpsxseqL/It7wLNnTpyUedwGnVtHBVHHf9SjuemI4zUEMecqYxx26XKsFGNc50qaDJckTwu2XPIRfZST3hj/PZKcg=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by VE1PR04MB7312.eurprd04.prod.outlook.com (2603:10a6:800:1a5::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.28; Mon, 14 Mar
 2022 01:51:08 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f4f1:fe49:d19e:4770]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f4f1:fe49:d19e:4770%9]) with mapi id 15.20.5061.028; Mon, 14 Mar 2022
 01:51:08 +0000
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
Thread-Index: AQHYNbHivMio6URy9EinOynKWYH9Pqy+E49A
Date: Mon, 14 Mar 2022 01:51:08 +0000
Message-ID: <AS8PR04MB86766F6033FF0FDAB1E0693B8C0F9@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <20220312013812.169671-1-marex@denx.de>
In-Reply-To: <20220312013812.169671-1-marex@denx.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 864aa4fd-1456-4e6d-90cf-08da055d1bd1
x-ms-traffictypediagnostic: VE1PR04MB7312:EE_
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <VE1PR04MB7312D3811CB6DDE74AF4F6A38C0F9@VE1PR04MB7312.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +fmskFZ0H013Z66JkBSXSew8I85WDBeori2cTJY6dAMdlzmPA8OzHYlu9wqnjThOsXQKOeYSMc5zQdlPH1J1LHayq4W3LMbMLiGNKe6TmNcSwmUKpjK0J/epKBEbkPvnGR8SiAGS7ya8LEO1dRQgRT4zAXxwXx8+Z4eLl3zrcXuavS1ZzNfKSq+JIpQV0as9ynn0tFPc7GkA4g2wBIXMJGuQ7HINf1tfInmVaVK59th3AiGgdRCmnbOpqh0FExN6GfauDzuiodovY1pE65DXtm9GEcMVLqX6veAkG13nQaijJOqnDPqj87ZdclZr19L33Xz/Cyk+VEMQbR65a6pjEEOh+buGzr/HHu5eDa12GM2JfuhyKvkdLqgc/yyvgZ5SYwBpPpl4qsqCZWEzz25+zIDnLe4WyeYEuCXK77RvQ11kvxotxhSd2nJBT33cZtrsbsOXCr9LcgGhnT2VSvy6lPedTF151nssebTOrvY5u030sFssnO0zpCvOYyPmE+W+cSD14+DQ845PWMpHUAtLT107qjUrDS8U4ZxMbHM9nEfTfELjUGBeilAHStdJTZ4KFmGJB6AKQ0bVoBBDRIl/moDcB0V1xZdRrX7jP3fcVg9hl8waAxxrMPSRWtsguMmAYQ2MgjABruOYl6CTVy6nlp3InfitvuCiVJ5X2VAHcFceSdYKMuJa67bm8ceNJPQJTrT1JYFbCsV4N/lFMDysb+xxYPh3IcC+MebEn+mSdy0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(53546011)(6506007)(7696005)(4326008)(8676002)(9686003)(66946007)(66446008)(64756008)(38100700002)(66476007)(76116006)(55016003)(66556008)(83380400001)(122000001)(186003)(2906002)(26005)(54906003)(316002)(508600001)(110136005)(44832011)(52536014)(38070700005)(71200400001)(33656002)(86362001)(8936002)(5660300002)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?TFd6Qlg0aS85UlRaekQvQXUwYTN1RjhqeE12VlZlYUFEK0ZreDVuY3dNRlpy?=
 =?gb2312?B?ZkhkNXo0Rzl5akpZVGs5VjFoZmpBR1JlVGdubCtIZzRDMnhibGZmSVVFSUJr?=
 =?gb2312?B?T3R2MW5DbXVNVDBSejNrMFcxdmZTR2ZuczUyWkRKZ1lLZjhpNmxOY2owSWlX?=
 =?gb2312?B?UUFLMTUyUVYydjMzTEx4K2dNTDdiU2pqY2VkRzVTU1ZpSXRCMURJbWE2VW1s?=
 =?gb2312?B?V09BQjNwR08rME4yWnMybTdNcnQzdDBxQ3Fkb29hbVJ1YzBiOUM0Q29mWGp0?=
 =?gb2312?B?SC9jQldtdXpCQ1J2TkJzMFBrUjNjQkpRUWVqNy8xT0JUU2p5YWJ0RjgweFR1?=
 =?gb2312?B?TkJvNW5HdC80WSsxUWtFWlV0TkZRd3dZOTlDSUlJeERqc2RGT3A4bVlGUThv?=
 =?gb2312?B?WGQyekI0UitQSUt5U3lyM3cweFR0ajVUWG4rMTg2bVY0SkJvUnFTakhqT0Nk?=
 =?gb2312?B?a2VZSDhSK0RML1I3M0hvR0ZOaFhmSDFKZzd4ckgzTE1UaXNRMVpILzU5VHVj?=
 =?gb2312?B?Wjhwa0dUV05FKy8yTkg4aVdlc2dZbWVmVnlSZGhwek1YL1pGcDQxZnhVcStj?=
 =?gb2312?B?MGJyK1Z3eUxKcFRLVFJiYlJVNWNacW5qSDY5K01YcW1lbmdKTEorREN6RS9h?=
 =?gb2312?B?NitiKzB0b3gvYnlSVDNuVFk3RTUxbnRiUUJ2d0JNQm1MWG5jZGhCVExzQlJR?=
 =?gb2312?B?OGxNcW9WemtSaGUrK3hHM0NacVVKSFhsNlh0NDJyc1BURTFRamg5ZFRURXJP?=
 =?gb2312?B?R3BoZ28vRzhBVG5IcjBod0RCMEhjSFZiODlycXJzK3VLRUZQS0l5bk50QXVs?=
 =?gb2312?B?R2RWalliUzVRV0Z5bEFrMWw4MWVUU3dUTi9vSzcyQ0ppalRsR25pSzdlS1dj?=
 =?gb2312?B?c2wwOXBEU2JrUzNjNmMyUUJLVnU1cFVSS0QzM1dNOWxRcXZZSzZQM0I5VjhF?=
 =?gb2312?B?aUV0R0dvc2ZFaU12MXNmZXZXbjFTbDhweC9TQTNZVmFKQVk1L3cxT1ZuRnVo?=
 =?gb2312?B?SHNoYnRoZDdQRy9qTlAzakFCeGtrOVlmMC90OE1lekZRdUxWZFhCdFFqWk0r?=
 =?gb2312?B?Wk41T3RIbjY0c1VIVjZ4cjBKcDF3SUZVdmRadThQN3J5VG9IaEtTZ3M3MUdn?=
 =?gb2312?B?U2d0WlN1dTJMRmtHbVNHcmZCbmpNSVA2ZDdsaXVQK0ZodFpIR1dBaWtnTVhK?=
 =?gb2312?B?S0ZSUXlyRUwvbVg1MEFFdDl0RFlEdFVYYkxMWFlmblZMcG9aQmtSaVBXZnRy?=
 =?gb2312?B?dkxTRWNVZ0Q5SFhNVE5rTTdVY0ZjRTh3K0hSenBpZ3NBeVBwakxaYWFJL1Rv?=
 =?gb2312?B?d2s0aDRMMUh2ai9EQVRmb0tZVXJRVFlSSDR2V2FyV2NvTTY0RVAvN2RKK0Rk?=
 =?gb2312?B?OGdqRmVjclJVd2dLYTRUOW1hM3UzdHJJWjJRWEVqTko1TnJDMHJyMHB4Z2Y2?=
 =?gb2312?B?d2MxbzMvOUdsSjhybm9qTE5vT0RYTkNhdDJFdHNmUHdGSVdybGZGRm1BRDU3?=
 =?gb2312?B?WnZMNEJEQlQ5UC9zSDF1V2p5RlJWaHl2TjdET0ErZ2x3OGlCRU5HNVRac3RN?=
 =?gb2312?B?bDdySHp2WWo3QXI3NndCSXhaZDIzclFaZU9ubDE0ODVsQ1lDZ2NSdVd1K2Iw?=
 =?gb2312?B?S0V4bi84ZGVJWTgyekp3RjluRmxHdGhKQ0dlMExxamJ0QnE3MTVDTVEzZVNT?=
 =?gb2312?B?Z0FwOEM3SzhML1dxazBkdkxsQ0E4THFaZXE0R01GZmhDa3d1NndiVnNoY0tC?=
 =?gb2312?B?RVdRTVkxelBaekVmUTRZQ0pVUHVRamhrY2c1Z2FTZHgzd2t0TzI2Q2Yyc0R0?=
 =?gb2312?B?N3dnSEpyS2lGYVp2Z2hYa1NWMlVLOHJCQmpxdGZxMWNzWU5xWThGdGVqNFdO?=
 =?gb2312?B?TDN2Zm9mTFBQVFd3d1JyZUcyZ2ZtWGdhT1VpMzFkQzdVYThjVkVOQ3ZVRGNl?=
 =?gb2312?Q?vUHGP7+LTMVCRXXYAnuV6tpHBdnT5sEL?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 864aa4fd-1456-4e6d-90cf-08da055d1bd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2022 01:51:08.2694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NJfuWvxCncCT5cnEP718AcTXcrx/0BVmBSVDfGyY6YXjVnQKqkTij4D/1kyH/niuroMGYUveBthC5CXAsGEJ2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7312
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220313_185115_326348_06D2CE5E 
X-CRM114-Status: GOOD (  23.15  )
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
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNYXJlayBWYXN1dCA8bWFyZXhA
ZGVueC5kZT4NCj4gU2VudDogMjAyMsTqM9TCMTLI1SA5OjM4DQo+IFRvOiBsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZw0KPiBDYzogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+OyBGYWJp
byBFc3RldmFtIDxmZXN0ZXZhbUBkZW54LmRlPjsNCj4gS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8
a2lzaG9uQHRpLmNvbT47IE1hcmNlbCBaaXN3aWxlcg0KPiA8bWFyY2VsLnppc3dpbGVyQHRvcmFk
ZXguY29tPjsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47IFBlbmcgRmFuDQo+IDxw
ZW5nLmZhbkBueHAuY29tPjsgSG9uZ3hpbmcgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT47IFNo
YXduIEd1bw0KPiA8c2hhd25ndW9Aa2VybmVsLm9yZz47IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5l
bC5vcmc+Ow0KPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVj
dDogW1BBVENIXSBwaHk6IGZyZWVzY2FsZTogaW14OG0tcGNpZTogSGFuZGxlDQo+IElNWDhfUENJ
RV9SRUZDTEtfUEFEX1VOVVNFRA0KPiANCj4gVGhlICdmc2wscmVmY2xrLXBhZC1tb2RlJyBEVCBw
cm9wZXJ0eSB1c2VkIHRvIHNlbGVjdCBjbG9jayBzb3VyY2UgZm9yIFBDSWUgUEhZDQo+IGNhbiBo
YXZlIGVpdGhlciBvZiB0aHJlZSB2YWx1ZXMsIElNWDhfUENJRV9SRUZDTEtfUEFEX0lOUFVULA0K
PiBJTVg4X1BDSUVfUkVGQ0xLX1BBRF9PVVRQVVQsIElNWDhfUENJRV9SRUZDTEtfUEFEX1VOVVNF
RC4gVGhlIGZpcnN0DQo+IHR3byBvcHRpb25zIGFyZSBoYW5kbGVkIGNvcnJlY3RseSBieSB0aGUg
ZHJpdmVyLCB0aGUgbGFzdCBvbmUgaXMgbm90LCB0aGlzIHBhdGNoDQo+IGltcGxlbWVudHMgc3Vw
cG9ydCBmb3IgdGhlIGxhc3Qgb3B0aW9uLg0KPiANCj4gVGhlIElNWDhfUENJRV9SRUZDTEtfUEFE
X0lOUFVUIG1lYW5zIFBDSUVfUkVTUkVGIGlzIFBIWSBjbG9jayBpbnB1dCwNCj4gdGhlIElNWDhf
UENJRV9SRUZDTEtfUEFEX09VVFBVVCBtZWFucyBQSFkgY2xvY2sgYXJlIHNvdXJjZWQgZnJvbSBT
b0MNCj4gaW50ZXJuYWwgUExMIGFuZCBvdXRwdXQgdG8gUENJRV9SRVNSRUYgZXh0ZXJuYWwgSU8g
cGluLiBUaGUgbGFzdA0KPiBJTVg4X1BDSUVfUkVGQ0xLX1BBRF9VTlVTRUQgaXMgYSBjb21iaW5h
dGlvbiBvZiBwcmV2aW91cyB0d28sIFBIWSBjbG9jaw0KPiBhcmUgc291cmNlZCBmcm9tIFNvQyBp
bnRlcm5hbCBQTEwgYW5kIG5vdCBvdXRwdXQgYW55d2hlcmUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4NCkhpIE1hcmVrOg0KVGhhbmtzIGZvciB5b3Vy
IHBhdGNoLg0KSSBhc3N1bWUgdGhhdCB5b3UgaGFkIHRlc3RlZCB0aGlzIElNWDhfUENJRV9SRUZD
TEtfUEFEX1VOVVNFRCBvcHRpb24uDQpUaGUgQ0xLX04vUCBwYWRzIGFyZSBub3QgY29ubmVjdGVk
IG9uIHRoZSB0ZXN0ZWQgYm9hcmQsIHJpZ2h0Pw0KQlRXLCBpdCdzIGJldHRlciB0byBhZGQgdGhl
IEZpeGVzIHRhZyBpbnRvIHRoZSBjb21taXQgbG9nLg0KDQpCZXN0IFJlZ2FyZHMNClJpY2hhcmQg
Wmh1DQoNCj4gQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGRlbnguZGU+DQo+IENjOiBLaXNo
b24gVmlqYXkgQWJyYWhhbSBJIDxraXNob25AdGkuY29tPg0KPiBDYzogTWFyY2VsIFppc3dpbGVy
IDxtYXJjZWwuemlzd2lsZXJAdG9yYWRleC5jb20+DQo+IENjOiBOWFAgTGludXggVGVhbSA8bGlu
dXgtaW14QG54cC5jb20+DQo+IENjOiBQZW5nIEZhbiA8cGVuZy5mYW5AbnhwLmNvbT4NCj4gQ2M6
IFJpY2hhcmQgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT4NCj4gQ2M6IFNoYXduIEd1byA8c2hh
d25ndW9Aa2VybmVsLm9yZz4NCj4gQ2M6IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+DQo+
IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gVG86IGxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IC0tLQ0KPiAgZHJpdmVycy9waHkvZnJlZXNjYWxlL3Bo
eS1mc2wtaW14OG0tcGNpZS5jIHwgMTAgKysrKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bS1wY2llLmMNCj4gYi9kcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1pbXg4bS1wY2llLmMNCj4gaW5kZXggZTU2OTU0MDYzMTA4Yy4uN2Q4ZTY5
OTEyNzlmNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14
OG0tcGNpZS5jDQo+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtLXBj
aWUuYw0KPiBAQCAtMTU2LDE1ICsxNTYsMjEgQEAgc3RhdGljIGludCBpbXg4X3BjaWVfcGh5X2lu
aXQoc3RydWN0IHBoeSAqcGh5KQ0KPiAgCQlicmVhazsNCj4gIAl9DQo+IA0KPiAtCWlmIChwYWRf
bW9kZSA9PSBJTVg4X1BDSUVfUkVGQ0xLX1BBRF9JTlBVVCkgew0KPiArCWlmIChwYWRfbW9kZSA9
PSBJTVg4X1BDSUVfUkVGQ0xLX1BBRF9JTlBVVCB8fA0KPiArCSAgICBwYWRfbW9kZSA9PSBJTVg4
X1BDSUVfUkVGQ0xLX1BBRF9VTlVTRUQpIHsNCj4gIAkJLyogQ29uZmlndXJlIHRoZSBwYWQgYXMg
aW5wdXQgKi8NCj4gIAkJdmFsID0gcmVhZGwoaW14OF9waHktPmJhc2UgKyBJTVg4TU1fUENJRV9Q
SFlfQ01OX1JFRzA2MSk7DQo+ICAJCXdyaXRlbCh2YWwgJiB+QU5BX1BMTF9DTEtfT1VUX1RPX0VY
VF9JT19FTiwNCj4gIAkJICAgICAgIGlteDhfcGh5LT5iYXNlICsgSU1YOE1NX1BDSUVfUEhZX0NN
Tl9SRUcwNjEpOw0KPiAtCX0gZWxzZSBpZiAocGFkX21vZGUgPT0gSU1YOF9QQ0lFX1JFRkNMS19Q
QURfT1VUUFVUKSB7DQo+ICsJfSBlbHNlIHsNCj4gIAkJLyogQ29uZmlndXJlIHRoZSBQSFkgdG8g
b3V0cHV0IHRoZSByZWZjbG9jayB2aWEgcGFkICovDQo+ICAJCXdyaXRlbChBTkFfUExMX0NMS19P
VVRfVE9fRVhUX0lPX0VOLA0KPiAgCQkgICAgICAgaW14OF9waHktPmJhc2UgKyBJTVg4TU1fUENJ
RV9QSFlfQ01OX1JFRzA2MSk7DQo+ICsJfQ0KPiArDQo+ICsJaWYgKHBhZF9tb2RlID09IElNWDhf
UENJRV9SRUZDTEtfUEFEX09VVFBVVCB8fA0KPiArCSAgICBwYWRfbW9kZSA9PSBJTVg4X1BDSUVf
UkVGQ0xLX1BBRF9VTlVTRUQpIHsNCj4gKwkJLyogU291cmNlIGNsb2NrIGZyb20gU29DIGludGVy
bmFsIFBMTCAqLw0KPiAgCQl3cml0ZWwoQU5BX1BMTF9DTEtfT1VUX1RPX0VYVF9JT19TRUwsDQo+
ICAJCSAgICAgICBpbXg4X3BoeS0+YmFzZSArIElNWDhNTV9QQ0lFX1BIWV9DTU5fUkVHMDYyKTsN
Cj4gIAkJd3JpdGVsKEFVWF9QTExfUkVGQ0xLX1NFTF9TWVNfUExMLA0KPiAtLQ0KPiAyLjM0LjEN
Cg0KLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==

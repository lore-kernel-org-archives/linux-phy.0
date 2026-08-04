Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8AF5C55172
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 09:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61dfzncKzCd38dPVlb1Sgxs5jHCl0lESXj4EKreDPYc=; b=DWiKNzSi+Az/yq
	nC2o0JkbPj9W9Yw1EpKt/NGbz9XgFija2a2YKp7sFynQeJtkY387KNGdwscjL+P418Kiuu6ZYA1ho
	jevmsifsjva0URp8n/zs/SwWdBv+YQY9oJjDmCkqfAKOLCnX/M+29hNWohFBamBn5buoyIu0ATL4U
	WYsM5eLkT+LhBXGTXRdvuxleh00xyc2Xmp5kHjSwrYPESFv2VpaIHUdp/PrRyyP1ST4YzjnUb44lo
	v15tyslKig0tKPZFks8wr+iF9EGcGGA8ICbYn9Gms7nyHWKgMo9xdC1EKWia2LMOM9iEpE2nxlR2M
	Fl1FtFWIEzagP8/5J8yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrB93-00000001PwS-1YjV;
	Tue, 04 Aug 2026 09:09:09 +0000
Received: from mail-japanwestazon11010007.outbound.protection.outlook.com ([52.101.228.7] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrB90-00000001Pvx-3Uxo
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 09:09:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uPzfxMfvC76o+gJ/vO7y7ENvanFlsc3RgB0ixUnz+NzOe/6ZpIxPDN9kAlbMswRwWyAiL3hMBXN/INZwd3OvlBxUveBd9EzwIKWapD5LWL9sRkBD/DhYrS7i5oezb0hHFDDFC8rylwaMm4Zogfz6dl+8U0V+MPODV8eEfqd5oh1xTB5PA/t9n0uX5G9rPxF3pc/agRTIadSunkSoW6vWT6D+FvfEogVdP5kwBOnxgbTpp0O6biaf6/8tmE4ssDbC83sefo0NQpqskgcMA78IfojOWJQQKfDrV2QiWZhcPtO1TnmHSv+ZJiHPRwo9NJhRUaTbNZzpNxWXia2XTimphg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LrCHN1G+OZqwga28u8TJsu6ra+ZtOfJWBY9hzEGhBW4=;
 b=q706qfHXv29kOmS/M82jj1Z5luRopS2f6CxCn33DkXt1x7iCU3uFSHVshJF2msIBQuqw/IZwOwzTwfM2904o4tcf0ccr6s+N84dYOpP8KwwEPyocmO8ztt8A9xvn4qJQItOrljBnGxjqc73LUXMfu978Y7Cvg6c9JxJCiGzdgIrLQu8DHCIHxcwlLac57vbZ5+synnX3h6HgIXjW7dbCTJfc9YT0ndO2KGXu/XaYuvy0kcCGbRMjZUM41n4vs/Kbh5gQI0Wcr3JfpIDVHqAlhXAUBIeYfuytcClMxGrCG4ddHNQ2wXMUXVsXX2aU2Quue/t7l3Ww6dkfvZiFQKtYog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LrCHN1G+OZqwga28u8TJsu6ra+ZtOfJWBY9hzEGhBW4=;
 b=Bksh863dywlfoC8ua32jBV80A76a022Q4R/uUEXPwMFOJu+q58rz8WhWagQ7mVVFUWEbntnZe7Bjf6gDnna/kOKHK8zse76Wk+K3W8d9gG7fqCkbHIeTpX8ndbsa375orV1XtPLN8gYL/Mr0oeC6EG3Ev/VJrQSBlqoWMWMPtKo=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYCPR01MB6852.jpnprd01.prod.outlook.com (2603:1096:400:b7::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.270.18; Tue, 4 Aug
 2026 09:08:44 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de%4]) with mapi id 15.21.0270.017; Tue, 4 Aug 2026
 09:08:44 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Pei Xiao <xiaopei01@kylinos.cn>, Yoshihiro Shimoda
	<yoshihiro.shimoda.uh@renesas.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
	"geert+renesas@glider.be" <geert+renesas@glider.be>, "magnus.damm"
	<magnus.damm@gmail.com>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] phy: renesas: rcar-gen3-usb2: Fix use-after-free in
 rcar_gen3_phy_usb2_remove due to race condition
Thread-Topic: [PATCH] phy: renesas: rcar-gen3-usb2: Fix use-after-free in
 rcar_gen3_phy_usb2_remove due to race condition
Thread-Index: AQHdI+lxQiWI1zsUOEayjIBpj7lTFraNj3zAgAAJZwCAAAA0cA==
Date: Tue, 4 Aug 2026 09:08:44 +0000
Message-ID: <TY3PR01MB1134613500284ECC47AE1B1D686D42@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <d265021fb7fe432e32eedbe9e075fb041c15cbe6.1785830417.git.xiaopei01@kylinos.cn>
 <TY3PR01MB1134664317D6A75D8230DB51B86D42@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <63160e2f-8566-4a2f-b0fe-ba97603df78b@kylinos.cn>
In-Reply-To: <63160e2f-8566-4a2f-b0fe-ba97603df78b@kylinos.cn>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYCPR01MB6852:EE_
x-ms-office365-filtering-correlation-id: 8cc29e4c-63fc-476f-7a10-08def207fc65
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|23010399003|6133799003|11063799006|4143699003|56012099006|18002099003|22082099003|10067099003|38070700021;
x-microsoft-antispam-message-info: 8OFQnABo8c1ab74g3fYNIJDs1MUD6l+NslOURzv56tpLXIQiHeR/2Y2uUaaFQvvtKsC80hwbyAQsr51n6BB0BCgMbw1+nJEQBh+8fJ/13Mouv2jVzQHbCsQuFcqMuMD4gkd5cc+KInV9mO2vjhOi3nIa06/AVa9tHHUNowfURIMdS7TV37f7LeEx3JHpMP8tYZUdliBZTe2p5X4HDV3Y7l8TEWnnp0OER1flYHAOhYgd45lePB1FYuHQnGMSktKA1BlGS+glyGYwy8JnMjsgFN5Ww+Vo7ZJw2o43Caq3joOiMeiPG97XDFZSqymN11oqMFajk1pWlGJnO+tlRPrLTDKfv9ToxzggkQhT98TdpXpRt4Nump9Rd/InGEAz831pwhGhbooTrmCK3F9/6L2WKz4VrIdwENVj4Q3zGr/XuJHJVW8jkkcl1xxMdIj1MYhO9U/r6CLwwzd5bdn5ztFe64JpA+yvWycgIz4i2gAyck7UoksYVL3IB5V8ZIps3SgnVh+e6dpo0aX2qcsA3ELdfHYELg6pFPiiBA72ER3bRaR0bZY818/3JQO4zFz6O4gc/gLKqVnxy9dPu9C8keKROJqe1+ji89WliILG55vWzUen21BrKCufzbYWL4z32ydzlsMiCr7IGblNxx3Y0+OE5jUe7SeIA8WvRd017BKourQW1jzw2lptgnIyAuG3dN7JRMS9+xSufLLWedcaWC2AB0VyMJi5a6nhgWFbmuCfsWU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(6133799003)(11063799006)(4143699003)(56012099006)(18002099003)(22082099003)(10067099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWtKQkgzMmR2WEtySzZMbmNiWHQ4TTZNMzZnMkdSU3N6LzZCQURWZGlUb2NQ?=
 =?utf-8?B?QTJKbTNJdFh6WFR1UTZqbjQ4Lzk4d0ljRUw0TWthSFltdFM1YkJJaG1XNG4y?=
 =?utf-8?B?S3BMN1dxTWJ0ZU13bXhTb21BbjVyMG1seGpNQXQ0K2pRaXVScmw0K00xbFNO?=
 =?utf-8?B?eWNZTHFKV3k0U3hsSjg1bk9nYUVYdzkvM0d1RFFQWXJHWEViY1dCc3FlZDJ1?=
 =?utf-8?B?a3FKenhUY0FOWFEzald0TUhqZ1g5aTNQU3hHdW5uRTdMSjd2OTY2NWZ1RnJK?=
 =?utf-8?B?ZGJURitZSjYxM2lTL3M5enZGMlBBWnVIWGxRV283WEYwbm9hYUxLOVZ1TFd1?=
 =?utf-8?B?aFhUbWthc0V2Umk5TExkeHM2clRCeUhLZGkyNVlvVFVSOWRYWXo5VVpvVkxW?=
 =?utf-8?B?d0lqM25FL1FMV25GMVZIaXpiRnd0aTg3bTBWYXNaZG8rZ1pRUnBQTEdXNGZr?=
 =?utf-8?B?Vi9TaXNMWEdJcnl0bEQzeFR2ekxBYzdZREVlcnllYUFBOFF3ekU3NjFYSFBJ?=
 =?utf-8?B?ZGV2cWs1NlYzalJxdDZvaTlWWHp6N1poWVIwTnMxQzlSQ3FCT1lBbmZRVkxt?=
 =?utf-8?B?aFhUR1VBbWJ4QWZUVzRWTktDUmFzbjR6bldIOTN2WFRLQjJFbkRnOThKSWlC?=
 =?utf-8?B?OUJFUjBLY21iOWZWTkw0KzBySjFBNG85Ym1sYmNvWEpoWUNJWlBTWlhBcHd0?=
 =?utf-8?B?MHRSQ29STmpRN2RTTXVxcVpISkhoeFovQTdtZ0IzdlpxektMM2w4Z2hFT1Nk?=
 =?utf-8?B?T2hHQmdMMUZIL0hMb0NzZzg5d3RsZFpXV2N1bWVXTnBBYUlBL0ZnOGc0VnZp?=
 =?utf-8?B?OGx1U1BiSk9RTDZZVkphVGg1OXR4NzBGUTNYODZwRURhZ1BwYzVyRnJPYTJh?=
 =?utf-8?B?V0g0Zks3amZXbzUzcVBwQVh3S0RFYXcwWFhFMGlVeHN0VEFQT3hSM044MDBW?=
 =?utf-8?B?cjZyc3IvK2c4M1djZ0crSkhvZGFMUFFHTW9GTmpVeW5aZTVLSm9QTmNSZWdT?=
 =?utf-8?B?bm93MVlYMVVHUnlvUnNMbGZHcHhsVkxZclNONkE1T3NycFRkTjdlTmFnRDhD?=
 =?utf-8?B?b3R3bXUvbVcvdHBIVmpWcUl1a2ZSVmMxeXRFblFtczNIYzlTSy9laXA2Q3My?=
 =?utf-8?B?RVZCTFVoZG90MjlrVUFtQlRlN1JFOW4wK1cvMGYvc0dMcU51UnNHWmdoQ2lw?=
 =?utf-8?B?NVkvMEtuU1BabjdwSkpPU1p2S2ZYVkJpZFFKdnIwKy9jeUFlV0lSaS80amNL?=
 =?utf-8?B?S2YzVitJb1h5aDljeDhYQ25mUHhBczBPdzJVVlZ3TGl4aWZCT0diWjNmTmh1?=
 =?utf-8?B?cUhUdlFLTnJvQVRnekFVTkhlTlJUd0diajFFM2NsOEJBaEwvLzhBa0tFZEdD?=
 =?utf-8?B?OUVWU3R1UzhpMFdZQlgzQS9sVUxlYU0yY21xT3lFQXo0MGpwTVNRN2JlQ1Uw?=
 =?utf-8?B?TUJqaVdKUmdOWkN6NDUxQVRudUs3RDZ0SGtnM3hNazh4emxhdGVtSUdiSFdR?=
 =?utf-8?B?emZPVnRCZ1ZNTm9oaTFRSU5yVTdqbjEwVnAxSWlwUWw4MGVPanlIRkpMT1gv?=
 =?utf-8?B?dGY5Y0tLMkkya0xpMWY4ZzNucWlCSFMrOVcram5TaDlKSU15eHA5ajQ0UVJu?=
 =?utf-8?B?SkRXM0cwN2J4eTFVbkRiOEptTU1xN3lXeFhRSHRrS2FYU1p5eERsUENiRnNB?=
 =?utf-8?B?QStTb085TkhCTGtIa0tSYnBVSVE1QkNxWEEvaVFRRkdXL0dxT2svT2k1bFRX?=
 =?utf-8?B?dUNDM2tpTWdtbjFJaXpPaXFrSm1wbVc0YTBTbjRIdkxDV08yajlldHVyVytJ?=
 =?utf-8?B?TkFzUTIwdVNZdit2VXI0eGt1WWt3WGFzSHlqam9RQ3VyOEFlNmIyUDYwamYr?=
 =?utf-8?B?RXMzeUpaSm9WbFlqUVdOTE1UR01wNlhPQ3ZIN1ZSTXVPUW5PSEJLR0VHNTFi?=
 =?utf-8?B?cjJqSFowb0R4d3NJYlNuanpqZ1BYNGF5c2JwSHRTKzNPeXVyT1FlK1lQcVJx?=
 =?utf-8?B?eVQ1dlhnY1AzY24zTmJCVWMyZFJiNTgyNEhBTDB2dTE2N3ZLZTNndXRvRy8w?=
 =?utf-8?B?UTV4b2p3UWVCK1BRbFRlQTdkb1pLeEczTXl0KzhRL0FqS1NxNitwOHJtdDg3?=
 =?utf-8?B?Zndxd3B4dkJxM3BmWkxzMnluVDR1V3drQ09JTXFWS0J0YUd3bkZaVXRFcmJw?=
 =?utf-8?B?UzVXWTh1aHV5K2IzMjJ1Z0VOamdEcW80MGMyMHhuZ1U0c3AvVnNEaTlYZkRr?=
 =?utf-8?B?ZkJJM1h0Umt3R0RJamJtM0tMTGVvcnJ1RmpGZVp1MnQ5UGoyR0x5RXFsT2NQ?=
 =?utf-8?B?V292ZytnTmlpc1l6TVlhWjJsbDV3NWwyUXBEU1VpamgvdTNURFhVQT09?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cc29e4c-63fc-476f-7a10-08def207fc65
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2026 09:08:44.6187
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 07J6QaXqNZLcMG3uS4UcS33funwQYO+7ifspiOlVWPZfixEafjq2hcbHO0/GOXvkso8VD7GPe0KAqh0ka/au4txCBckWIclehmxkI3dVuvU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB6852
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_020907_012179_705316A1 
X-CRM114-Status: GOOD (  32.27  )
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGVpIFhpYW8gPHhpYW9w
ZWkwMUBreWxpbm9zLmNuPg0KPiBTZW50OiAwNCBBdWd1c3QgMjAyNiAxMDowNQ0KPiBUbzogQmlq
dSBEYXMgPGJpanUuZGFzLmp6QGJwLnJlbmVzYXMuY29tPjsgWW9zaGloaXJvIFNoaW1vZGEgPHlv
c2hpaGlyby5zaGltb2RhLnVoQHJlbmVzYXMuY29tPjsNCj4gdmtvdWxAa2VybmVsLm9yZzsgbmVp
bC5hcm1zdHJvbmdAbGluYXJvLm9yZzsgZ2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU7IG1hZ251cy5k
YW1tDQo+IDxtYWdudXMuZGFtbUBnbWFpbC5jb20+OyBsaW51eC1yZW5lc2FzLXNvY0B2Z2VyLmtl
cm5lbC5vcmc7IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC0NCj4ga2VybmVs
QHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBwaHk6IHJlbmVzYXM6IHJj
YXItZ2VuMy11c2IyOiBGaXggdXNlLWFmdGVyLWZyZWUgaW4gcmNhcl9nZW4zX3BoeV91c2IyX3Jl
bW92ZSBkdWUgdG8NCj4gcmFjZSBjb25kaXRpb24NCj4gDQo+IA0KPiANCj4g5ZyoIDIwMjYvOC80
IDE2OjM0LCBCaWp1IERhcyDlhpnpgZM6DQo+ID4gSGkgUGVpIFhpYW8sDQo+ID4NCj4gPiBUaGFu
a3MgZm9yIHRoZSBwYXRjaC4NCj4gPg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
PiA+PiBGcm9tOiBQZWkgWGlhbyA8eGlhb3BlaTAxQGt5bGlub3MuY24+DQo+ID4+IFNlbnQ6IDA0
IEF1Z3VzdCAyMDI2IDA5OjAyDQo+ID4+IFN1YmplY3Q6IFtQQVRDSF0gcGh5OiByZW5lc2FzOiBy
Y2FyLWdlbjMtdXNiMjogRml4IHVzZS1hZnRlci1mcmVlIGluDQo+ID4+IHJjYXJfZ2VuM19waHlf
dXNiMl9yZW1vdmUgZHVlIHRvIHJhY2UgY29uZGl0aW9uDQo+ID4+DQo+ID4+IEluIHJjYXJfZ2Vu
M19waHlfdXNiMl9wcm9iZSwgJmNoYW5uZWwtPndvcmsgaXMgYm91bmQgd2l0aA0KPiA+PiByY2Fy
X2dlbjNfcGh5X3VzYjJfd29yay4gcmNhcl9nZW4zX3BoeV91c2IyX2lycSBjYW4gc2NoZWR1bGUg
dGhpcw0KPiA+PiB3b3JrIG9uIHN5c3RlbV93cSB2aWEgcmNhcl9nZW4zX2RldmljZV9yZWNvZ25p
dGlvbigpLCBhbmQgdGhlIHJvbGUgc3lzZnMgc3RvcmUgY2FuIGFsc28gc2NoZWR1bGUgaXQNCj4g
dmlhIHJjYXJfZ2VuM19pbml0X2Zvcl9ob3N0KCkgLyByY2FyX2dlbjNfaW5pdF9mb3JfcGVyaSgp
Lg0KPiA+Pg0KPiA+PiBJZiB3ZSByZW1vdmUgdGhlIGRldmljZSwgcmNhcl9nZW4zX3BoeV91c2Iy
X3JlbW92ZSBtYWtlcyBjbGVhbnVwIGFuZA0KPiA+PiB0aGUgbWVtb3J5IGFsbG9jYXRlZCBmb3Ig
Y2hhbm5lbCB3aXRoIGRldm1fa3phbGxvYygpIGlzIHJlbGVhc2VkIGJ5DQo+ID4+IHRoZSBkZXZt
IGNsZWFudXAgYWZ0ZXIgdGhlIHJlbW92ZSBjYWxsYmFjayByZXR1cm5zLCB3aGlsZSB0aGUgd29y
aw0KPiA+PiBtZW50aW9uZWQgYWJvdmUgbWF5IHN0aWxsIGJlIHBlbmRpbmcgb3IgcnVubmluZy4g
VGhlIHNlcXVlbmNlIG9mIG9wZXJhdGlvbnMgdGhhdCBtYXkgbGVhZCB0byBhIFVBRiBidWcNCj4g
aXMgYXMgZm9sbG93czoNCj4gPj4NCj4gPj4gQ1BVMCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgQ1BVMQ0KPiA+Pg0KPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8IHJjYXJfZ2VuM19waHlfdXNiMl9pcnENCj4gPj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCByY2FyX2dlbjNfZGV2aWNlX3JlY29nbml0
aW9uDQo+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgcmNh
cl9nZW4zX2luaXRfZm9yX2hvc3QNCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCBzY2hlZHVsZV93b3JrKCZjaC0+d29yaykNCj4gPj4gcmNhcl9nZW4zX3Bo
eV91c2IyX3JlbW92ZSAgICAgICAgICAgICAgICAgfA0KPiA+PiBkZXZpY2VfcmVtb3ZlX2ZpbGUo
JnBkZXYtPmRldiwgICAgICAgICAgICB8DQo+ID4+ICAgICAgICAgICAgICAgICAgICAmZGV2X2F0
dHJfcm9sZSkgICAgICAgIHwNCj4gPj4gLy8gcmVtb3ZlIHJldHVybnMgICAgICAgICAgICAgICAg
ICAgICAgICAgfA0KPiA+PiAvLyBkZXZtIGNsZWFudXA6IGZyZWVfaXJxLCAgICAgICAgICAgICAg
ICB8DQo+ID4+IC8vIGtmcmVlKGNoYW5uZWwpICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4g
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCByY2FyX2dlbjNf
cGh5X3VzYjJfd29yaw0KPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8IC8vIHVzZSBjaA0KPiA+PiAodXNlLWFmdGVyLWZyZWUpDQo+ID4+DQo+ID4+IEZpeCBp
dCBieSBkaXNhYmxpbmcgdGhlIE9URyBpbnRlcnJ1cHRzLCBzbyB0aGUgSVJRIGhhbmRsZXIgY2Fu
bm90DQo+ID4+IHNjaGVkdWxlIG5ldyB3b3JrLCBhbmQgY2FuY2VsaW5nIHRoZSB3b3JrIGJlZm9y
ZSB0aGUgcmVtYWluaW5nIGNsZWFudXAgaW4gcmNhcl9nZW4zX3BoeV91c2IyX3JlbW92ZQ0KPiBh
bmQgdGhlIGRldm0gcmVsZWFzZSBvZiBjaGFubmVsLg0KPiA+Pg0KPiA+PiBGaXhlczogYzE0Zjhh
NDAzMmVmICgicGh5OiByY2FyLWdlbjMtdXNiMjogZml4IG11dGV4X2xvY2sgY2FsbGluZyBpbg0K
PiA+PiBpbnRlcnJ1cHQiKQ0KPiA+PiBBc3Npc3RlZC1ieTogQ29kZXg6ZGVlcHNlZWstdjQtZmxh
c2gNCj4gPj4gU2lnbmVkLW9mZi1ieTogUGVpIFhpYW8gPHhpYW9wZWkwMUBreWxpbm9zLmNuPg0K
PiA+PiAtLS0NCj4gPj4gIGRyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMg
fCAxMCArKysrKysrKystDQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pDQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yZW5lc2Fz
L3BoeS1yY2FyLWdlbjMtdXNiMi5jDQo+ID4+IGIvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNh
ci1nZW4zLXVzYjIuYw0KPiA+PiBpbmRleCA5YTQ1ZDg0MGVmZWIuLmZhMGU2ODBhNGI5MSAxMDA2
NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYw0K
PiA+PiArKysgYi9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jDQo+ID4+
IEBAIC0xMDY3LDggKzEwNjcsMTYgQEAgc3RhdGljIHZvaWQgcmNhcl9nZW4zX3BoeV91c2IyX3Jl
bW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KSAgew0KPiA+PiAgCXN0cnVjdCByY2Fy
X2dlbjNfY2hhbiAqY2hhbm5lbCA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOw0KPiA+Pg0K
PiA+PiAtCWlmIChjaGFubmVsLT5pc19vdGdfY2hhbm5lbCkNCj4gPj4gKwlpZiAoY2hhbm5lbC0+
aXNfb3RnX2NoYW5uZWwpIHsNCj4gPj4gKwkJLyogRGlzYWJsZSBPVEcgaW50ZXJydXB0cyBzbyB0
aGUgSVJRIGhhbmRsZXIgY2Fubm90DQo+ID4+ICsJCSAqIHNjaGVkdWxlIG5ldyB3b3JrLg0KPiA+
PiArCQkgKi8NCj4gPj4gKwkJcmNhcl9nZW4zX2NvbnRyb2xfb3RnX2lycShjaGFubmVsLCAwKTsN
Cj4gPj4gKw0KPiA+PiAgCQlkZXZpY2VfcmVtb3ZlX2ZpbGUoJnBkZXYtPmRldiwgJmRldl9hdHRy
X3JvbGUpOw0KPiA+PiArDQo+ID4+ICsJCWNhbmNlbF93b3JrX3N5bmMoJmNoYW5uZWwtPndvcmsp
Ow0KPiA+DQo+ID4gV2hhdCBhYm91dCBwZW5kaW5nIHdxIHRoYXQgaXMgc3RpbGwgYWJvdXQgZXhl
Y3V0ZSBhZnRlcg0KPiA+ICJkZXZpY2VfcmVtb3ZlX2ZpbGUoJnBkZXYtPmRldiwgJmRldl9hdHRy
X3JvbGUpOyIgPw0KPiBIaSBCaWp1LA0KPiAgIEkgZG9uJ3QgdW5kZXJzdGFuZCB3aGF0IHlvdSBt
ZWFuLiBjYW5jZWxfd29ya19zeW5jIGlzIGV4YWN0bHkgd2hhdCBjYXRjaGVzIHRoaXMga2luZCBv
ZiBwZW5kaW5nIHdvcmsg4oCUDQo+IGl0IGVpdGhlciBjYW5jZWxzIHRoZSB3b3JrIHRoYXQgaGFz
bid0IHJ1biB5ZXQsIG9yIHdhaXRzIGZvciB0aGUgb25lIHRoYXQgaXMgY3VycmVudGx5IHJ1bm5p
bmcgdG8gZmluaXNoLA0KPiBhbmQgaXQgaXMgcGxhY2VkIHJpZ2h0Lg0KPiAgQ291bGQgeW91IGV4
cGxhaW4gaXQgaW4gbW9yZSBkZXRhaWw/DQoNCkFzc3VtZSB5b3UgcmVtb3ZlZCB0aGUgZmlsZSwg
YW5kIGJlZm9yZSBjYW5jZWxfd29ya19zeW5jKCksIHRoZSBXUSBnZXQgc2NoZWR1bGVkDQp3aWxs
IGl0IHJlc3VsdCBpbiBVQUYgYnVnIG1lbnRpb25lZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuDQoN
Ck1heWJlPz8NCg0KcmNhcl9nZW4zX2NvbnRyb2xfb3RnX2lycShjaGFubmVsLCAwKTsNCmNhbmNl
bF93b3JrX3N5bmMoJmNoYW5uZWwtPndvcmspOw0KZGV2aWNlX3JlbW92ZV9maWxlKCZwZGV2LT5k
ZXYsICZkZXZfYXR0cl9yb2xlKTsNCg0KQ2hlZXJzLA0KQmlqdQ0KDQoNCg0KDQo+IA0KPiBUaGFu
a3PvvIENCj4gUGVpLg0KPiANCj4gICA+IGFmdGVyIGRldmljZV9yZW1vdmVfZmlsZS4NCj4gDQo+
ID4gQ2hlZXJzLA0KPiA+IEJpanUNCj4gPg0KPiA+PiArCX0NCj4gPj4gIH0NCj4gPj4NCj4gPj4g
IHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2IyX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2
KQ0KPiA+PiAtLQ0KPiA+PiAyLjI1LjENCj4gPj4NCg0KLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

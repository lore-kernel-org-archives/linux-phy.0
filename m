Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00F65CD1292
	for <linux-phy@archiver.kernel.org>; Sun,  7 Apr 2024 22:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Content-ID:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KkRslPekI7J9bq9uQuRVc7uWOzz+wvj2QRDhAvoJRF8=; b=bcfRsBdW2zQ6fE
	nMhQzugqTC04OWXNdQFTZvSLkqnMMAVDdZ1PwCC+sSwpMLKDI7AHJWIBrBXJW70tVwSpZm1e0FbsA
	7oEtNLVircELWCajYJXLeB+Xqmq+bdG1xSElP8O+TRhxA9cgK8Xg8ORIePVmcVcrpu/6PpIRN0lvi
	5+9+zTjJubK6E1YOeq8dronB7M1wprQdbhsHnk6k5tz6tvQUNmjmJb2jkMtwoN3z+Uwt18iVK2iNk
	hI9ErhDKgsa+01lbRN0etptwtEAFZ9Oaf5ZZQr7f3sG9d4r0w1+8DqWDBqg+/Eq7K/zfQEqW1FLyI
	Z5AUzPLNzbz/Vv9Egy6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtavm-0000000Ddnx-1tOp;
	Sun, 07 Apr 2024 22:24:06 +0000
Received: from de-smtp-delivery-113.mimecast.com ([194.104.111.113])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtavi-0000000DdkY-1bRr
	for linux-phy@lists.infradead.org;
	Sun, 07 Apr 2024 22:24:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com; s=toradex-com;
	t=1712528640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=adVKy/H8WsqLvQzFCUivl9uSQpztqTQVQW7g+gg+8Yw=;
	b=Q4J/cGNTQZoRv08K8zlViC0wUjRyEffp4N3p/idJc183DSSePiGStghUqmXyFKn17YNMol
	wR+A0J+QWC87TqCJhKaSzcVmV1Z+YiUx3g1h/IBv8+dFkixN2Cea70BdmzIhl3i0B1UHDt
	o87cQjIXe4eKJ244wbq5A/4ljZkQWus=
Received: from ZRAP278CU002.outbound.protection.outlook.com
 (mail-switzerlandnorthazlp17010000.outbound.protection.outlook.com
 [40.93.85.0]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-38-Vm-Fo3lEPw6mSLn2fNRhqQ-1; Mon, 08 Apr 2024 00:22:15 +0200
X-MC-Unique: Vm-Fo3lEPw6mSLn2fNRhqQ-1
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:3b::9) by
 GV0P278MB1096.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:4f::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.46; Sun, 7 Apr 2024 22:22:13 +0000
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ff81:7388:f0a:3555]) by ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ff81:7388:f0a:3555%7]) with mapi id 15.20.7409.042; Sun, 7 Apr 2024
 22:22:13 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>
CC: "hongxing.zhu@nxp.com" <hongxing.zhu@nxp.com>, "linux-imx@nxp.com"
	<linux-imx@nxp.com>, "robh@kernel.org" <robh@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>,
	"l.stach@pengutronix.de" <l.stach@pengutronix.de>,
	"yang.lee@linux.alibaba.com" <yang.lee@linux.alibaba.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"tharvey@gateworks.com" <tharvey@gateworks.com>, "shawnguo@kernel.org"
	<shawnguo@kernel.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "mkl@pengutronix.de"
	<mkl@pengutronix.de>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "imx@lists.linux.dev"
	<imx@lists.linux.dev>, "festevam@gmail.com" <festevam@gmail.com>
Subject: Re: [PATCH v1 0/1] phy: freescale: imx8m-pcie: facing pcie link-up
 instability
Thread-Topic: [PATCH v1 0/1] phy: freescale: imx8m-pcie: facing pcie link-up
 instability
Thread-Index: AQHafFngyrWKa5u8Ykil67wkqf0VGLFbDhgAgAJtRYA=
Date: Sun, 7 Apr 2024 22:22:12 +0000
Message-ID: <ae96ab05b47f9788bce1c8df5a795b35e16a629c.camel@toradex.com>
References: <20240322130646.1016630-1-marcel@ziswiler.com>
	 <171239511427.352254.8525089049107113141.b4-ty@kernel.org>
In-Reply-To: <171239511427.352254.8525089049107113141.b4-ty@kernel.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZR0P278MB0683:EE_|GV0P278MB1096:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: wSPHqT4QtidIiMhJmheLZFI4cw7n2xZw9IgZ6lIWg2pnYK7wAk5tVV9WPB5PoFWke9WLaKyKfHwOvF+Tcs3zOKsBKXcOdLaO/hZYqdL8EWMiUGgFb8xb6GujON0KELx2aKlK2wcnN2qsijltJ0kTP5bHEBgmmutLvMwMcO920V5tPwYalo/BWCsKnmUm5ZDvBgGTnXyri28uhwqUgXqUXlqgshX7Xmn/3Te+6CcaTVaz6t/mZkSacgN25THUMMVTkotw6jNqt5QiApjfSCrYIPMTyZRHR31X68aZ+tIVBJb/ryb6NFBjDiBjpOIfb9MVpmYGixvBBe/HiBf68uCLyOHlqp5drTjVmv4Kkcnb7jgSP21MHxsJkTnQZOUHv3afFeZ4GKD4fvI2XUf8pusQRloLqfiMh5xEGICjLYEiy/PXSOo13f7NXpC5dDMDjPc0W/rguz7MzUiw9QHyU/0CRqKLqGQ87QrdBibJb41tLc+IeoSSsdI3vfdmgPjPJs952+rM7E865Sb/eoksAgB+mX8MS8Rs9CHgTTdZ8UCpLvj9/lzFNWO99j7pnibt7UKEbyOapEMYVuYjBytGAU65mXda6AfR74tKA9HxxbYTo1Arf5wz04hsAr+GQSDSyNQZ6AUpAm2P8i7eVAmjg/W49KiOKkuPda1d1yblZ0jQ+W0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376005)(7416005)(1800799015)(366007);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QkdlUG0vQlo4TTlsZjIrWXVIR2dWTnoxYVJSbFI4YjE2QzZYbllaVnBJNHBE?=
 =?utf-8?B?ZzhaeC9yTHc5K2Z4OWx6YXgvSU5UcTU0WnNwdWN0bVBhZk9DMkYwM1ltc1dv?=
 =?utf-8?B?OXlkMHRNenlsUHY3QTA0R01SK3o5WHhocC9tazJsMENoV3JRUERCS1U0c0w4?=
 =?utf-8?B?VHZmZVJYUC9zdUJSRFk1UVlXZVFaMjJmR1E2M29YV0NPV251UGhPdjlqZ295?=
 =?utf-8?B?N3FJbWx5WTlLUFc3YWRzRXBoUWxXdTBiRFB3VEg4dVlJUFhEbVBuWW91L2FT?=
 =?utf-8?B?bWxwY1dXOEE4S2xkcFROa3JpaUJiVFBHVms0ci9CTlFOa01ybXpCRmg0SUJV?=
 =?utf-8?B?VTJ3cDdWZFplenNjdEZTRnMwSG96dXlwVWZSSDRmRngxYWx6VEZOblVhajhv?=
 =?utf-8?B?eWJ4WDk3YmNlRmVXU2xDMk0xSW5CK2xtcnptUGpqVnUwTmxkTG1QYTJ0RkR5?=
 =?utf-8?B?Y2dNR1NJdENFdUN1bmNtUzJMbTFvQkRqRFZDZ1NpZ2ZUUE9iTmJYTTVCRlUz?=
 =?utf-8?B?YTlpYnkwa3ZPY0E4NW9PUlYzMXp1WUpMY0FCcUdZWEFnLzFUeGJXUzdxcXl2?=
 =?utf-8?B?NjdtUU9sM3Exc2ZWL3ZWVGl5NWF3OVNzUkEzYm95VnFMZ25NcHVKemJHSUhB?=
 =?utf-8?B?cllBZ09IZjVZejM3T28zT2NlMjJhU055QkVxa3RsLzlheW9uQmJKZnVmMEpq?=
 =?utf-8?B?ZkdLRForQ05NYjg5ZkpwdDltNXpralZNM0JNc1RCRThVM1V3bC9KVUoydUY5?=
 =?utf-8?B?NmhKYVpyaTBmQ3psdTJzUG4yYXR6VVlLVzc3OWdwN1JCaWMyS0J5MVk1aXEz?=
 =?utf-8?B?YTdSQlJUbUgveW5LTWkzYklJN3RHb1lyMlVONm5sUWdTM1lGQWhSZGNzeUpz?=
 =?utf-8?B?V09KcDVxcldnbGwwL1BTYXFNSERYSU16azRIQ3dzY3lUT3h3a09TMlNRampk?=
 =?utf-8?B?bERKYUE2NlpSamhxR2Y3VkwxOXdZMDQ5RmxLVGVCVkFJU1VFV1ZtN0s3WElJ?=
 =?utf-8?B?eWd2ajNsd05wbGZhdEFXY05kbTk2OW5uejlJKytFWUJCNWVoVEhiSWh0TXhL?=
 =?utf-8?B?ZytYVm11R1hVV2VlSW1SSjMvTWN6bUJtdHpDek05TEthcTc3OEdYaXNZaXYv?=
 =?utf-8?B?ckIyQzNQdENjUkx1YXVjRTBYY3NTNHQ2ZjAyL2lFTTV1ZjJyai9LOHB6VDhK?=
 =?utf-8?B?aWx5cWcyNFI2M2piQ1pQOEgza21vdGlaMnlMTmVLL3dkWXVLck5DQ3BrYTZP?=
 =?utf-8?B?UHU4clh2WG5sR3BpYUFQL0wyOW8yZkRvOFVrUTEvOFE3TDRteGMxUkNZY0tx?=
 =?utf-8?B?cDl1dGVpNnRwKzdtR0FXaVYwekJxNG5FeGwzc1FYVlhobllISVMxTzFvWTVM?=
 =?utf-8?B?WllpN3hDREVjUzF1ZHh4bFgvR1NOaUJXRnpHY3VFWGh1WHZUemtheFpITUlF?=
 =?utf-8?B?UGU0QlpDRnRmdkd0amhwUExyZUVYVXJaWGRwVklzQUZVbUVwaXJhU0FnZlVR?=
 =?utf-8?B?TzlrMTgyQkg5eGtSM0ZkL0pydFJaTTN2ekFpbmFhMi9ScWRjS05iUzZHUXJT?=
 =?utf-8?B?N0RsZU5HQkNwWEZSUFZRV29BT0s3T0cxL1Rja0JZc1UwWG1CNlV6NWgzZnAy?=
 =?utf-8?B?ckt5Ly9KbTNhM283aWxrSjB4Rm40ZjhreVk0YUFNQ2Rwc0djL0I3YUpPN2da?=
 =?utf-8?B?UXJnZkVuYXBvWnArazhJMUwvVC9WOStvRmdiQTZxenJFK1VCYlN1RDd4cHlF?=
 =?utf-8?B?eGlyREhvVGc0TU43Y3BpOHA1SEpPUjVDOG1pa1FBV3Vzb2YvQUxYREp4a2FV?=
 =?utf-8?B?NkZkS2VYY1c1Rm1vUjFVZk1Yd1JmNmxiY28xdi90a1dqSVp2ZEp6d0JPdERv?=
 =?utf-8?B?N3JrYmtYUFJyVXFDTHpCMUQzMjR3bms2Rmd4czQ3bVdhWHo0bUNGSmtEZ2pP?=
 =?utf-8?B?TmZYZ014aUxXQUMwK2ZNNWdJR2pacVdtc2lSdjlJVVl3eXRmZGpQbnpkNEMy?=
 =?utf-8?B?bDA2YlU4WERPY2FUWWVXMStYQXpjeVZBUmF6VVRyOTZONUI0ZENFQnRlSFFZ?=
 =?utf-8?B?ak9hWDl5Si83N0JxU3JaYUhqUzZmamhSUGhmNUFscXl1bjhPZFA5aWtEWlVR?=
 =?utf-8?B?OWFRZ1BRK3VyajFuSnFBNlZVaGNDV1lyQ2lvbEtWSU0yTHFtcmRFMTJzK01i?=
 =?utf-8?B?T25CVEZSa1JRNmdEUnVoV0trUnpBNjdCMnZSUkZNVjFtd0xENTNRRlNiQWJn?=
 =?utf-8?B?TCtRaCs5NHkrR3l3OCtKVjZzWHd3PT0=?=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 91eaaa3b-541b-415a-38a2-08dc57512c7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2024 22:22:12.9725
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EcZj2n8tZyqdCWEITAq1HKMx0Lu9LOd5KS9gmU6a/QBJPHoavXf0ZWru+3Ti25hgGP6cAJLcUUFuWxDSMrEqjhwVT0daraxFc37iOpaRLRQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV0P278MB1096
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: toradex.com
Content-Language: en-US
Content-ID: <AF2BE6C2B09DEB428B9C53EF8071A929@CHEP278.PROD.OUTLOOK.COM>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_152402_648123_D8B4AF09 
X-CRM114-Status: GOOD (  17.86  )
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

SGkgVmlub2QNCg0KT24gU2F0LCAyMDI0LTA0LTA2IGF0IDE0OjQ4ICswNTMwLCBWaW5vZCBLb3Vs
IHdyb3RlOg0KPiANCj4gT24gRnJpLCAyMiBNYXIgMjAyNCAxNDowNjozMSArMDEwMCwgTWFyY2Vs
IFppc3dpbGVyIHdyb3RlOg0KPiA+IEluIG91ciBhdXRvbWF0ZWQgdGVzdGluZyBzZXR1cCwgd2Ug
dXNlIERlbG9jayBNaW5pLVBDSWUgU0FUQSBjYXJkcyBbMV0uDQo+ID4gV2hpbGUgdGhpcyBzZXR1
cCBoYXMgcHJvdmVuIHZlcnkgc3RhYmxlIG92ZXJhbGwgd2Ugbm90aWNlZCB1cHN0cmVhbSBvbg0K
PiA+IHRoZSBpLk1YOE0gTWluaSBmYWlscyBxdWl0ZSByZWd1bGFybHkgKGFib3V0IDUwLzUwKSB0
byBicmluZyB1cCB0aGUgUENJZQ0KPiA+IGxpbmsgd2hpbGUgd2l0aCBOWFAncyBkb3duc3RyZWFt
IEJTUCA1LjE1LjcxXzIuMi4yIGl0IGFsd2F5cyB3b3Jrcy4gQXMNCj4gPiB0aGF0IG9sZCBkb3du
c3RyZWFtIHN0dWZmIHdhcyBxdWl0ZSBkaWZmZXJlbnQsIEkgZmlyc3QgYWxzbyB0cmllZCBOWFAn
cw0KPiA+IGxhdGVzdCBkb3duc3RyZWFtIEJTUCA2LjEuNTVfMi4yLjAgd2hpY2ggZnJvbSBhIFBD
SWUgcG9pbnQgb2YgdmlldyBpcw0KPiA+IGZhaXJseSB2YW5pbGxhLCBob3dldmVyLCBhbHNvIHRo
ZXJlIHRoZSBQQ0llIGxpbmstdXAgd2FzIG5vdCBzdGFibGUuDQo+ID4gQ29tcGFyaW5nIGFuZCBk
ZWJ1Z2dpbmcgSSBub3RpY2VkIHRoYXQgdXBzdHJlYW0gZXhwbGljaXRseSBjb25maWd1cmVzDQo+
ID4gdGhlIEFVWF9QTExfUkVGQ0xLX1NFTCB0byBJX1BMTF9SRUZDTEtfRlJPTV9TWVNQTEwgd2hp
bGUgd29ya2luZw0KPiA+IGRvd25zdHJlYW0gWzJdIGxlYXZpbmcgaXQgYXQgcmVzZXQgZGVmYXVs
dHMgb2YgQVVYX0lOIChQTEwgY2xvY2spLg0KPiA+IFVuZm9ydHVuYXRlbHksIHRoZSBUUk0gZG9l
cyBub3QgbWVudGlvbiBhbnkgZnVydGhlciBkZXRhaWxzIGFib3V0IHRoaXMNCj4gPiByZWdpc3Rl
ciAoYm90aCBmb3IgdGhlIGkuTVggOE0gTWluaSBhcyB3ZWxsIGFzIHRoZSBQbHVzKS4gTWF5YmUg
c29tZWJvZHkNCj4gPiBmcm9tIE5YUCBjb3VsZCBmdXJ0aGVyIGNvbW1lbnQgb24gdGhpcz8NCj4g
PiANCj4gPiBbLi4uXQ0KPiANCj4gQXBwbGllZCwgdGhhbmtzIQ0KPiANCj4gWzEvMV0gcGh5OiBm
cmVlc2NhbGU6IGlteDhtLXBjaWU6IGZpeCBwY2llIGxpbmstdXAgaW5zdGFiaWxpdHkNCj4gwqDC
oMKgwqDCoCBjb21taXQ6IDNhMTYxMDE3ZjFkZTU1Y2M0OGJlODFmNjE1NjAwNGMxNTFmMzI2NzcN
Cg0KU29ycnksIGJ1dCBpdCBpcyBzbGlnaHRseSBjb25mdXNpbmcgd2hldGhlciB2MSBvciB2MiBu
b3cgZ290IGFwcGxpZWQuIEkgYmVsaWV2ZSB2MSBidXQgdGhlbiBvbmx5IHRoZSBjb21taXQNCm1l
c3NhZ2VzIGRpZmZlci4gSG93ZXZlciwgcGxlYXNlIG5vdGUgdGhhdCBvbmx5IHYyIGluY2x1ZGVk
IGluZm9ybWF0aW9uIG9uIGhvdyB0byBwcm9jZWVkIGNvbmNlcm5pbmcNCmJhY2twb3J0aW5nIHRv
IHN0YWJsZSA2LjEueC4NCg0KVGhhbmtzIQ0KDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gLVZp
bm9kDQoNCkNoZWVycw0KDQpNYXJjZWwNCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

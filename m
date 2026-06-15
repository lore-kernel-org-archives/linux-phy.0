Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CB3DCD98DA
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 10:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSEM5EgNC+blasn+8yOg/g+ASNKSteOze4dY3fkpd7M=; b=yvPQw0IO6dN04h
	YSa/AOOalFU1EeDqP+Zpr1karLmWAJQQR8cNADXc04KAG4mCcTeHrPL09EwIpZ4MbMA2wN0KZSlwD
	2zCpDLNxtu1P7/8wMnSa1VoMMNmBSCQh+f0ZfqkkO3BjzSbyZcibZe+JanGC8puy+t2NbWMTxRIFQ
	xPGd5StOexLsWo/1jHAOsGLr4woR9JtatX6aGhQik/vht6Xh2PFk7BrQrvJlhit5KN9lO3tLxwLw+
	vJa14+9VbKOS5C0AHWXO0feWv7cYYcOzPjx2hWZ3oVsi4RlViyjTqW/8lLtoaxcpY9VTeuzwQTuBQ
	F4FmiiJJzol85D2eNaYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ4Sj-0000000E2x5-3YEO;
	Mon, 15 Jun 2026 10:22:37 +0000
Received: from mail-japanwestazlp170100003.outbound.protection.outlook.com ([2a01:111:f403:c407::3] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ4Sg-0000000E2wf-0Mof
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 10:22:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pLTWaCZYVAfkFyA9W0PtkwXuw7Yh3m7YUsInbWBAfE4JaT2z2JlDzmBeEt1IQOm7FcZwDuavTtfPzEB5sxtVdWRFUt75uk7iyuVYKdKfsDhdKsgPj4EuZ+ixRz9ifknSeCQzUxPt8YUUOTevNni89Ays0FnjtoS2jZaqH2/rBvs5m0X6oDE7OuvXqbltGvMeh3Gp3yxFvzoqU5dmvheQ9vgSWuPvANKcRaq2B0jJqxfOrtEj57/e7oiAGYeXuj0hBZtyAG7AvWOmQ619vytyqR/+RSafK3mUKsEx7TYfyGX97hLZECpqahzJLn0pDV9LUpcMUt80pSRfNbt7fUdOmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xc1WHRwXE8nDG3P5YX55Cmr7t9sIgtwS2vcpA60bM78=;
 b=EwwxTQzb5chA2OeyyPF76wuZtVvMecytJdFAPfc9bpxp9AfnBWlsxM8Ez1+Grj0iSKdIbSh0srXzXz4QcYVpS3XA8X20PB9fWnU90GJzf6Lf/w0yUiRYKMyA+qNjLAKcPM5iVpUwSNgnpwriQyZhsUYCz3a/iBiJ29ot/OJ7uXx7eXzBgUNzGwoQ7rD6UVa+Rj/+ibzjmSNJ7UjHf7TcaY3p0pt8cizCj3vsK358IJ95+Q9ns07A1KBwLa2x8EUfA8TuXWXpdVSTIVqZ79b8pTAhbzGQzAcXTOGeDcJec0vGqvhBiQJgwSLMOWATfdbICWKCEl1ToqFirBo+j5MTtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xc1WHRwXE8nDG3P5YX55Cmr7t9sIgtwS2vcpA60bM78=;
 b=qciiybwemOctxfuf2RH11Vn0+B4+qKx4DdBWOSgXcq5YCBgm215y0+gTtmTPWvuwt2JOXyANx+SwTu4Y+vLg34fLKbg1DN1HJ9an0AjEbxDCS1vp/x5RX/PbuEoMktDYsuMQzk/CtEZZCneLU57YjgWQA3KX/hcjFZcEJeRK69c=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by OSZPR01MB7036.jpnprd01.prod.outlook.com (2603:1096:604:13e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 10:22:21 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de%4]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 10:22:20 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>, biju.das.au
	<biju.das.au@gmail.com>, Yoshihiro Shimoda
	<yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, Geert
 Uytterhoeven <geert+renesas@glider.be>, magnus.damm <magnus.damm@gmail.com>
CC: Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Prabhakar Mahadev Lad
	<prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: RE: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action
 registration for disabled VBUS regulator
Thread-Topic: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action
 registration for disabled VBUS regulator
Thread-Index: AQHc+ngaWA394/baeES91naIfR5habY/YB4AgAAHtfA=
Date: Mon, 15 Jun 2026 10:22:20 +0000
Message-ID: <TY3PR01MB113466284D6307E1967286AC486E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
 <20260612143048.317907-10-biju.das.jz@bp.renesas.com>
 <2b794049-0c44-4390-a6cd-e5bde5c5f3ca@tuxon.dev>
In-Reply-To: <2b794049-0c44-4390-a6cd-e5bde5c5f3ca@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|OSZPR01MB7036:EE_
x-ms-office365-filtering-correlation-id: 154a8e48-7832-4da4-09fe-08decac7fbf0
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|7416014|376014|366016|1800799024|56012099006|11063799006|4143699003|6133799003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: 7jLMnFpZdBwZLTDoqsNwp/9s7tpVuL7qfaaHAWLOKmi5lM7WJoXS8oM1YPpzYDLnZOGEGtzsRDjIyYqMz/KhcDZ5OSlYtn9kgdFnubBvUMh4TYyQ+qkohnw9C+1aHihyQ943e8YLEXo9+fkVugXIy2QNTzQAd4b1wGQ/bYMWn9QRNrxXAsV1EqOo0fMsfNTgYh7nFcO4PqhaTvU0tDGiV/3o5cx4gddwoNSl37dOnnMoWZB8SSr2ulYobv6eNTRHbC7wsqDAK03w4YFDddfTCVQOFxG7+iCRnMZKkZu5+nprNY0fLymuJ/mtqpLYNsE8FwoR5K+s+rNtwSscfY7a3J35KjQIyKtBxVjN8h77cp+YBdax1zYK1ibiLRJRr1CU5+W6G8icX6xSQuRYT8hKElVPkjYj9+L64jlmQ+D5dSJwjSxO3HyxoUb89KkQ0ZwvT67sYDNI8Re7UeWnQfLGXMq9R7ZK/OVBidvFD//VaTiOcYXT1XuJY1+OGDnkg86CE8/1AJMvZSGLstNDU+Bj88QfMp0BIXFvT+hKMQEVt1peGaDhH6GrH5UJbVSz2O/vNO94za0Sx7dS54K1/P65Xms3q2ruUF/qmZ/guX3bolyc27SksHrVOlZ76RadDm862e6PGDdhGJHuU30LJ6LbAId7RoC7puxW9U1f6pItyne3WK/HrswUtHn3xhHTRAKVv8W5H+InNq5Qga8Tq8FJnLRIM5utekTTY1+KRZM48TgN2v8n8U5/ytRxltjyTqbz
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(7416014)(376014)(366016)(1800799024)(56012099006)(11063799006)(4143699003)(6133799003)(38070700021)(22082099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?STRVZC9OK1A3VGsxbk8rM05hUUJDbnBTR3ViMEl0QmRVU1ZqOEx1c0RUZFht?=
 =?utf-8?B?U1diSDgvYjk4eEh1clV4UDlscnh3VHRtdGJJR1lwOWFvNG9MeU1laG1BRHZS?=
 =?utf-8?B?SnZ4WW1yWFhwT1NlZStoV2pkKzhzNXMvTytDR2VTdDlLK3NubzJCRzRHeFlE?=
 =?utf-8?B?dGhrTGE1Y1R3ZXhmUWNZenVSR0ZYZW9PemFqL05SNis4cFVMRExHWms4bGtT?=
 =?utf-8?B?SzBOR1dkeURqRmJqRGo1UVhJenVCcXQ4Z1Q2QzdqdGMyZFlJbWVoa0JvT2NK?=
 =?utf-8?B?c3hHcUdRd1FXTGRmMDdOV3lSdkhPb1pnczJtb3ZtS2xocnMyNEdXdFNNbS9r?=
 =?utf-8?B?TVprbFdLSDJwSHhPYTIrYThNVXBMU2ttNjlmR1BvU0pRY294WUVjSC82cFRi?=
 =?utf-8?B?bVk0Vng0OWdiQ2JqbGVTTndLdHRGWkQ5b0RMb3VWa0NjREJkSmZnZ3BZa2Nx?=
 =?utf-8?B?eGlMNkNWNTNmTEVDL3RqTjlGT3kyL0V1TkRVN3llYnI5U2JXNDNRT0hQUlVq?=
 =?utf-8?B?SGZobTQvcHB1cGJ2d0tBNVhxV3JqNER5c2tSb3AzazB6NXpIRE5XRDM4VkVO?=
 =?utf-8?B?K2tmamJUWlZxa3BCd1lmNjdERzZHYUY5d05aQVh4dHMzNWNKQzgyMnRiZExQ?=
 =?utf-8?B?RlFqbFdUbk10eURTaGNBSlFCQmxSQm03WGtZUDc3UmVYa3prUURib1pORW1B?=
 =?utf-8?B?WVBqZnREQjNQaUVVckdHbHZVdG50akRVZUVzTjFscmN5SXlNY1NaK0hKaXR5?=
 =?utf-8?B?L2FzNEROZHozdnBwdmFJYWF2SGtPdU9PMGhRd0xZUHBnaUt0dFVFaENESlhW?=
 =?utf-8?B?MDlhM0ZScVdidXA1RnYrNUNZWjVPNmpTQnk5YjlncGVMR250V0hCWVd3WE95?=
 =?utf-8?B?ZHFlVTlHZVZLcHlaVnlCVnREaktuaTRvQklXbEdzOXYzejNnQStrVlAzd0tn?=
 =?utf-8?B?S3VoWEVjR1dBbks1RVlDVGtyMmZ6cHN1TkYvZXJQY2krY0taSTlRQUFScDJF?=
 =?utf-8?B?dGt4b2JPYUl6dmsvTDRjbk5QWTczVmhhVlVVNlhxWGkvVG03UytoWEUwb2VC?=
 =?utf-8?B?bkFYNm95MTZzbjdDSGhtSEJpaFBMOFh6UUZLUFhhTHVhZ0p1NWF3ai9MaTFs?=
 =?utf-8?B?VURwd0N6aTQ5WFJGTnU2dGc2Ri9IZjVOUWdBaHVaS0xaMThFMCtlSFFYUWFl?=
 =?utf-8?B?SUZ6YzM3YVpQT0tPVGFTaWpZZnFEalYzNC9UK3VhcEJMczlDcWtUcVRPa2dD?=
 =?utf-8?B?NjVaL0JCdU9uTmFGOW5BUFBJVS9vZ0RhaWQxMkVidXJ0R1ArY3JSS0tlQ01P?=
 =?utf-8?B?SjRwQmVvM0VSS2lkM2lwTkdyQ0lSUU1JZ3EybU1BWXhCVTBxUFNhOXJmano4?=
 =?utf-8?B?ZDM4dUx6djR3ZnJacUpYcjNnaDVKSktML0l5Q0gyeitNR1FhUjhXQTFneWI2?=
 =?utf-8?B?UXhhd3hCNlpKdkVwb0VSVGtQOFA5U3ozeVpaNFgxYjdHL01JbkhrdzlkQk5V?=
 =?utf-8?B?VlV3VGxTakZPYWsramVONGJacit4aVZRQTBBYlFFK0NzRUZVc2RUc25wcDFj?=
 =?utf-8?B?RzR6SXhpVkUxdGRjTlQ0Tzl6d1VjTTdtdyt4SkhGNE5ONGZ5ajVBZHJTNmVC?=
 =?utf-8?B?cTZHRmVobkFsbEVtZjRFRHhPczFUZ1VmWXZsTHBrNEdDV2pZK3RZZ0hmU3Mr?=
 =?utf-8?B?bnpQaGl3cGEzNi95dzJwdzN6STVRZWpBa2ViMG81ME41Y0lFcUkwTTl5ZXBO?=
 =?utf-8?B?US8zYXhYVlEzUVdyWXlHbXJoM1FibHlhL1JVYjlSZGZCQ3lKSU9tQ0ZnYkEr?=
 =?utf-8?B?bGh1U1o2V2FvVTd6dGhvSnFHaFlRUXU0V2phbUhicXB0L2dOOERHNE5XeG1a?=
 =?utf-8?B?YVBzWlVLYm9seVZBRTBQQjVBY2hSN2lNK1ZOcnc0ZURHUkRkMTFvZVhhUE0y?=
 =?utf-8?B?Q093TXdtOHkwV2JtTURITTNzWk9SRmV4c1JITUJuWGFWZkxzZnczeWZnVkJp?=
 =?utf-8?B?KzZSME81VDFDQ09CYXhvL3JYbnJkbVE2alpiMklZcnhLblpLT0NrNFFCR005?=
 =?utf-8?B?YUJpTFk1U3FQVU9BdTEzRndJQTk0ZGRuVGJQcEgvNVBQdWl3OUhMWnBXNyt5?=
 =?utf-8?B?dllqVi84aUtaS0JZdEZlc2pvNjh2bVhuTENTVG1zNWdPOXk5enp0UXJ1bERU?=
 =?utf-8?B?UldUSnY4aFByOEVDMUlkMDR6My9oRHhRVlZ6ejB0Y2pac1J2UFZsai8vK283?=
 =?utf-8?B?QlJxM3c4WUxFZWNvRDRGczNrRmErNnJIakIrSkVZS0g0QUwxMXhuS1dNclox?=
 =?utf-8?B?bEdnMWg3ZmpJeDU3WFhzOUJ5WDVBdWlPeTQvb2JUL0xidE8zaDdTUT09?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 154a8e48-7832-4da4-09fe-08decac7fbf0
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 10:22:20.7096
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zHyvA0HkgDuBu+1kcZfvRoB9u8lHrgOm10LVjx8V+yN9OnYu0QWfQt3oxndcKvDGr4heaIOJWquFBxj7pjAEbeXu81jP6UJ7OpJMxoLI1vg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB7036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_032234_756394_32BC1D06 
X-CRM114-Status: GOOD (  19.74  )
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

Hi Claudiu,

> -----Original Message-----
> From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
> Sent: 15 June 2026 10:37
> Subject: Re: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled
> VBUS regulator
> 
> Hi, Biju,
> 
> On 6/12/26 17:30, Biju wrote:
> > From: Biju Das <biju.das.jz@bp.renesas.com>
> >
> > devm_regulator_get_exclusive() initialises the regulator with
> > enable_count = 1, requiring the consumer to disable it before release.
> >
> > Previously, the devm disable action was only registered when the
> > regulator was explicitly enabled, causing the cleanup path to skip
> > decrementing enable_count on device removal when the regulator was
> > left disabled.
> >
> > Fix this by always registering the devm disable action when the
> > regulator is enabled (checked via regulator_is_enabled()), covering
> > both the explicitly-enabled case and the initial state set by
> > devm_regulator_get_exclusive().
> >
> > This fixes WARN_ON enable count during regulator release.
> >
> > Fixes: 24843404efe4 ("phy: renesas: phy-rcar-gen3-usb2: Control VBUS
> > for RZ/G2L SoCs")
> > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> 
> The approach in this patch don't solve the problem, at least on RZ/G3S. See [1] for logs.
> 
> I applied this patch on next-20260610:
> 
> git log --oneline -2
> afe09f11d549 (HEAD) phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled VBUS
> regulator
> abe651837cb3 (tag: next-20260610, linux-next/master) Add linux-next specific files for 20260610
> 
> [1]
> https://github.com/claudiubeznea/logs/blob/2f1bab20407dfe6031385819ffeabfc4eac772bd/logs

I have tested only with RZ/G3L host and I don't see the issue.
How can the issue be reproduced? It could be related to RZ/G3S.
I have executed the following tests and don't see any issue.
Can you please try the same tests on RZ/G3S?
Is unbind/bind ever worked on RZ?G3S previously?


Test1: Host unbind/bind:
cd /sys/bus/platform/drivers/ohci-platform/
echo 11e10000.usb > unbind
echo 11e90000.usb > unbind

cd /sys/bus/platform/drivers/ehci-platform/
echo 11e10100.usb > unbind
echo 11e90100.usb > unbind

cd /sys/bus/platform/drivers/ohci-platform/
echo 11e10000.usb > bind
echo 11e90000.usb > bind

cd /sys/bus/platform/drivers/ehci-platform/
echo 11e10100.usb > bind
echo 11e90100.usb > bind

Test 2 Function unbind/bind:
cd /sys/bus/platform/drivers/renesas_usbhs 
echo 11e30000.usb > unbind
cd /sys/bus/platform/drivers/renesas_usbhs 
echo 11e30000.usb > bind

Test 3: PHY unbind/bind
cd /sys/bus/platform/drivers/phy_rcar_gen3_usb2
echo 11e10200.usb-phy > unbind
echo 11e90200.usb-phy > unbind

cd /sys/bus/platform/drivers/phy_rcar_gen3_usb2
echo 11e10200.usb-phy > bind
echo 11e90200.usb-phy > bind

Test 4: Regulator unbind/bind
cd /sys/bus/platform/drivers/phy_rcar_gen3_usb2
echo 11e10200.usb-phy > unbind
echo 11e90200.usb-phy > unbind

cd /sys/bus/platform/drivers/rzg3l-usb-vbus-regulator
echo rzg3l-usb-vbus-regulator > unbind

cd /sys/bus/platform/drivers/rzg3l-usb-vbus-regulator
echo rzg3l-usb-vbus-regulator > bind
cd /sys/bus/platform/drivers/phy_rcar_gen3_usb2
echo 11e10200.usb-phy > bind
echo 11e90200.usb-phy > bind

Test 5: Reset unbind/bind

echo "####unbind########"
cd /sys/bus/platform/drivers/rzg2l_usbphy_ctrl
echo 11e00000.usbphy-ctrl > unbind

echo "####bind########"
cd /sys/bus/platform/drivers/rzg2l_usbphy_ctrl
echo 11e00000.usbphy-ctrl > bind



Cheers,
Biju

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

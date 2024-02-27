Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31AF2C5478C
	for <linux-phy@archiver.kernel.org>; Tue, 27 Feb 2024 12:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgYUUQ8rChGzCLPFXzkcRLUzVEdd78v4e5jk17NVeLo=; b=ZCJn33p6O3YSky
	qWgwjNhpbvDIv+EZ0BNpD+bZ4iYlNp5cJwP4fRzm9Df5NgMmpzF5KL/Wq6lmhytruRLMfG5yfQZ/o
	yEaykKWfhUZSeyZpYc3PgIbFnHjJlzkTdbgWFfyACdlu5T/24/CM4NlL8D0dcMDt8Vxw6iTbcNLaF
	GksNix7rJVEkfdAN9/+Ij5co82xXjc1kZdJhXnxMkLQm0MsVFwI6o+WzeTVHibOgCbd+DwVb3sbSn
	s0GkpKmWJ9+TDfw+ZXWyNkG0Soa/sM3mgMDuYDXm6AsBMhTPGRYB+HQCRNdzDEVcr9wRN1k0fzRtW
	9mQ9RmHhuYCMTlO7hurg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rewAw-000000052fe-2bDW;
	Tue, 27 Feb 2024 12:03:10 +0000
Received: from mail-tycjpn01on20600.outbound.protection.outlook.com ([2a01:111:f403:2019::600] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rewAt-000000052ef-0j3T
	for linux-phy@lists.infradead.org;
	Tue, 27 Feb 2024 12:03:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UUovh3pES8xOXm7yt67fO6G5fsBesln3rbP0IK9VjauIhi7nCw/BxLO5kqMnak+kcnFe9Pgs0L8M7GDM9Dx1L59J9OwP54KX141TndLcVgHXRFWFt4yaxE4Hc+Ow1liQvXqwVZQwLuBAlNiB2FVviUC9SvxVcgi7I93R/PgqyzRihWrFqH8R2iKCIo69pX+xTGVd+DBmOcLCgEI0UBXNvYl21bSIDNk0skPN8VjIL26N4JktWiaalJnOZbYyJrLJJywJDIOu535MJlKIdFqyK3DneztWZ9fFim13KbJttzUbiO+FJiHn7cNzMDECNMOSZAu78DGKX4Yj8S5zYvDUYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IzCISq4qMIzSqLrmRU1vvBB71XVwJ4J34gZq5tpR6CY=;
 b=RXnHI9PbT/JINnPgC8qwvUf8capg7GUd9mQm+zyMEjqNKPSRZED6WkbYSOT1PZ7vYdyX90Jy+lhfLQUWPrxnz7wJ0z/Wjnymm45am2k/pzM+i3cS0aGwi9HK85eUqsLv2KOHO1VZJefjOtGXx4HB4RoQw3SvX9qR2qhLvF7BzJL4ki7kB/Xza0oyYE6JmLctSCR63hpFkkF3y8MrvWh0mpPaImGIh8Zyvi2Y7IVumjTjrojw6JAiMW2vb2xWVXVkLj7Intu5X+k2wh8p5KGApcP+Az4cLLfqslacTA2X8n1AD4N+vxF7/A5HGnpE6ElFDlF7CSszzcqwTxzofyJjNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IzCISq4qMIzSqLrmRU1vvBB71XVwJ4J34gZq5tpR6CY=;
 b=YSj4YiKO9ffDiiI9uD7MNKlWmyV6TPf77cMXVDq9sDKNi/lCdgZIvzMzSInQa2//wjuMdYf9UPDmi5MlY+g4jjyg/k3aCueeShQBJAro/0nhX6HShYsuXFUsngsHvkM1mU7US0Rkz5y9Jf/tHpajOzPTjXie7Ap/8DiIkBhU0Mo=
Received: from TYCPR01MB11269.jpnprd01.prod.outlook.com
 (2603:1096:400:3c0::10) by TYWPR01MB8411.jpnprd01.prod.outlook.com
 (2603:1096:400:176::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.39; Tue, 27 Feb
 2024 12:02:49 +0000
Received: from TYCPR01MB11269.jpnprd01.prod.outlook.com
 ([fe80::6719:535a:7217:9f0]) by TYCPR01MB11269.jpnprd01.prod.outlook.com
 ([fe80::6719:535a:7217:9f0%3]) with mapi id 15.20.7316.023; Tue, 27 Feb 2024
 12:02:47 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Geert Uytterhoeven
	<geert@linux-m68k.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Geert
 Uytterhoeven <geert+renesas@glider.be>, Fabrizio Castro
	<fabrizio.castro.jz@renesas.com>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>
Subject: RE: [PATCH RFC 0/3] Support VBUSEN selection control for RZ/G2L
Thread-Topic: [PATCH RFC 0/3] Support VBUSEN selection control for RZ/G2L
Thread-Index: AQHZiaFfkULG6eflqEaqpA3OKcqzp7Ef1iKw
Date: Tue, 27 Feb 2024 12:02:47 +0000
Message-ID: <TYCPR01MB11269EE1F1FF841AFD999C9AE86592@TYCPR01MB11269.jpnprd01.prod.outlook.com>
References: <20230518155649.516346-1-biju.das.jz@bp.renesas.com>
In-Reply-To: <20230518155649.516346-1-biju.das.jz@bp.renesas.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYCPR01MB11269:EE_|TYWPR01MB8411:EE_
x-ms-office365-filtering-correlation-id: c9729ec6-fa85-4fe6-ee7b-08dc378c03c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fYWoPMrLPI5ZbNhavrtwum1UEnFVtAOlkM3UXjS+r5AXR2HT9FwA7SYkdRugbnHCFYm2KXHu6th8FKWZxfN9JAVYEBk+Tr8s70G7VjGB9Dk17BvQdIWLm9yTgt0DbMxDUVmHLricnpTqtYeOtWrBs0VbypJm4WVY2nOWR4Uc4E1RH4uFJLFOnZzt1+ccfJbtrDw2R2rt/8ylqJP92QKZzbngh9x5njPpJs2gaUBWCXFKHiFzWoY522AkSgm7o7osAFscM2E0zDX3ILTVpcz1r56ll7Qva9nbYITmAstWt8F+wh6qKMq7hAThLjlzDUzB6hVZDpuIZoBcHpzzVR3S1OCx+b+xvgTQpOgv95L8Hj8fuNPxC/hVbtW0s3r3dRljvQIuiuaOcqrl1JNEihYyvdys7tKmImHScp3VwNCWd7nyeOSQbJpqT2+KMUMNu5TmyucUMrttcn+iNKE9sk2/6ol5eXu0uv/PTqnAe9O0i7ckPWhywp1ptwBSaTFYLH/9q+g5Oe/ak3Al6k1sxlzmm8Tp/V7EddR3+y5ivLM/wGtwaquLrFe9ASHSiXEy0ypEeCM/9HAEOnZ1P2zzb7cIj/fYnNBTxpQNU394eN4P30UGAUYwbUr2Wl2g5stC7g15cahlqJT/QC1S61p4DFqGLvWYUBnwgZp22SzWWuCagw+mtHTShDfU0tcSn+okHhU3/OFUoTnRKbb4grDhiBRdWw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11269.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?W7xSHMm1tS4h9Mr9E3Pp//a7/4AThg1vfhe86q+69VSfiDkitvGTcURz4fMw?=
 =?us-ascii?Q?B6sgvPbxsZCW8asEf49iOlgaf7Dx5ZkLYNOr62vFJ60REv2hr/sOQm4mwJBh?=
 =?us-ascii?Q?BFrzZZ7mY/RMs/RdWUhNsewSSoi8BaYoeehp9FpWhTi7KlwxPi/pS6/LP87v?=
 =?us-ascii?Q?NZcYuAYkyl6FSIwebo1Dp7U/ig6L3+7fQ7ioSOp93CTUWjCNj7I+bPLjX/N/?=
 =?us-ascii?Q?B7mlAXlKQbTdenI95W+oVLwsaw4GVtwIJ5gTn3LPDRmPKWOpHl7LhGodKDff?=
 =?us-ascii?Q?P9D9b50IKNDOnUS8wzusd0CzbQkXLt9OmW7WBHa34bOgFVlwUcWoXu+oo+93?=
 =?us-ascii?Q?JLmThNeZXPc6mQhILWsrfknSTjRkRy1JCFDM6LrM5yuFCMcdB7qd+yRCVThn?=
 =?us-ascii?Q?NuRAMMHsq6HT8kVj7fZCRCs8RE196wIrLWzOO/Zz0MDwC6JUe13m9f0OBTnQ?=
 =?us-ascii?Q?uuS9B529TyrAsyxZqF5i0jasolKP2zIeLV6FYbj3PKuXHJIMyeBzi2cLyAww?=
 =?us-ascii?Q?A2JDMPi0WKHeLlYROwRMres4yQQxwI822Y3W/i+1rmvNKiLEZ+C800caAltp?=
 =?us-ascii?Q?BTYLD3W/OXGFgRBJJma+fLhncmw3CgSCtGos7UB6BebGAiDT0jAaQ8s1L25i?=
 =?us-ascii?Q?/+5iovXStfwTLz07gfCIRbbGetIiJs1iwO4orRM0HooOJTx+R+JpzemEhWM2?=
 =?us-ascii?Q?aVxSq2lbwcQl8K9XZhGun9yjF2lJK5UTQYNSm8NL+IxA7IxbPYLegy7KiZQB?=
 =?us-ascii?Q?pQOpMXrAg3UvUgSZO6gfnVA2IMVWgDGDHsEcVdxEO7CyTlurtWq6Q3Xbx2fc?=
 =?us-ascii?Q?OmMN2nKIwaBZW9JweC6YPVJBv0z265v+AqtysDD3Bdf2CNOdAxcFv9udnEGs?=
 =?us-ascii?Q?Fl0q5TyQ44mNm+ZolJDY0a2erk6qZsmxrjB1Z37eMzdg+XRPlLDbR0hxEmfg?=
 =?us-ascii?Q?fqXPPBiGBfOZpzQ3heTausYypPE9kXxaZjwdc02RugnCTaYB6kiZbmBKuQL3?=
 =?us-ascii?Q?K/OjLUgRsZllwhxiHO0NvKnic22Jk2CZcQFC0gaBTCvG2gwBOitCNLujr3E7?=
 =?us-ascii?Q?r0KP6yMU9CnWdVIazEyM3xQclqbmwP+zS3Lbjb58MNbiEVuOzXO8fCrnzc+6?=
 =?us-ascii?Q?LvPIcHeuOzRBSYOBRyder7FjylFWJQSGN+q6IeHcvmthet4Du7tWZ6OrWWm9?=
 =?us-ascii?Q?bDfBCFRludw+aiLbhvrHBE6/wpUUAH3+yNwIbADiaw0vGeqm1rWuD7G8d06l?=
 =?us-ascii?Q?ObPBH+EX3UHOuAbm9oPet4zlS+5NQbRKL9tbl4I3nggmQPqGjwFw7vAMyrWs?=
 =?us-ascii?Q?OUAXpg6YbOrLTLUoX5DxkoYExaUCBWjwTWpMjQyA6/ua0SFYKebWHPklFRlu?=
 =?us-ascii?Q?rozZmka7JIX8SlbRlSVof0ohGoC/rVN2NfxcllVa+d70egs8chxRtm05mPC/?=
 =?us-ascii?Q?GDOguMyyfaprk04x16ICwE9t4wOnFJml8cilusyV13PELniajFsUE4Gn7mwu?=
 =?us-ascii?Q?71A+HPB3rJ2pe9iYgl6S0j1DhwUUG5i6TQciN+VtUqZ6R15A61P4IgGLv1qL?=
 =?us-ascii?Q?2GBjLv8ERE+n2XibVHiPy7vLKZSAoB07OqjTEksSA2UM33TiHIhKqu9hr/9I?=
 =?us-ascii?Q?+g=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11269.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9729ec6-fa85-4fe6-ee7b-08dc378c03c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2024 12:02:47.7454
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VQiJgIUmtgZgXNerz8EFpned/USagmDW4U1LougVbrmzC255UOdzTD7Vl99GW+RcmoGqgjB/j46nrx2f7WBA2Noi26Gv/tnuCHN0Gl7iSGY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB8411
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_040307_597725_6958E383 
X-CRM114-Status: GOOD (  15.09  )
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

Hi All,

> -----Original Message-----
> From: Biju Das <biju.das.jz@bp.renesas.com>
> Sent: Thursday, May 18, 2023 4:57 PM
> To: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Biju Das <biju.das.jz@bp.renesas.com>; Vinod Koul <vkoul@kernel.org>;
> Kishon Vijay Abraham I <kishon@kernel.org>; linux-phy@lists.infradead.org;
> Geert Uytterhoeven <geert+renesas@glider.be>; Fabrizio Castro
> <fabrizio.castro.jz@renesas.com>; linux-renesas-soc@vger.kernel.org
> Subject: [PATCH RFC 0/3] Support VBUSEN selection control for RZ/G2L
> 
> This patch series aims to add support for VBUSEN selection control for
> RZ/G2L alike SoCs.
> 
> As per RZ/G2L HW(Rev.1.30 May2023) manual, VBUSEN can be controlled by the
> Port Power bit of the EHCI/OHCI operational register or by the VBOUT bit
> of the VBUS Control Register.
> 
> A reset consumer(phy-rcar-gen3-usb2) needs to find the reset controller
> device and then call the provider(reset-rzg2l-usbphy-ctrl) to configure
> it.
> 
> Please share your thoughts on this patch series.

Gentle ping for this RFC series. Is this series is in the right direction?

Cheers,
Biju

> 
> Biju Das (3):
>   reset: Add reset_controller_get_dev()
>   reset: renesas: Add rzg2l_usbphy_ctrl_select_vbus_ctrl()
>   phy: renesas: phy-rcar-gen3-usb2: Control VBUSEN selection
> 
>  drivers/phy/renesas/phy-rcar-gen3-usb2.c |  9 ++++++++
>  drivers/reset/core.c                     | 14 ++++++++++++
>  drivers/reset/reset-rzg2l-usbphy-ctrl.c  | 27 ++++++++++++++++++++++++
>  include/linux/reset-controller.h         |  9 ++++++++
>  include/linux/reset/rzg2l-usbphy-ctrl.h  | 16 ++++++++++++++
>  5 files changed, 75 insertions(+)
>  create mode 100644 include/linux/reset/rzg2l-usbphy-ctrl.h
> 
> --
> 2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

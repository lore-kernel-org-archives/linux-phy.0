Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 915CFC4345F
	for <linux-phy@archiver.kernel.org>; Mon, 15 Apr 2024 12:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/5seFNrnUWN6DXW5FjTXIeHFRnYSYheK2ookKNAgLk=; b=WzOzyGhoFmDnn4
	YvBtQCRiQjNjriloGWPXnfzryfY09OXqnOBeXU1CVUEdxrydt+2YOVlMxlTj9T/rRg5t4KAO4EoxH
	gs+Y1TaC3TDPXdaajgmzZzgxzKWZQHBhTriJmT5SyfjFrbJUYZS2jkS0lX5achRM+qXk4aKvssyZn
	BKs5vZlrRNHoWLmpEHp/AbOUzJ8RaZXDm9uNFh1Ug+s3lnJe0ZUiaXCQAvtLtMVnxMyMpLK0br0DO
	tTLMyv2MKOOocJgYA+qGArdccMOUVrr5lpDLPhFp12w32f7bIybivv2+VEITNpZaPcDhEG726Obl8
	xppv0l8MeZbFGYfJFE0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwLIi-00000008Akr-1CeH;
	Mon, 15 Apr 2024 12:19:08 +0000
Received: from mail-tycjpn01on20600.outbound.protection.outlook.com ([2a01:111:f403:2019::600] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwLIf-00000008Ajz-2u0N
	for linux-phy@lists.infradead.org;
	Mon, 15 Apr 2024 12:19:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IUYCAlUs00iAtSBrv0/GJOYSzUdyPWVu7x7XFpVenNlZ9tGkeK0tLelcFmjKiBgS2Kh4gx1uOnqFR2qo2abUrTXDlLsWIF+uB40Rsm/Ms39xzQXbqnkPERMtJNwSG7VhFrr38DhN8wEm1GYtbpiv2YcUY2HZlKBQB0t4ZhPrzzXaGdsqjIoBfGujq/+z7pK0fDUiWIteUVpmSdm71C4NfxpsAW5jsB+k6bkhiKjc+ZCGwbk/EQE+HtffbxAVRNSQkEoP/EMVIDFkHToO6tqNcnkvvNZp+7IO3QqBcuPc1oCsEY81NQtw0vpf8+cBxN0F3tKL6ezwk1r9794AeaX50Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mgardweZzDc4K+xMU43pMgfHq0hyEmqKx/dhFFNJXps=;
 b=U8ONO8KC5ABLdozTci6tK2s5CPWpIVUw3wDsJ5bJhZKRO44wCHolIO3w3VFvpRo6MjC6d6jzgyVS/WUH4cGYi1A4IXpT6WGk5Hzej2MOxKzskncK+TrjY4ihSbzesdJDrHUpmza9tx1s8lHU/eCgZe+QiekJ6D5WwUXNPbl+fcif9YSDAnCuMYRBOS3r6/rpuwe35jJidSKwEyb+ZiZtOFOYLb6SFOr8js3wqRoYYe2oPj/9FaIjbfK2ryxg36JW3g9AldLP9DB7EQ40KF+i8XgZbtclvH501AJ4RgRSVhAVI3CzK/WDINLTZ7qXP9jQBRcAaV1BUyxM+SXYTJkggg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mgardweZzDc4K+xMU43pMgfHq0hyEmqKx/dhFFNJXps=;
 b=kvSIaQOYV5oC6T2aiR2ggDzgz7lVxYA1xoBsJbUROGNy/P+sxem9yGc7Bx8nolmv9hbyxbRQBW62cGmN8k5BOvnAGcp4rQxf/hOmD72CEbfnV8ri9Qn4DCk0FFKrlp+tLCXFnbQFnIhIF21FtfK26UhgX5QDy/sf1Pj1tbxjFIY=
Received: from OSAPR01MB1587.jpnprd01.prod.outlook.com (2603:1096:603:2e::16)
 by OSZPR01MB8404.jpnprd01.prod.outlook.com (2603:1096:604:18c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Mon, 15 Apr
 2024 12:18:52 +0000
Received: from OSAPR01MB1587.jpnprd01.prod.outlook.com
 ([fe80::fda5:45f9:f1b2:cbce]) by OSAPR01MB1587.jpnprd01.prod.outlook.com
 ([fe80::fda5:45f9:f1b2:cbce%3]) with mapi id 15.20.7452.049; Mon, 15 Apr 2024
 12:18:52 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Geert Uytterhoeven
	<geert@linux-m68k.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Geert
 Uytterhoeven <geert+renesas@glider.be>, Fabrizio Castro
	<fabrizio.castro.jz@renesas.com>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Subject: RE: [PATCH RFC 0/3] Support VBUSEN selection control for RZ/G2L
Thread-Topic: [PATCH RFC 0/3] Support VBUSEN selection control for RZ/G2L
Thread-Index: AQHZiaFfkULG6eflqEaqpA3OKcqzp7Ef1iKwgEtzubA=
Date: Mon, 15 Apr 2024 12:18:51 +0000
Message-ID: <OSAPR01MB1587FA6A68811C80A574BCBE86092@OSAPR01MB1587.jpnprd01.prod.outlook.com>
References: <20230518155649.516346-1-biju.das.jz@bp.renesas.com>
 <TYCPR01MB11269EE1F1FF841AFD999C9AE86592@TYCPR01MB11269.jpnprd01.prod.outlook.com>
In-Reply-To: <TYCPR01MB11269EE1F1FF841AFD999C9AE86592@TYCPR01MB11269.jpnprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OSAPR01MB1587:EE_|OSZPR01MB8404:EE_
x-ms-office365-filtering-correlation-id: 7026be14-2cca-48bf-5d75-08dc5d463645
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bZPmuCaoOoM5rSWg4hFyL9g95GD28EAgeZZuot/TI9op0oHBNHKFmtD9+Bbx2cyFVfV+mBtJxunEgfyYbv6MnqKPHGur/b2kdBB7FMkEwgQ8i0Af7IwJ9yhRH0cVgqY57j3lWNZOom/tLRefovldCg3jVJ1pFOzbW7eDhTdAXUkKBmMEijeLaQ9NGg+Kba56EqE+2V+8LG87u62tLGjj6OO0ZcR7ikqqionPzdNGKavi6uNuhumBexMB0z7w3Tl8gUl4Okrc22FHs7JhPdLckM16/mbA6mr/UY8FHbCAsKzqeeA8oWh1RbRr6ZoYDPD6VstJdeSodHfqRD4DXQQBfRBIJXbx/ogAn4ZwFEiuVtTBP8jBYKlWr5xiwGH1NIR6JiEIpic1CIPRewiLPclHb+cjbUbPAYvRd9EYsofQR6CXPB1kgTOkUMgdkzY7nBy0ZxohFCWhzv2DL9VUZuX/XF52nCVtb+PhPFhN22nBc/RE1V55WYGSFMM5Q6LcqkvfKOShWv86N6wFFknAGpeM9p+InFfByy1t2gMa7GB5Z9b8IdzZUEbYIxj/m2/BzUCHIlWxjabH7v0XxDzr5FN+yOuZKVg1K1m7b+kbali6icEZNTvXNCU42OI6D6SHuxl2Swx0AeJPG85xipZ8xsbAwLBnCx43+O2uday9YqWEf3Eupft0gYCCBCshRZfYuv0E+v1JBf4Fcfr15tIiprQ/JA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OSAPR01MB1587.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?C2FUvwakSW3WYC4WsZKFQzr01TQpunw0G++r2+3ed3gIydl/RUeI1nHm+WJa?=
 =?us-ascii?Q?tj/xGT3BBmkkyfa7bhgoUFYOv03F8lYwZP0QpQE15gRfzyp1dRU9JDNXx6wY?=
 =?us-ascii?Q?Y5cV334MsMNvUf8Ng5VkgQMjtMU7X+tplHxonUr2NksFyoVodEi+97J2MYjm?=
 =?us-ascii?Q?FKkyr08KOMI1XWC5flIL65H7qnXMNmh+TCKy+U63sUMzeMGXCSNxt1DyGf3W?=
 =?us-ascii?Q?rthdgYiD1djzO/NFWCIsci8NZuqRJGPr84KX9Lonasa6CFy8g2GEGCnXRtKu?=
 =?us-ascii?Q?eRgB+etrvMi670ucr+q8UAmbwMvGELrMacZydohb/MODg20986fBeD1jcuiB?=
 =?us-ascii?Q?siy3L3yXVJWlxtKHcURLd/l0UUcrti43tk1ZSmG9Fw+LniDvp7XR9etPAYzY?=
 =?us-ascii?Q?XKnmiicaGznDQBsjgLUkH5tIhiFFCW6u7dRqdut4Tzl5735Oktezrhb8z5D/?=
 =?us-ascii?Q?eIY0OKf2thm8mEXS/rq2/ETERzP2ZmVeaKzsi8Ean+ru1uTkJehJ+Vpe6vo8?=
 =?us-ascii?Q?kEZZCQwrzpVlMf9wughFaucFKowWWzd2Hno5gETg8Ermhba1Vf+FPA8c3qHA?=
 =?us-ascii?Q?lLmAJgz8oBEPrjn6Sm6FQ0r8Dr/4uvijHKP4KMReDo/KtYALP/2jkgy8+EwI?=
 =?us-ascii?Q?89GGmAby/ZqOcKV2dQM8RuMPHGainQpzshmFmF78LiuW0FvNkPpbvfbPUBgF?=
 =?us-ascii?Q?kcuHFueVHmT4MQBOj1AB+2xGAlDAjS4ohgFI7dtQFtbcuD1KfDexO8UWQdVA?=
 =?us-ascii?Q?8RbFazrTGKnGLkrRAMvtnK5OdkHTj7dP1FvqmEyw/e4efaWs3V8K6o7gs69b?=
 =?us-ascii?Q?X42GPaYVzhOO7DBnwonuF6fQTl+ubFyhzQFll+53jmA+8zoeiu1znGYuG1Ws?=
 =?us-ascii?Q?W3CuQDl6FUDLkFH8AnSdz138js1kV4nIc26RKFVKC+LV89EcQMMxvfiQEi6+?=
 =?us-ascii?Q?unAWbbIDBGAmUIpaPv6JEX5VuKcjK7FckZlJ3BNdQLtgdv8w9STeUR66+IOQ?=
 =?us-ascii?Q?wPLEedDa0v0KY8JueFN/76ONjmGLibyF/MFengyEQ7Ae0ENr9dN9JzxmonuG?=
 =?us-ascii?Q?S3m1Rt+f5rMUEUqiwJe6itfEuEjcKt5Y8mPfmXHTlFUfmfTVHy8vjTANEf4P?=
 =?us-ascii?Q?PTnYCXGna3Fgt9dinUNFju8c1AdCLL7zmkxyHAxNMcm2j6A9o8aaMKoxBw5K?=
 =?us-ascii?Q?nb9dQT978toXHnXbGC5/fRr5bu3DiqoKHI2yBbzI/j7+ACvCJnnQSuNpTFjk?=
 =?us-ascii?Q?xvSoL2clM5SjKbl8A/QiCXHafU1YzrP18H4Jsmjr96JBhH/oz442mP0RSstd?=
 =?us-ascii?Q?ZqBL6tZ1vJrK9GkbVrVMG3Umr7uNUNUAQOeMUftnSvL4mY8aJVnTV0wo5zJC?=
 =?us-ascii?Q?AhTHQjU3c6s2lXJsWFT+dvcR6MO+ljXHP0bx77gvJ757xUmN0D0iP/+mw0VX?=
 =?us-ascii?Q?NjiV7asKMqQww/b1yaKRWFuyct/c8yuz8XodzyL8pdV5Ee0t02bzxBOPsZ23?=
 =?us-ascii?Q?XqLNkjAZSHZ1eSz5WErNYg46Uw33qxWw02tULx98XWhYMzyzufUIn3F00h3f?=
 =?us-ascii?Q?TUipwbCDYJKT28IcMpCIvk5UKWQ2cqNiighQKv7ZB5xcFY1l6MAG5SrghRYv?=
 =?us-ascii?Q?XQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OSAPR01MB1587.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7026be14-2cca-48bf-5d75-08dc5d463645
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2024 12:18:51.8877
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 81tJmjxzcczf5eLwAocAWCxaL4Ln8xhIlKQvm/Hl5G5LcFhNCTZHMFWFnldpUtubwapN8jheTsltltM5F+An9OgH1JENQynB/QoEOvLzeZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB8404
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_051905_742195_73ADA0AE 
X-CRM114-Status: GOOD (  21.57  )
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

What about modelling VBUSEN as a regulator?

USB phy ctrl driver shares the resource to VBUSEN regulator driver
for enable/disable VBUS and PHY driver uses regulator to control the
VBUS??

+ DT as it involves different modelling

Cheers,
Biju

> -----Original Message-----
> From: Biju Das
> Sent: Tuesday, February 27, 2024 12:03 PM
> Subject: RE: [PATCH RFC 0/3] Support VBUSEN selection control for RZ/G2L
> 
> Hi All,
> 
> > -----Original Message-----
> > From: Biju Das <biju.das.jz@bp.renesas.com>
> > Sent: Thursday, May 18, 2023 4:57 PM
> > To: Philipp Zabel <p.zabel@pengutronix.de>
> > Cc: Biju Das <biju.das.jz@bp.renesas.com>; Vinod Koul
> > <vkoul@kernel.org>; Kishon Vijay Abraham I <kishon@kernel.org>;
> > linux-phy@lists.infradead.org; Geert Uytterhoeven
> > <geert+renesas@glider.be>; Fabrizio Castro
> > <fabrizio.castro.jz@renesas.com>; linux-renesas-soc@vger.kernel.org
> > Subject: [PATCH RFC 0/3] Support VBUSEN selection control for RZ/G2L
> >
> > This patch series aims to add support for VBUSEN selection control for
> > RZ/G2L alike SoCs.
> >
> > As per RZ/G2L HW(Rev.1.30 May2023) manual, VBUSEN can be controlled by
> > the Port Power bit of the EHCI/OHCI operational register or by the
> > VBOUT bit of the VBUS Control Register.
> >
> > A reset consumer(phy-rcar-gen3-usb2) needs to find the reset
> > controller device and then call the provider(reset-rzg2l-usbphy-ctrl)
> > to configure it.
> >
> > Please share your thoughts on this patch series.
> 
> Gentle ping for this RFC series. Is this series is in the right direction?
> 
> Cheers,
> Biju
> 
> >
> > Biju Das (3):
> >   reset: Add reset_controller_get_dev()
> >   reset: renesas: Add rzg2l_usbphy_ctrl_select_vbus_ctrl()
> >   phy: renesas: phy-rcar-gen3-usb2: Control VBUSEN selection
> >
> >  drivers/phy/renesas/phy-rcar-gen3-usb2.c |  9 ++++++++
> >  drivers/reset/core.c                     | 14 ++++++++++++
> >  drivers/reset/reset-rzg2l-usbphy-ctrl.c  | 27 ++++++++++++++++++++++++
> >  include/linux/reset-controller.h         |  9 ++++++++
> >  include/linux/reset/rzg2l-usbphy-ctrl.h  | 16 ++++++++++++++
> >  5 files changed, 75 insertions(+)
> >  create mode 100644 include/linux/reset/rzg2l-usbphy-ctrl.h
> >
> > --
> > 2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
